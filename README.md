# nixos-config

This repository contains my personal NixOS system configuration, managed using **Nix flakes** and **Home Manager** using **Niri** as the compositor and **Noctalia** as the desktop shell.

## Structure

```text
.
├── flake.nix
├── flake.lock
├── configuration.nix
├── hardware-configuration.nix
├── README.md
│
├── modules/                      # System modules
│   ├── niri.nix
│   ├── noctalia.nix
│   ├── nvidia.nix
│   ├── sddm.nix
│   └── ...
│
└── home/                         # Home Manager configuration
    ├── default.nix
    ├── git.nix
    ├── packages.nix
    └── ...
```

## Usage

```bash
sudo nixos-rebuild switch --flake ~/nixos-config#sample
```
