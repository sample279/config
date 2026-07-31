# nixos-config

NixOS system configuration, managed with **Nix flakes** and **Home Manager**, using **Niri** as the compositor and **Noctalia** as the desktop shell.

This directory is part of the parent [`config`](../README.md) repository, which also holds the Stow-managed dotfiles.

## Structure

```text
.
├── flake.nix
├── flake.lock
├── configuration.nix
├── hardware-configuration.nix
│
├── modules/                      # System modules
│   ├── niri.nix
│   ├── noctalia.nix
│   ├── nvidia.nix
│   ├── bootloader.nix
│   └── ...
│
└── home/                         # Home Manager configuration
    ├── default.nix
    ├── git.nix
    ├── packages.nix
    ├── shell.nix
    └── ...
```

## Usage

```bash
sudo nixos-rebuild switch --flake ~/config/nixos-config#sample
```

See the [parent README](../README.md) for the available aliases.
