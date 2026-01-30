# Minecraft Server Mods

Minecraft 1.20.1 Fabric Server Mod Collection

## Current Mods

<!-- Add mods below as you install them -->
<!-- Example:
- **Mod Name** (version) - Description
  - Download: [CurseForge/Modrinth link]
  - Added: YYYY-MM-DD
-->

No mods installed yet.

## Installation

### For Server Admins

1. Add your mod .jar file to this directory
2. Commit and push:
   ```bash
   cd /opt/minecraft/mods
   git add your-mod.jar
   git commit -m "Add: your-mod v1.0.0"
   git push
   ```
3. Restart the server:
   ```bash
   systemctl restart minecraft
   ```

### For Players

1. Clone this repository
2. Run the sync script to download all mods:
   ```bash
   ./sync-mods.sh
   ```
3. Mods will be copied to your Minecraft mods folder

## Notes

- Server version: Minecraft 1.20.1 with Fabric
- All mods must be compatible with Fabric 1.20.1
- Players need the same mods installed to join the server
