# Khmer Spell Checker

A simple web application to correct Khmer text using **Khmercut** for tokenization and a **custom Akara spell-checker**.  
Built with **FastAPI** and a lightweight HTML frontend.

---

## 🗂 Project Structure

`
khmer_spell_app/
│
├── venv/                      ← your virtual environment (or conda env can be here)
│
├── akara_custom/               ← your modified Akara package
│   ├── __init__.py
│   ├── spellchecker.py
│   ├── model.xml
│   └── other_tools.py
│
├── app/                       ← FastAPI application code
│   ├── __init__.py
│   ├── main.py                ← FastAPI app entry point
│   ├── routes.py              ← optional, separate API routes
│   ├── services/              ← backend processing logic
│   │   ├── __init__.py
│   │   ├── tokenizer.py       ← khmercut integration
│   │   ├── spellchecker.py    ← uses akara_custom
│   │   └── pipeline.py        ← tokenization + spell check
│   └── templates/
│       └── index.html         ← frontend interface
│
├── requirements.txt           ← pip freeze from your venv
├── environment.yml            ← optional, Conda environment export
└── README.md`
