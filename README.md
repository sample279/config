# Sample's NixOS Configuration

This repository contains my personal NixOS system configuration, managed using **Nix flakes** and **Home Manager**.

The primary goal of this project is to build a fully declarative, modular, and maintainable Linux desktop while learning the internals of the Nix ecosystem, Hyprland, and eventually Quickshell.

---

## Technologies

- **NixOS** – Operating System
- **Nix Flakes** – Reproducible system configuration
- **Home Manager** – User environment management
- **Hyprland** – Wayland compositor
- **Lua** – Hyprland configuration
- **Git** – Version control

---

## Repository Structure

```text
.
├── flake.nix
├── flake.lock
├── configuration.nix
├── hardware-configuration.nix
│
├── modules/                      # System modules
│   ├── audio.nix
│   ├── bootloader.nix
│   ├── docker.nix
│   ├── home.nix
│   ├── hyprland.nix
│   ├── locale.nix
│   ├── network.nix
│   ├── nvidia.nix
│   ├── packages.nix
│   ├── sddm.nix
│   ├── services.nix
│   ├── settings.nix
│   ├── steam.nix
│   ├── users.nix
│   └── default.nix
│
├── home/                         # Home Manager configuration
│   ├── default.nix
│   ├── packages.nix
│   ├── shell.nix
│   ├── git.nix
│   ├── font.nix
│   ├── kitty.nix
│   ├── hyprland.nix
│   ├── starship.nix
│   │
│   └── .config/
│       └── hypr/
│           ├── apps/
│           ├── bindings/
│           ├── config/
│           ├── lib/
│           ├── .luarc.json
│           ├── autostart.lua
│           ├── env.lua
│           ├── hyprland.lua
│           ├── keybinds.lua
│           └── windows.lua
│
└── README.md
```

---

## Architecture

The configuration is divided into two primary sections.

### System

Managed by NixOS.

Responsible for:

- Bootloader
- Kernel
- Drivers
- Networking
- Audio
- Display Manager
- System services
- System packages

### User

Managed by Home Manager.

Responsible for:

- User packages
- Shell
- Terminal
- Fonts
- Git
- Dotfiles
- Hyprland configuration

---

## Hyprland

The Hyprland configuration is written using the native Lua API and organized into modular components.

### apps/

Application-specific window rules.

Examples:

- Browsers
- Steam
- Picture-in-Picture
- LocalSend
- Typora

### bindings/

Keybindings grouped by functionality.

- Applications
- Windows
- Workspaces
- Media
- Mouse
- System
- Groups

### config/

Hyprland configuration modules.

- Desktop
- Input
- Layout
- Look & Feel
- Misc
- Monitors

### lib/

Shared helper functions used across the Lua configuration.

---

## Usage

After making changes, rebuild the system:

```bash
sudo nixos-rebuild switch --flake ~/nixos-config#sample
```

or use my rebuild alias:

```bash
nrs
```

---

## Current Status

### Completed

- Declarative NixOS configuration
- Home Manager integration
- Modular repository structure
- Native Lua Hyprland configuration
- Modular window rules
- Modular keybindings

### Planned

- Desktop framework architecture
- Theme system
- Desktop services
- Quickshell integration
- Application modules
- Additional documentation

---

## Design Principles

- Declarative over imperative
- Modular organization
- Small, focused configuration files
- Native APIs over compatibility layers
- Reproducible system configuration
- Version-controlled infrastructure

---

This repository is an ongoing project and will continue to evolve as I learn more about NixOS, Hyprland, Wayland, and desktop development.
