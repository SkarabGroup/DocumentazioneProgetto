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
    # Rimuovi caratteri non validi
    text = re.sub(r'[^a-z0-9\s-]', '', text)
    # Sostituisci spazi con trattini
    text = re.sub(r'\s+', '-', text)
    return text.strip('-')

def generate_html(yaml_file, output_file, version="v0.8.0"):
    """Genera HTML dal glossario YAML."""
    
    # Leggi YAML
    with open(yaml_file, 'r', encoding='utf-8') as f:
        data = yaml.safe_load(f)
    
    # Template HTML
    html = f'''<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Glossario {version}</title>
    <style>
        * {{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }}

        body {{
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            line-height: 1.6;
            color: #1a1a1a;
            background: #ffffff;
            padding: 2rem;
            max-width: 900px;
            margin: 0 auto;
        }}

        header {{
            text-align: center;
            margin-bottom: 3rem;
            padding-bottom: 2rem;
            border-bottom: 3px solid #000;
        }}

        h1 {{
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }}

        .version {{
            color: #666;
            font-size: 1.1rem;
            font-weight: 500;
        }}

        nav {{
            background: #f8f9fa;
            padding: 1.5rem;
            margin-bottom: 2rem;
            border-radius: 8px;
            position: sticky;
            top: 1rem;
            z-index: 100;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }}

        .alphabet-nav {{
            display: flex;
            flex-wrap: wrap;
            gap: 0.5rem;
            justify-content: center;
        }}

        .alphabet-nav a {{
            padding: 0.6rem 0.9rem;
            background: #fff;
            border: 2px solid #e0e0e0;
            text-decoration: none;
            color: #000;
            font-weight: 600;
            border-radius: 6px;
            transition: all 0.2s ease;
        }}

        .alphabet-nav a:hover {{
            background: #000;
            color: #fff;
            border-color: #000;
            transform: translateY(-2px);
        }}

        .alphabet-nav a.disabled {{
            opacity: 0.3;
            pointer-events: none;
        }}

        .letter-section {{
            margin-bottom: 4rem;
        }}

        .letter-heading {{
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 2rem;
            padding-bottom: 0.75rem;
            border-bottom: 2px solid #333;
            color: #000;
        }}

        .term {{
            margin-bottom: 2.5rem;
            padding: 1.5rem;
            background: #fafafa;
            border-left: 5px solid #000;
            border-radius: 4px;
            scroll-margin-top: 7rem;
            transition: all 0.3s ease;
        }}

        .term:target {{
            background: #fff3cd;
            box-shadow: 0 0 0 3px #ffc107;
        }}

        .term:hover {{
            background: #f5f5f5;
        }}

        .term-title {{
            font-size: 1.6rem;
            font-weight: 700;
            margin-bottom: 0.75rem;
            color: #000;
        }}

        .term-meta {{
            margin-bottom: 0.75rem;
            font-size: 1rem;
            color: #555;
        }}

        .term-label {{
            font-weight: 600;
            color: #000;
        }}

        .term-description {{
            margin-top: 1rem;
            font-size: 1.05rem;
            line-height: 1.7;
            text-align: justify;
        }}

        .back-to-top {{
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            background: #000;
            color: #fff;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.5rem;
            box-shadow: 0 4px 12px rgba(0,0,0,0.3);
            transition: all 0.3s ease;
            opacity: 0;
            pointer-events: none;
        }}

        .back-to-top.visible {{
            opacity: 1;
            pointer-events: all;
        }}

        .back-to-top:hover {{
            background: #333;
            transform: translateY(-3px);
            box-shadow: 0 6px 16px rgba(0,0,0,0.4);
        }}

        @media (max-width: 768px) {{
            body {{
                padding: 1rem;
            }}

            h1 {{
                font-size: 2rem;
            }}

            .letter-heading {{
                font-size: 2rem;
            }}

            .term-title {{
                font-size: 1.3rem;
            }}

            .alphabet-nav a {{
                padding: 0.5rem 0.7rem;
                font-size: 0.9rem;
            }}

            .term {{
                padding: 1rem;
            }}
        }}

        /* Animazione per highlight */
        @keyframes highlight {{
            0%, 100% {{ background: #fafafa; }}
            50% {{ background: #fff3cd; }}
        }}
    </style>
</head>
<body>
    <header>
        <h1>Glossario</h1>
        <div class="version">{version}</div>
    </header>

    <nav>
        <div class="alphabet-nav">
'''
    
    # Genera navigazione alfabeto
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

    <script>
        // Back to top button
        const backToTop = document.getElementById('backToTop');
        
        window.addEventListener('scroll', () => {
            if (window.scrollY > 300) {
                backToTop.classList.add('visible');
            } else {
                backToTop.classList.remove('visible');
            }
        });

        backToTop.addEventListener('click', (e) => {
            e.preventDefault();
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });

        // Smooth scroll per tutti i link interni
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                if (this.getAttribute('href') !== '#') {
                    e.preventDefault();
                    const target = document.querySelector(this.getAttribute('href'));
                    if (target) {
                        target.scrollIntoView({ 
                            behavior: 'smooth',
                            block: 'start'
                        });
                    }
                }
            });
        });

        // Evidenzia termine se URL contiene hash
        if (window.location.hash) {
            setTimeout(() => {
                const term = document.querySelector(window.location.hash);
                if (term && term.classList.contains('term')) {
                    term.style.animation = 'highlight 2s ease-in-out';
                }
            }, 100);
        }
    </script>
</body>
</html>
'''
    
    # Scrivi file
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(html)
    
    # Statistiche
    total_terms = sum(len(terms) for terms in data.values())
    print(f"✓ Glossario HTML generato: {output_file}")
    print(f"  → {len(data)} lettere")
    print(f"  → {total_terms} termini")
    
    # Genera anche indice dei termini per debug
    print(f"\n📋 Termini e loro ID:")
    for letter in sorted(data.keys()):
        for term in sorted(data[letter].keys()):
            term_id = term_to_id(term)
            print(f"  • {term} → #{term_id}")

if __name__ == "__main__":
    # Configura qui i path
    YAML_FILE = "glossario.yml"
    OUTPUT_FILE = "glossario.html"
    VERSION = "v0.8.0"
    
    # Verifica che il file YAML esista
    if not Path(YAML_FILE).exists():
        print(f"❌ Errore: File '{YAML_FILE}' non trovato!")
        print(f"   Assicurati di eseguire lo script dalla directory corretta.")
        exit(1)
    
    # Genera HTML
    generate_html(YAML_FILE, OUTPUT_FILE, VERSION)
    print(f"\n✅ Fatto! Apri {OUTPUT_FILE} nel browser per testare.")