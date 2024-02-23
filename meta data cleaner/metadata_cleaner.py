import subprocess
import sys

def remove_metadata(file_path):
    try:
        # Utilizza exiftool per rimuovere i metadati dal file specificato
        subprocess.run(['exiftool', '-all=', file_path], check=True)
        print("Metadati rimossi con successo dal file:", file_path)
    except subprocess.CalledProcessError as e:
        print("Si è verificato un errore durante la rimozione dei metadati:", e)
        sys.exit(1)

def main():
    if len(sys.argv) != 2:
        print("Utilizzo: python metadata_cleaner.py <file>")
        sys.exit(1)

    file_path = sys.argv[1]
    remove_metadata(file_path)

if __name__ == "__main__":
    main()

