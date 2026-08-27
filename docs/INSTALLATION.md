# Installation

## Windows

From the repository root:

```powershell
.\scripts\install.ps1
```

To use a non-default Codex home:

```powershell
.\scripts\install.ps1 -CodexHome 'D:\path\to\.codex'
```

## macOS / Linux

```bash
chmod +x scripts/install.sh
./scripts/install.sh
```

To use a non-default Codex home:

```bash
CODEX_HOME=/path/to/.codex ./scripts/install.sh
```

## Manual installation

Copy the files from `pet/` so the resulting layout is:

```text
<CODEX_HOME>/pets/sala/pet.json
<CODEX_HOME>/pets/sala/spritesheet.webp
```

The package manifest identifies the atlas as CodexPet v2:

```json
{
  "id": "sala",
  "spriteVersionNumber": 2,
  "spritesheetPath": "spritesheet.webp"
}
```

If SALA does not appear immediately, restart Codex or reopen the pet selector. The custom-pet directory is a local app convention and may change in future app versions.

## Uninstall

Remove only the installed `sala` directory from `<CODEX_HOME>/pets/`. This does not affect the repository copy.
