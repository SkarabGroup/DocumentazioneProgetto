#!/usr/bin/env python3
"""
Genera glossario.html da glossario.yml
Uso: python genera_glossario.py
"""

import yaml
import re
from pathlib import Path

def term_to_id(text):
    """Converte un termine in un ID HTML valido."""
    text = text.lower()
    # Sostituisci caratteri accentati
    text = re.sub(r'[àáâãäå]', 'a', text)
    text = re.sub(r'[èéêë]', 'e', text)
    text = re.sub(r'[ìíîï]', 'i', text)
    text = re.sub(r'[òóôõö]', 'o', text)
    text = re.sub(r'[ùúûü]', 'u', text)
    text = re.sub(r'[^a-z0-9\s-]', '', text)
    text = re.sub(r'\s+', '-', text)
    return text.strip('-')

def generate_html(yaml_file, output_file, version="v0.8.0"):
    """Genera HTML dal glossario YAML."""
    
    with open(yaml_file, 'r', encoding='utf-8') as f:
        data = yaml.safe_load(f)
    
    html = f'''<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glossario {version}</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Glossario</h1>
        <div class="version">{version}</div>
    </header>

    <nav>
        <div class="alphabet-nav">
'''
    
    letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    existing_letters = set(data.keys())
    
    for letter in letters:
        disabled = ' class="disabled"' if letter not in existing_letters else ''
        html += f'            <a href="#{letter}"{disabled}>{letter}</a>\n'
    
    html += '''        </div>
    </nav>

    <main>
'''
    
    # Genera contenuto per ogni lettera
    for letter in sorted(data.keys()):
        terms = data[letter]
        html += f'        <section class="letter-section" id="{letter}">\n'
        html += f'            <h2 class="letter-heading">{letter}</h2>\n\n'
        
        for term_name in sorted(terms.keys()):
            term_data = terms[term_name]
            term_id = term_to_id(term_name)
            
            html += f'            <article class="term" id="{term_id}">\n'
            html += f'                <h3 class="term-title">{term_name}</h3>\n'
            
            # Acronimo
            if 'acronimo' in term_data and term_data['acronimo']:
                html += f'                <div class="term-meta">\n'
                html += f'                    <span class="term-label">Acronimo:</span> {term_data["acronimo"]}\n'
                html += f'                </div>\n'
            
            # Alternative
            if 'alternative' in term_data and term_data['alternative']:
                html += f'                <div class="term-meta">\n'
                html += f'                    <span class="term-label">Alternative:</span> {term_data["alternative"]}\n'
                html += f'                </div>\n'
            
            # Descrizione
            if 'descrizione' in term_data:
                html += f'                <p class="term-description">{term_data["descrizione"]}</p>\n'
            
            html += f'            </article>\n\n'
        
        html += f'        </section>\n\n'
    
    html += '''    </main>

    <a href="#" class="back-to-top" id="backToTop">↑</a>

    <script src="scrypt.js"></script>
</body>
</html>
'''
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(html)
    
    total_terms = sum(len(terms) for terms in data.values())
    print(f"Glossario HTML generato: {output_file}")
    print(f" --> {len(data)} lettere")
    print(f" --> {total_terms} termini")
    
    
    print(f"\n Termini e loro ID:")
    for letter in sorted(data.keys()):
        for term in sorted(data[letter].keys()):
            term_id = term_to_id(term)
            print(f"  • {term} → #{term_id}")

if __name__ == "__main__":
    # Configura qui i path
    YAML_FILE = "RTB/glossario.yml"
    OUTPUT_FILE = "glossario.html"
    VERSION = "v0.8.0"
    
    # Verifica che il file YAML esista
    if not Path(YAML_FILE).exists():
        print(f"Errore: File '{YAML_FILE}' non trovato")
        exit(1)
    
    # Genera HTML
    generate_html(YAML_FILE, OUTPUT_FILE, VERSION)
    print(f"\nFatto! Apri {OUTPUT_FILE} nel browser per testare.")