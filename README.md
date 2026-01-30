# Minecraft Server Mods

Minecraft 1.20.1 Fabric Server Mod Collection

## Server Address

**Connect to:** `thebluesoft.ca:25565`

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

**Requirements:**
- Minecraft 1.20.1
- Fabric Loader installed

#### Step 1: Install Fabric

1. Download Fabric installer: https://fabricmc.net/use/installer/
2. Run the installer and select Minecraft 1.20.1
3. Launch Minecraft and select the "fabric-loader-1.20.1" profile

#### Step 2: Install Server Mods

1. Clone this repository:
   ```bash
   git clone https://github.com/kaleLetendre/minecraft_mods.git minecraft-server-mods
   cd minecraft-server-mods
   ```

2. Run the sync script:
   - **Linux/Mac:**
     ```bash
     ./sync-mods.sh
     ```
   - **Windows:**
     ```cmd
     sync-mods.bat
     ```

3. Mods will be copied to your Minecraft mods folder automatically
   - Linux: `~/.minecraft/mods`
   - Mac: `~/Library/Application Support/minecraft/mods`
   - Windows: `%APPDATA%\.minecraft\mods`

#### Step 3: Connect to Server

1. Launch Minecraft with the Fabric profile
2. Add server: `thebluesoft.ca:25565`
3. Join and play!

#### Updating Mods

When new mods are added to the server:
```bash
cd minecraft-server-mods
git pull
./sync-mods.sh  # or sync-mods.bat on Windows
```
Then restart Minecraft.

## Notes

- Server version: Minecraft 1.20.1 with Fabric
- All mods must be compatible with Fabric 1.20.1
- Players need the same mods installed to join the server
