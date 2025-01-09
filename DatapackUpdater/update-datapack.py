from xulbux import Console, String, Regex
from pathlib import Path
import regex as rx
import sys


REGEX = {
    "hex": rx.compile(r"(#|0x)([0-9a-fA-F]{8}|[0-9a-fA-F]{6}|[0-9a-fA-F]{3,4})\b"),
    "nbt": rx.compile(
        r"(?<=(?:give\s+(?:\@[apres]|[^\s]+)\s+[\w_]+\s*)|(?:nbt\s*=\s*))"
        + Regex.brackets("{", "}", is_group=True)
    ),
    "unbreakable": rx.compile(r"Unbreakable\s*:\s*1"),
    "enchantment_glint": rx.compile(r"Enchantments\s*:\s*\[\s*\{\s*\}\s*\]"),
    "custom_model_data": rx.compile(r"CustomModelData\s*:\s*([0-9]+)"),
    "tags": rx.compile(r"Tags\s*:\s*" + Regex.brackets("[", "]", is_group=True)),
    "enchantments": rx.compile(
        r"Enchantments\s*:\s*\[\s*(?:"
        + Regex.brackets("{", "}", is_group=True)
        + r"\s*,?\s*)+\s*\]"
    ),
    "display": rx.compile(
        r"display\s*:\s*\{\s*Name\s*:\s*'\s*"
        + Regex.brackets("[", "]", is_group=True)
        + r"\s*'\s*,\s*Lore\s*:\s*"
        + Regex.brackets("[", "]", is_group=True)
        + r"\s*\}"
    ),
    "can_place_on": rx.compile(
        r"CanPlaceOn\s*:\s*" + Regex.brackets("[", "]", is_group=True)
    ),
}


def is_readable(filepath: Path):
    try:
        with filepath.open("r", encoding="utf-8") as file:
            file.read(1024)
        return True
    except UnicodeDecodeError:
        return False


def update_content(content: str) -> tuple[str, int]:
    changed = 0

    def update_options(options: list) -> str:
        return ",".join(
            (mods := opt.split("="))[0] + f':"{mods[1]}"' for opt in options
        )

    def update_enchantment(enchantment: str) -> str:
        lvl = rx.search(r"lvl\s*:\s*[0-9]+", enchantment)
        eid = rx.search(r"id\s*:\s*\"[\w_]+\"\s*,\s*", enchantment)
        return f"{eid.group()}:{lvl.group()}" if lvl and eid else enchantment

    def update_can_place_on(can_place_on: str) -> str:
        can_place_on = [
            item[1].strip() for item in rx.findall(Regex.quotes(), can_place_on)
        ]
        options = [
            (
                opts.group().strip("[]").split(",")
                if (opts := rx.search(Regex.brackets("[", "]", is_group=True), item))
                else None
            )
            for item in can_place_on
        ]
        can_place_on = [
            rx.sub(Regex.brackets("[", "]"), "", item) for item in can_place_on
        ]
        return ",".join(
            f'{{blocks:"{item}"'
            + ((",state:{" + update_options(options[i]) + "}}") if options[i] else "}")
            for i, item in enumerate(can_place_on)
        )

    def update_nbt(nbt: str) -> str:
        nbt = REGEX["unbreakable"].sub("unbreakable={}", nbt)
        nbt = REGEX["enchantment_glint"].sub("enchantment_glint_override=true", nbt)
        nbt = REGEX["custom_model_data"].sub(r"custom_model_data=\1", nbt)
        nbt = REGEX["tags"].sub(
            lambda m: "custom_data={"
            + ",".join(
                f"{String.to_camel_case(tag.strip().strip('"'), upper=False)}:1"
                for tag in m.groups()
            )
            + "}",
            nbt,
        )
        nbt = REGEX["enchantments"].sub(
            lambda m: "enchantments={levels:{"
            + ",".join(update_enchantment(enchantment) for enchantment in m.groups())
            + "}}",
            nbt,
        )
        nbt = REGEX["display"].sub(
            lambda m: f"custom_name='[\"\",{m.group(1)}]',lore=[{m.group(2)}]", nbt
        )
        nbt = REGEX["can_place_on"].sub(
            lambda m: "can_place_on={predicates:["
            + update_can_place_on(m.group())
            + "]",
            nbt,
        )
        return f"[{nbt[1:-1]}]"

    content = REGEX["hex"].sub(lambda m: f"{m.group(1)}{m.group(2).upper()}", content)
    content = REGEX["nbt"].sub(lambda m: update_nbt(m.group()), content)
    return content, changed


def process_file(file_path: Path, root_dir: Path) -> None:
    if not is_readable(file_path):
        return
    # try:
    content = file_path.read_text(encoding="utf-8")
    new_content, modified = update_content(content)
    file_path.write_text(new_content, encoding="utf-8")
    log_path = str(file_path.relative_to(root_dir))
    dim = "[dim]" if modified < 1 else ""
    Console.done(
        f"{'[b](Updated)' if modified > 0 else '[dim](Checked)'} [br:cyan]({log_path})"
        + f" [dim]({((Console.w() - 50) - len(log_path)) * '.'})"
        + f" {dim}[blue][[b|br:blue]({modified}){dim}[blue]][_]",
        start="",
        end="\n",
    )
    # except Exception as e:
    #     Console.fail(
    #         f"Error processing [red]({file_path})\n         \t[b|br:red]{e}[_]",
    #         start="",
    #         end="\n",
    #         exit=False,
    #     )


def main(path: str) -> None:
    target = Path(path)
    if target.is_file():
        process_file(target, target.parent)
    elif target.is_dir():
        for file_path in target.rglob("*"):
            if file_path.is_file():
                process_file(file_path, path)
    else:
        Console.fail(f"Path not found [white]({path})")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        path = input("\nEnter the path to the file or directory: ").strip()
    else:
        path = sys.argv[1]
    if path in ("", None):
        Console.fail("No path was provided")
    print()
    main(path)
