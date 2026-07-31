# config

My NixOS system configuration and dotfiles, managed in a single repository.

- **`nixos-config/`** — NixOS flake with Home Manager ([Niri](https://github.com/YaLTeR/niri) compositor, [Noctalia v5](https://github.com/noctalia-dev/noctalia) desktop shell)
- **`dotfiles/`** — application configs managed with [GNU Stow](https://www.gnu.org/software/stow/), symlinked into `~`

The system config history was imported from the original [`nixos-config`](https://github.com/sample279/nixos-config) repository via `git subtree`, so this repo's full history is preserved under the `nixos-config/` prefix.

## Layout

```text
.
├── nixos-config/              # NixOS flake
│   ├── flake.nix
│   ├── configuration.nix
│   ├── hardware-configuration.nix
│   ├── modules/               # System modules (niri, noctalia, nvidia, ...)
│   └── home/                  # Home Manager modules (shell, git, packages, ...)
│
└── dotfiles/                  # Stow packages, one dir per app
    ├── kitty/.config/kitty/
    ├── niri/.config/niri/
    ├── starship/.config/starship.toml
    └── ...                    # see dotfiles/README.md
```

## Usage

### System

```bash
sudo nixos-rebuild switch --flake ~/config/nixos-config#sample
```

Aliases (defined in `home/shell.nix`):

| alias | command |
|-------|---------|
| `nrs` | rebuild with the flake |
| `nrst` | rebuild with `--show-trace` |
| `nru` | `nix flake update` + rebuild |
| `nrup` | update only `nixpkgs` + rebuild |
| `ncg` | `nix-collect-garbage -d` |
| `nso` | `nix store optimise` |

### Dotfiles

Files are symlinked from `~` into `dotfiles/`, so edit them in place — changes apply immediately and are tracked by git.

```bash
stowall   # restow all packages (symlink farm)
cfg       # cd ~/config
```

Adding a new package:

```bash
mkdir -p ~/config/dotfiles/<app>/.config
cp -r ~/.config/<app> ~/config/dotfiles/<app>/.config/
cd ~/config/dotfiles && stow --adopt -t ~ <app>
```

Then commit the changes in `~/config`.

## Requirements

- NixOS with flakes enabled
- `stow` for the dotfiles (installed via Home Manager)
