@echo off
:: Imposta il titolo della finestra del terminale
title Avvio Server Minecraft

:: Mostra un messaggio durante l'avvio
echo Avvio del server Minecraft in corso...

:: Avvia Java con impostazioni ottimizzate per le prestazioni del server
java ^
-Xms2G ^                         :: RAM minima assegnata al server (2 GB). Puoi aumentarla se hai più RAM disponibile.
-Xmx4G ^                         :: RAM massima assegnata al server (4 GB). Aumenta se hai un PC potente o molti giocatori.
-XX:+UseG1GC ^                   :: Utilizza il Garbage Collector G1, ideale per applicazioni come server Minecraft.
-XX:+ParallelRefProcEnabled ^    :: Migliora le prestazioni durante la gestione della memoria.
-XX:MaxGCPauseMillis=50 ^        :: Riduce i tempi di pausa del Garbage Collector (ottimizza la reattività del server).
-XX:+UnlockExperimentalVMOptions ^ :: Abilita opzioni sperimentali per ulteriori ottimizzazioni.
-XX:+DisableExplicitGC ^         :: Disabilita le chiamate manuali al Garbage Collector per migliorare la stabilità.
-XX:+AlwaysPreTouch ^            :: Prepara la memoria RAM all'avvio per ridurre i rallentamenti iniziali.
-XX:G1NewSizePercent=30 ^        :: Riserva il 30% della RAM alle nuove allocazioni di memoria.
-XX:G1MaxNewSizePercent=40 ^     :: Massimo 40% della RAM per le nuove allocazioni di memoria.
-XX:G1HeapRegionSize=8M ^        :: Suddivide la memoria in regioni da 8 MB per una gestione più efficiente.
-XX:G1ReservePercent=20 ^        :: Riserva il 20% della RAM per prevenire errori di memoria insufficiente.
-XX:G1HeapWastePercent=5 ^       :: Limita la quantità di memoria inutilizzata per migliorare le prestazioni.
-XX:G1MixedGCCountTarget=4 ^     :: Riduce il numero massimo di raccolte "Mixed" per ottimizzare i cicli di Garbage Collection.
-XX:InitiatingHeapOccupancyPercent=15 ^ :: Avvia il Garbage Collector quando il 15% della memoria è occupato.
-XX:G1MixedGCLiveThresholdPercent=90 ^ :: Specifica il livello massimo di dati ancora in uso durante le raccolte "Mixed".
-XX:SurvivorRatio=32 ^           :: Imposta il rapporto tra spazi Survivor e Eden per una gestione migliore degli oggetti.
-XX:MaxTenuringThreshold=1 ^     :: Sposta rapidamente gli oggetti nella memoria a lungo termine per ridurre i costi di gestione.
-Dfile.encoding=UTF-8 ^          :: Imposta la codifica del file system su UTF-8 per evitare problemi con i caratteri.
-jar server.jar ^                :: Esegue il file `server.jar`, che è il cuore del server Minecraft.
nogui                            :: Disabilita l'interfaccia grafica del server per risparmiare risorse.

:: Pausa per mantenere aperta la finestra del terminale dopo l'esecuzione
pause
