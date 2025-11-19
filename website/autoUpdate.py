from pathlib import Path

BASE_DIR = Path(__file__).parent.parent
VERBALI_DIR = BASE_DIR / "verbali"
INDEX_FILE = BASE_DIR / "index.html"

CATEGORIE = ["interni", "esterni"]

def generate_links_html(categoria_dir, indent="  "):
    files = sorted(
        [f for f in categoria_dir.glob("*.*") if f.suffix.lower() == ".pdf"],
        key=lambda f: f.stem,
        reverse=True
    )
    links_html = ""
    for f in files:
        name = f.stem
        link = f'{indent}<a href="{f.relative_to(BASE_DIR).as_posix()}" class="doc-link" target="_blank">{name}</a>'
        links_html += f"{link}\n"
    return links_html

def update_index():
    with INDEX_FILE.open("r", encoding="utf-8") as f:
        html = f.read()

    for categoria in CATEGORIE:
        placeholder = f"<!-- VERBALI {categoria.upper()} -->"
        idx = html.find(placeholder)
        if idx == -1:
            continue

        new_links = generate_links_html(VERBALI_DIR / categoria)
        html = html[:idx + len(placeholder)] + "\n" + new_links + html[idx + len(placeholder):]

    with INDEX_FILE.open("w", encoding="utf-8") as f:
        f.write(html)

if __name__ == "__main__":
    update_index()