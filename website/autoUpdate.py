from pathlib import Path
import sys

BASE_DIR = Path(__file__).parent.parent
INDEX_FILE = BASE_DIR / "index.html"

def add_link(file_path: Path):
    # Controlli di sicurezza
    if not file_path or not file_path.exists():
        print(f"Ignorato: path non valido -> {file_path}")
        return
    if file_path.suffix.lower() != ".pdf":
        print(f"Ignorato: non è un PDF -> {file_path}")
        return

    # Determina categoria (interni / esterni)
    categoria = "interni" if "interni" in file_path.parts else "esterni"

    # Path relativo sicuro
    try:
        rel_path = file_path.relative_to(BASE_DIR).as_posix()
    except ValueError:
        rel_path = file_path.as_posix()  # fallback

    link_html = f'  <a href="{rel_path}" class="doc-link" target="_blank">{file_path.stem}</a>\n'

    html = INDEX_FILE.read_text(encoding="utf-8")

    placeholder = f"<!-- VERBALI {categoria.upper()} -->"
    idx = html.find(placeholder)

    if idx == -1:
        print(f"Placeholder {placeholder} non trovato.")
        return

    # Inserisce immediatamente sotto il placeholder
    insert_pos = idx + len(placeholder)
    new_html = html[:insert_pos] + "\n" + link_html + html[insert_pos:]

    INDEX_FILE.write_text(new_html, encoding="utf-8")
    print(f"Aggiunto {file_path.name} in categoria {categoria}")

if __name__ == "__main__":
    for arg in sys.argv[1:]:
        add_link(Path(arg))