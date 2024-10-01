 echo "this is a backup script"

SOURCE_DIRECTORIES=(
    "$HOME/Music"
    "$HOME/Pictures"
    "$HOME/Documents"
)

videos="$HOME/Backups"

time=$(date + "2024-09-21_15-05-00")



mkdir -p "$backingup"


music="$videos/backup_$time"

for dir in "${desktop[@]}"; do
   task=$(basename "$dir")

   echo "backing up $dir to $music/$task..."

   echo "backup completed successfully at $music"
done
   