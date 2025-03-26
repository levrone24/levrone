#!/bin/bash

# Path to your wallpaper directory
WALLPAPER_DIR="$HOME/.config/Wallpapers/"

# Use find to get the list of wallpapers, and pipe them into rofi
SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.bmp" \) | rofi -dmenu -p "Select a wallpaper")

# Check if a wallpaper was selected
if [ -n "$SELECTED_WALLPAPER" ]; then
     Set the selected wallpaper using swww
    swww img "$SELECTED_WALLPAPER" --transition-type outer --transition-duration 1.5 --transition-fps 30
    echo "Wallpaper applied: $SELECTED_WALLPAPER"
else
    echo "No wallpaper selected."
fi

    # Apply Hellwal colors
    hellwal -i "$SELECTED_WALLPAPER"

    # Reload terminal colors
    source ~/.cache/hellwal/variables.sh
    sh ~/.cache/hellwal/terminal.sh
else
    echo "No wallpaper selected."
fi

#simple fzf wallpaper picker

#!/bin/bash

# Path to your wallpaper directory
#WALLPAPER_DIR="$HOME/Downloads/Wallpapers"

# Use fzf (or replace with rofi for a GUI selector) to pick a wallpaper
#SELECTED_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.bmp" \) | fzf)

# Check if a wallpaper was selected
#if [ -n "$SELECTED_WALLPAPER" ]; then
    # Set the selected wallpaper using swww
#    swww img "$SELECTED_WALLPAPER"
 #   echo "Wallpaper applied: $SELECTED_WALLPAPER"
#else
 #   echo "No wallpaper selected."
#fi
