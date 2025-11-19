from pathlib import Path
import sys

BASE_DIR = Path(__file__).resolve().parent.parent
INDEX_FILE = BASE_DIR / "index.html"

def add_link(rel_file_path_str: str):
    file_path = (BASE_DIR / rel_file_path_str).resolve()

    if not file_path.exists():
        print(f"Ignorato: file non trovato -> {rel_file_path_str}")
        return

    if file_path.suffix.lower() != ".pdf":
        print(f"Ignorato: non e un PDF -> {file_path.name}")
        return

    try:
        rel_path = file_path.relative_to(BASE_DIR).as_posix()
    except ValueError:
        print(f"Errore: Il file {file_path} non e dentro la cartella del progetto")
        return

    parts = file_path.parts
    if "interni" in parts:
        categoria = "interni"
    elif "esterni" in parts:
        categoria = "esterni"
    else:
        print(f"Ignorato: impossibile determinare categoria -> {rel_path}")
        return

    link_html = f'            <a href="{rel_path}" class="doc-link" target="_blank">{file_path.stem}</a>'

    if not INDEX_FILE.exists():
        print(f"Errore: index.html non trovato in {INDEX_FILE}")
        return

    html_content = INDEX_FILE.read_text(encoding="utf-8")

    placeholder = f"<!-- VERBALI {categoria.upper()}-->"
    idx = html_content.find(placeholder)

    if idx == -1:
        print(f"Errore: Placeholder {placeholder} non trovato in index.html")
        return

    if f'href="{rel_path}"' in html_content:
        print(f"Link gia presente per {file_path.name}, salto")
        return

    insert_pos = idx + len(placeholder)
    new_html = html_content[:insert_pos] + "\n" + link_html + html_content[insert_pos:]

    INDEX_FILE.write_text(new_html, encoding="utf-8")
    print(f"Aggiunto: {file_path.name} in categoria {categoria.upper()}")

if __name__ == "__main__":
    for arg in sys.argv[1:]:
        add_link(arg)