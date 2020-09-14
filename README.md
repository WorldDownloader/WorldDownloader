# WorldDownloader
This mod is used for downloading parts of a multiplayer world for singleplayer use.

You will need **[mcpelauncher-client](https://github.com/minecraft-linux/mcpelauncher-client)** to use this mod.

**This mod is only for Minecraft: Bedrock Edition.**

### Install
```bash
mkdir mods && cd mods
git clone git@github.com:Frago9876543210/WorldDownloader.git
git clone git@github.com:MCMrARM/mod-ndk-gnustl.git

# Also you should download lastest Android NDK to this folder

cd WorldDownloader

# Now set up all variables in scripts/install.sh (game version, mcpelauncher folder, NDK folder)

scripts/install.sh
```

### Usage
This mod creates folder `chunks` in place where game was launched
- When player join to server it also collect `StartGamePacket` into `chunk/.table`, which is necessary to obtain information about the paletted chunks
- When a player gets `FullChunkDataPacket` mod store this into `chunks/<capture_name>/chunkX_chunkZ`, `capture_name = default_world` as default
- You can change `capture_name` in runtime. Just send to chunk `capture <new_capture_name>` (message will not be sent)
