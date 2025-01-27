# README - File di Avvio per Server Minecraft (`start.bat`)  

Questo **README** fornisce una guida dettagliata su come utilizzare il file `start.bat` per avviare un server Minecraft in locale con impostazioni ottimizzate per le prestazioni.

---

## UTILIZZA LA MIA GUIDA PASSO-PASSO : [docs.highmark.it](https://docs.highmark.it/pr/tutorial/mcserverlocal)

## **Cos'è il file `start.bat`?**  
Il file `start.bat` è uno script batch che permette di avviare un server Minecraft Java in modo rapido e ottimale. Contiene configurazioni specifiche per la gestione della memoria e della CPU, migliorando la stabilità e le prestazioni del server.

---

## **Funzionalità del file**  
- **Configurazione dinamica della RAM**: Imposta un limite minimo e massimo di memoria dedicata al server.  
- **Garbage Collection Ottimizzata**: Utilizza il Garbage Collector G1 per migliorare la gestione della memoria, riducendo i lag.  
- **Impostazioni di prestazione avanzate**: Include parametri sperimentali per ottimizzare il comportamento del server sotto carico.  
- **Semplice da usare**: Basta un doppio clic per avviare il server.  

---

## **Guida all'uso**  

### **1. Requisiti**  
- **Java**: Assicurati di aver installato l'ultima versione di [Java 17+](https://www.oracle.com/java/technologies/javase-downloads.html), necessaria per le versioni moderne di Minecraft.  
- **File del server Minecraft**: Scarica il file `server.jar` dalla [pagina ufficiale di Minecraft](https://www.minecraft.net/en-us/download/server).  

---

### **2. Creazione del file `start.bat`**  
1. Apri un editor di testo come **Blocco Note** o **Notepad++**.  
2. Copia e incolla il seguente codice:  
   ```batch
   @echo off
   title Avvio Server Minecraft
   echo Avvio del server Minecraft in corso...
   java -Xms2G -Xmx4G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=50 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:SurvivorRatio=32 -XX:MaxTenuringThreshold=1 -Dfile.encoding=UTF-8 -jar server.jar nogui
   pause
   ```
3. Salva il file con il nome **start.bat**.  
   - Quando salvi, seleziona **"Tutti i file"** anziché **"Documento di testo"** e assicurati che l'estensione sia `.bat`.  

---

### **3. Posizionamento del file**  
- Sposta il file `start.bat` nella stessa cartella dove si trova il file `server.jar`.  

---

### **4. Avvio del server**  
1. Fai doppio clic sul file `start.bat`.  
2. La finestra del terminale si aprirà e inizierà l'avvio del server.  
3. Una volta che il server è avviato correttamente, sarà pronto per accettare connessioni dai giocatori.  

---

## **Come Personalizzare il file `start.bat`**  

### **Modifica della RAM**  
- **`-Xms2G`**: Quantità minima di RAM assegnata al server (2 GB).  
- **`-Xmx4G`**: Quantità massima di RAM assegnata al server (4 GB).  
> Nota: Puoi aumentare questi valori in base alla RAM disponibile sul tuo PC.  

### **Aggiunta o rimozione di opzioni avanzate**  
Se alcune opzioni non sono necessarie, puoi rimuoverle. Tuttavia, ti consigliamo di lasciarle intatte se non sei sicuro del loro funzionamento.  

---

## **Risorse Utili**  
- [Documentazione ufficiale di Minecraft](https://minecraft.fandom.com/wiki/Tutorials/Setting_up_a_server)  
- [Scarica Java](https://www.oracle.com/java/technologies/javase-downloads.html)  
- [Supporto Mojang](https://help.minecraft.net/hc/en-us)  

---

## **Problemi Comuni e Soluzioni**  

### **1. "Errore: impossibile trovare Java"**  
- Assicurati di aver installato Java e che sia configurato correttamente nel **PATH di sistema**.  

### **2. Il server non si avvia**  
- Controlla che il file `server.jar` sia nella stessa cartella di `start.bat`.  
- Verifica di aver accettato il file `eula.txt` impostando `eula=true`.  

### **3. Prestazioni Lente o Lag**  
- Aumenta il valore massimo di RAM (`-Xmx`) se possibile.  
- Riduci le impostazioni del mondo (esempio: dimensione del render nel file `server.properties`).  

---

## **Contributi e Feedback**  
Se hai suggerimenti o miglioramenti per questo file o hai riscontrato problemi, non esitare a contattare il creatore di questa guida! 😊  

Buon divertimento con il tuo server Minecraft!
