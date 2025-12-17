DevOps 2025–2026
Over mij

Mijn naam is Wilson Rukundo en ik ben student in het laatste jaar Toegepaste Informatica.
Deze GitHub-repository bevat mijn praktische oefeningen, labo’s en projecten voor het vak DevOps (academiejaar 2025–2026).

Het doel van dit vak is om praktische ervaring op te doen met moderne DevOps-technieken, waaronder:

versiebeheer

containerisatie

CI/CD-pipelines

automatisatie

Doel van deze repository

Deze repository dient als:

overzicht van mijn werk voor het vak DevOps

bewijs van praktische vaardigheden

referentie tijdens evaluaties en het examen

Alle projecten zijn hands-on opgebouwd, met focus op begrijpen wat er gebeurt, niet enkel “iets laten draaien”.


DevOps-2025-26/
│
├── sample-app/
│   │
│   ├── sample_app.py                # Hoofd Flask applicatie (simple demo app)
│   ├── requirements.txt             # Python dependencies (Flask)
│   ├── Dockerfile                   # Dockerfile voor de sample Flask app
│   ├── sample-app.sh                # Build & run script (Docker)
│   │
│   ├── templates/
│   │   └── index.html               # HTML template (Jinja2)
│   │
│   └── static/
│       └── style.css                # CSS styling
│
├── flask_login/
│   │
│   ├── flask_app_login.py            # Flask applicatie met login functionaliteit
│   ├── requirements.txt             # Python dependencies (Flask, Flask-Login)
│   ├── Dockerfile                   # Docker image voor login app
│   ├── test_script_flask_app_login.sh
│   │                               # Script om de login app te starten/testen
│   ├── readme.md                    # Documentatie van de Flask login app
│   │
│   ├── templates/
│   │   ├── login.html               # Loginpagina
│   │   ├── register.html            # Registratiepagina
│   │   └── dashboard.html           # Dashboard na login
│   │
│   └── static/
│       └── style.css                # CSS styling
│
├── jenkins/
│   │
│   ├── run_docker_jenkins.sh        # Script om Jenkins in Docker te starten
│   └── sample-app/
│       └── (Jenkins build context)
│
├── .gitignore                       # Git ignore (venv, __pycache__, enz.)
└── README.md                        # Hoofd README van de repository

