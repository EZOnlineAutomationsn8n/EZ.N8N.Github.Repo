FROM n8nio/n8n

# Authenticatie
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Host en poort
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

# Tijdzone en webhook
ENV GENERIC_TIMEZONE=Europe/Amsterdam
ENV WEBHOOK_URL=https://ezonline-n8n-webservice.onrender.com/webhook

# Poort beschikbaar maken
EXPOSE 5678

# Start n8n
CMD ["n8n"]
