# Tutorial Docker con Nginx 🐳

## Panoramica del Progetto
Questo progetto dimostra come utilizzare Docker per creare un ambiente web moderno e isolato utilizzando Nginx. È progettato per scopi educativi, permettendo agli studenti di comprendere i concetti fondamentali dei container e del web hosting.

## Cos'è Nginx?
Nginx (pronunciato "engine-x") è uno dei web server più popolari al mondo. È:
- Un server web ad alte prestazioni
- Un reverse proxy
- Un load balancer
- Un cache server HTTP
- Un server proxy mail

### Perché Nginx?
- Gestisce efficacemente connessioni multiple
- Consuma poche risorse
- È stabile e affidabile
- Facile da configurare
- Ampiamente utilizzato in produzione

## Perché Docker?
Docker ci permette di:
1. **Isolamento**: Ogni applicazione funziona nel suo ambiente isolato
2. **Portabilità**: "Funziona sul mio computer" diventa "Funziona ovunque"
3. **Ripetibilità**: Ambiente identico ogni volta
4. **Scalabilità**: Facile da replicare e distribuire
5. **Versioning**: Controllo completo delle versioni dell'ambiente

## Struttura del Progetto
```
progetto/
├── docker-compose.yml     # Configurazione dei servizi Docker
├── Dockerfile            # Istruzioni per costruire l'immagine
├── nginx.conf           # Configurazione del server web
└── src/                 # Cartella dei file sorgente
    └── index.html       # Pagina web di esempio
```

## Componenti del Sistema

### 1. Docker Compose (docker-compose.yml)
Orchestrazione dei container. Definisce:
- Servizi da eseguire
- Porte da esporre
- Volumi da montare
- Variabili d'ambiente

### 2. Dockerfile
Blueprint per costruire l'immagine Docker. Specifica:
- Immagine base
- File da copiare
- Comandi da eseguire
- Porte da esporre

### 3. Nginx Configuration (nginx.conf)
Configura il comportamento del web server:
- Gestione delle connessioni
- Routing delle richieste
- Impostazioni di sicurezza
- Gestione dei file statici

### 4. Content (src/)
Contiene i file del sito web serviti da Nginx.

## Come Usare

1. **Prerequisiti**
   ```bash
   # Installa Docker
   # Per Ubuntu/Debian:
   sudo apt-get update
   sudo apt-get install docker.io docker-compose
   ```

2. **Clona il Repository**
   ```bash
   git clone [url-repository]
   cd [nome-progetto]
   ```

3. **Avvia il Container**
   ```bash
   docker-compose up --build
   ```

4. **Accedi al Sito**
   - Apri il browser
   - Vai a `http://localhost`

## Esercizi per gli Studenti

1. **Modifica Base**
   - Modifica il contenuto di index.html
   - Osserva i cambiamenti in tempo reale

2. **Esperimenti con Docker**
   - Prova a cambiare la porta esposta
   - Aggiungi più file HTML
   - Modifica la configurazione di Nginx

3. **Sfide Avanzate**
   - Aggiungi un secondo servizio
   - Implementa un reverse proxy
   - Configura HTTPS

## Risoluzione dei Problemi

### Errori Comuni
1. **Porta 80 già in uso**
   ```bash
   sudo lsof -i :80  # Trova cosa usa la porta
   # Modifica la porta in docker-compose.yml
   ```

2. **Permessi Negati**
   ```bash
   sudo usermod -aG docker $USER  # Aggiungi utente al gruppo docker
   ```

## Prossimi Passi
- Esplora altri web server
- Impara la configurazione avanzata di Nginx
- Studia il networking in Docker
- Implementa un'applicazione full-stack

## Risorse Aggiuntive
- [Documentazione Docker](https://docs.docker.com/)
- [Documentazione Nginx](https://nginx.org/en/docs/)
- [Docker Hub](https://hub.docker.com/)
- [Tutorial Docker](https://www.docker.com/101-tutorial)
