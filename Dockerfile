# ✅ Gebruik de officiële n8n Docker image
FROM n8nio/n8n

# ✅ Zet omgevingsvariabelen via het .env bestand (Render injecteert deze automatisch)

# ✅ Tijdzone en poortinstellingen
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV GENERIC_TIMEZONE=Europe/Amsterdam
ENV WEBHOOK_URL=${WEBHOOK_URL}

# ✅ HTTPS instellingen (optioneel, afhankelijk van Render configuratie)
# Kopieer certificaten naar de juiste map in de container
COPY ./certs /files/certs
ENV N8N_SSL_CERT=/files/certs/fullchain.pem
ENV N8N_SSL_KEY=/files/certs/privkey.pem
ENV N8N_PROTOCOL=https

# ✅ Expose poort voor toegang tot n8n
EXPOSE 5678

# ✅ Start de n8n service
CMD ["n8n"]
