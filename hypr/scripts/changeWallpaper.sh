DIR="$HOME/.config/Wallpapers/"

# List all files in the directory and store them in an array
PICS=($(ls "${DIR}"))

# Select a random picture from the array
RANDOM_PICS=${PICS[$((RANDOM % ${#PICS[@]}))]}

# Save the selected wallpaper to a file
#echo "${DIR}/${RANDOM_PICS}" > ~/.cache/hellwal/last_wallpaper

# Check if swaybg is running and kill it if necessary
if [[ $(pidof swaybg) ]]; then 
    pkill swaybg
fi

# Initialize swww if not already running
swww query || swww init

# Set the selected wallpaper with transition effects
swww img "${DIR}/${RANDOM_PICS}" --transition-fps 30 --transition-type outer --transition-duration 1.5


 #Apply Hellwal colors
hellwal -i "${DIR}/${RANDOM_PICS}" &

# Reload colors in terminals
wal -R


