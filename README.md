# 🚀 EZ.N8N.Github.Repo

Volledig geautomatiseerde n8n-omgeving voor het aansturen van AI-agents, data-automatisering en externe workflows via Docker & Render.

## 📁 Structuur

- `.env.example` – Veilig voorbeeldbestand met placeholders
- `docker-compose.yml` – Volledige Docker setup voor Render
- `Dockerfile` – Productiebouw op basis van officiële n8n image
- `package.json` – n8n runtime configuratie
- `index.js` – Custom AI agent code (Overlord core)
- `certs/` – (optioneel) SSL certificaten indien gewenst

## 🛠️ Setup (lokaal)
```bash
cp .env.example .env
docker-compose up
