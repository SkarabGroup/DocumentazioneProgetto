from pathlib import Path

BASE_DIR = Path(__file__).parent.parent
VERBALI_DIR = BASE_DIR / "verbali"
INDEX_FILE = BASE_DIR / "website" / "index.html"

CATEGORIE = ["interni", "esterni"]

def generate_links_html(categoria_dir):
    files = sorted(
        categoria_dir.glob("*.*"),
        key=lambda f: f.stem,
        reverse=True
    )
    links_html = ""
    for f in files:
        name = f.stem
        link = f'<a href="{f.relative_to(BASE_DIR).as_posix()}" class="doc-link" target="_blank">{name}</a>'
        links_html += f"{link}\n"
    return links_html

def update_index():
    with INDEX_FILE.open("r", encoding="utf-8") as f:
        html = f.read()

    for categoria in CATEGORIE:
        placeholder = f"<!-- VERBALI {categoria.upper()} -->"
        start_idx = html.find(placeholder)
        if start_idx == -1:
            continue

        div_start = html.find('<div class="doc-links">', start_idx)
        div_end = html.find('</div>', div_start)
        new_links = generate_links_html(VERBALI_DIR / categoria)
        html = html[:div_start+17] + "\n" + new_links + html[div_end:]

    with INDEX_FILE.open("w", encoding="utf-8") as f:
        f.write(html)

if __name__ == "__main__":
    update_index()