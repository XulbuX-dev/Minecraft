from xulbux import Console, String, Regex
from pathlib import Path
import sys
import re


REGEX = {
    "hexa": re.compile(r"(#|0x)([0-9a-fA-F]{8}|[0-9a-fA-F]{6}|[0-9a-fA-F]{3,4})\b"),
    "enchantment_glint": re.compile(r"Enchantments\s*:\s*\[\s*\{\s*\}\s*\]"),
    "unbreakable": re.compile(r"Unbreakable\s*:\s*1"),
    "tags": re.compile(r"Tags\s*:\s*\[\s*(?:\"(.*)\")+\s*\]"),
    "enchantments": re.compile(
        r"Enchantments\s*:\s*\[\s*(?:"
        + Regex.brackets("{", "}", is_group=True)
        + r"\s*,?\s*)+\s*\]"
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

    def update_enchantment(enchantment: str) -> str:
        lvl = re.search(r"lvl\s*:\s*[0-9]+", enchantment)
        eid = re.search(r"id\s*:\s*\"[\w_]+\"\s*,\s*", enchantment)
        return f"{eid.group()}:{lvl.group()}" if lvl and eid else enchantment

    def update_nbt(nbt: str) -> str:
        nbt = REGEX["enchantment_glint"].sub("enchantment_glint_override=true", nbt)
        nbt = REGEX["unbreakable"].sub("unbreakable={}", nbt)
        nbt = REGEX["tags"].sub(
            lambda m: "custom_data={"
            + ",".join(f"{String.to_camel_case(tag)}:1" for tag in m.groups())
            + "}",
            nbt,
        )

    content = REGEX["hexa"].sub(lambda m: f"{m.group(1)}{m.group(2).upper()}", content)
    return content, changed


def process_file(file_path: Path, root_dir: Path = Path.cwd()) -> None:
    if not is_readable(file_path):
        return
    try:
        content = file_path.read_text(encoding="utf-8")
        new_content, modified = update_content(content)
        if modified:
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
    except Exception as e:
        Console.fail(
            f"Error processing [red]({file_path})\n         \t[b|br:red]{e}[_]",
            start="",
            end="\n",
            exit=False,
        )


def main(path: str) -> None:
    target = Path(path)
    if target.is_file():
        process_file(target)
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
