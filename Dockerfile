# Partiamo dall'immagine ufficiale di Nginx
# Questo ci fornisce un sistema Linux minimale con Nginx pre-installato
FROM nginx:latest

# Aggiungiamo i metadati su chi mantiene questa immagine
LABEL maintainer="Il Tuo Nome <tua.email@esempio.com>"

# Copiamo la nostra configurazione personalizzata di Nginx
# Questo sostituisce la configurazione predefinita di Nginx con la nostra
COPY nginx.conf /etc/nginx/nginx.conf

# Copiamo i file del nostro sito web nel container
# L'immagine predefinita di Nginx serve i file da /usr/share/nginx/html
COPY src/ /usr/share/nginx/html/

# Indichiamo a Docker che il nostro container userà la porta 80
# Questa è solo documentazione - non apre effettivamente la porta
EXPOSE 80

# Il comando che viene eseguito all'avvio del container
# In questo caso, usiamo il comando di avvio predefinito di Nginx
CMD ["nginx", "-g", "daemon off;"]