# config

Personal NixOS system configuration and dotfiles, managed in a single repository.

[NixOS](https://nixos.org/) (`nixos-unstable`) · [Home Manager](https://github.com/nix-community/home-manager) · [Niri](https://github.com/YaLTeR/niri) (Wayland compositor) · [Noctalia v5](https://github.com/noctalia-dev/noctalia) (desktop shell) · [GNU Stow](https://www.gnu.org/software/stow/) dotfiles

## Layout

```text
.
├── nixos-config/              # NixOS flake (host: sample)
│   ├── flake.nix
│   ├── configuration.nix
│   ├── hardware-configuration.nix
│   ├── modules/               # System modules (niri, noctalia, nvidia, ...)
│   └── home/                  # Home Manager modules (shell, git, packages, ...)
│
└── dotfiles/                  # Stow packages, one dir per app
    ├── ghostty/.config/ghostty/
    ├── niri/.config/niri/
    ├── starship/.config/starship.toml
    └── ...                    # see dotfiles/README.md
```

## Usage

```bash
sudo nixos-rebuild switch --flake ~/config/nixos-config#sample
```

Aliases (defined in `home/shell.nix`):

| alias | command |
|-------|---------|
| `nrs` | `sudo nixos-rebuild switch` (with the flake) |
| `nrst` | `nrs` with `--show-trace` |
| `nru` | `nix flake update` + rebuild |
| `nrup` | update only `nixpkgs` + rebuild |
| `ncg` | `sudo nix-collect-garbage -d` |
| `nso` | `sudo nix store optimise` |
| `stowall` | restow all dotfiles (symlink farm) |
| `cfg` | `cd ~/config` |

Dotfiles are symlinked into `~` — edit in place, changes apply immediately. See `dotfiles/README.md` for the package list.

Validate the niri config: `niri validate`

## Requirements

- NixOS with flakes enabled
- `stow` (installed via Home Manager)
