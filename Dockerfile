# Gebruik de n8n Docker image
FROM n8nio/n8n

# Zet de omgevingsvariabelen voor basic authentication
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Zet de host en poort in de omgevingsvariabelen
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Stel de tijdzone en webhook URL in
ENV GENERIC_TIMEZONE=Europe/Amsterdam
ENV WEBHOOK_URL=https://ezonline-n8n-webservice.onrender.com/webhook

# SSL-instellingen (indien van toepassing)
# Kopieer certificaten naar de juiste map in de container
COPY ./certs /files/certs
ENV N8N_SSL_CERT=/files/certs/fullchain.pem
ENV N8N_SSL_KEY=/files/certs/privkey.pem

# Zorg ervoor dat we HTTPS gebruiken voor de communicatie
ENV N8N_PROTOCOL=https

# Zorg ervoor dat poort 5678 beschikbaar is
EXPOSE 5678

# Start de n8n service
CMD ["n8n"]
