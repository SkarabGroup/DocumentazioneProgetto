from pathlib import Path
import sys

BASE_DIR = Path(__file__).parent.parent
INDEX_FILE = BASE_DIR / "index.html"

def add_link(file_path: Path):
    categoria = "interni" if "interni" in file_path.parts else "esterni"

    rel_path = file_path.relative_to(BASE_DIR).as_posix()
    link_html = f'  <a href="{rel_path}" class="doc-link" target="_blank">{file_path.stem}</a>\n'

    html = INDEX_FILE.read_text(encoding="utf-8")

    placeholder = f"<!-- VERBALI {categoria.upper()} -->"
    idx = html.find(placeholder)
    if idx == -1:
        print(f"Placeholder {placeholder} non trovato.")
        return

    html = html[:idx + len(placeholder)] + "\n" + link_html + html[idx + len(placeholder):]

    INDEX_FILE.write_text(html, encoding="utf-8")
    print(f"Aggiunto {file_path.name} a {categoria}")

if __name__ == "__main__":
    for arg in sys.argv[1:]:
        add_link(Path(arg))