Backups="$HOME/Desktop"


cd "$backups" || { echo "Directory not found!"; exit 1; }


for FILE in *; do
    
    if [[ -f "$FILE" ]]; then
        # Get the file extension (in lowercase)
        EXTENSION="${FILE##*.}"
        EXTENSION=$(echo "$EXTENSION" | tr '[:upper:]' '[:lower:]')

        # If the file has no extension, treat it as "no_extension"
        if [[ "$EXTENSION" == "$FILE" ]]; then
            EXTENSION="no_extension"
        fi

        # Create a subdirectory for the file type if it doesn't exist
        if [[ ! -d "$EXTENSION" ]]; then
            mkdir "$EXTENSION"
        fi

        # Move the file into the respective subdirectory
        mv "$FILE" "$EXTENSION/"
    fi
done

echo "Files have been organized by file type!"