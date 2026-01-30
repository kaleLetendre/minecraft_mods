#!/bin/bash
# Sync mods from server git repo to local Minecraft client
# Usage: ./sync-mods.sh [minecraft-mods-path]

# Default Minecraft mods directory (adjust for your OS)
if [ -z "$1" ]; then
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        MODS_DIR="$HOME/.minecraft/mods"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        MODS_DIR="$HOME/Library/Application Support/minecraft/mods"
    else
        echo "Error: Please specify your Minecraft mods directory"
        echo "Usage: $0 /path/to/.minecraft/mods"
        exit 1
    fi
else
    MODS_DIR="$1"
fi

# Create mods directory if it doesn't exist
mkdir -p "$MODS_DIR"

echo "Syncing mods to: $MODS_DIR"

# Copy all jar files from current directory to Minecraft mods folder
cp *.jar "$MODS_DIR/" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Mods synced successfully!"
    echo ""
    echo "Installed mods:"
    ls -1 *.jar 2>/dev/null | sed 's/^/  - /'
else
    echo "No mod files found to sync."
fi

echo ""
echo "Start Minecraft 1.20.1 with Fabric to play!"
