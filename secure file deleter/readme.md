Questo script bash fornisce due opzioni per eliminare file in modo sicuro:

Eliminazione di un singolo file: Chiede all'utente di inserire il percorso del file da eliminare e poi sovrascrive il file con valori casuali prima di eliminarlo.
Eliminazione di tutti i file in una directory: Chiede all'utente di inserire il percorso della directory da svuotare e poi esegue lo shred su tutti i file all'interno di essa.

Prima di eseguire questo script, assicurati di aver installato shred sul tuo sistema. 
con coreutils  che include il comando shred
