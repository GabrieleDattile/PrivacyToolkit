#!/bin/bash

# Funzione per eliminare un singolo file in modo sicuro
secure_delete() {
    file="$1"
    echo "Eliminazione sicura del file: $file"
    if [ -f "$file" ]; then
        # Sovrascrivi il file con valori casuali per renderlo irrecuperabile
        shred -u -z -n 25 "$file"
        echo "File eliminato in modo sicuro."
    else
        echo "Il file non esiste."
    fi
}

# Funzione per eliminare tutti i file in una directory in modo sicuro
secure_delete_all() {
    directory="$1"
    echo "Eliminazione sicura di tutti i file nella directory: $directory"
    if [ -d "$directory" ]; then
        # Esegui lo shred su tutti i file nella directory
        find "$directory" -type f -exec shred -u -z -n 25 {} \;
        echo "Tutti i file sono stati eliminati in modo sicuro."
    else
        echo "La directory non esiste."
    fi
}

# Menu per l'utente
echo "Seleziona un'opzione:"
echo "1) Elimina un singolo file in modo sicuro"
echo "2) Elimina tutti i file in una directory in modo sicuro"
read option

case $option in
    1)
        read -p "Inserisci il percorso del file da eliminare: " file
        secure_delete "$file"
        ;;
    2)
        read -p "Inserisci il percorso della directory da svuotare: " directory
        secure_delete_all "$directory"
        ;;
    *)
        echo "Opzione non valida."
        ;;
esac
