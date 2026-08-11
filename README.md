# ⚡ My Neovim Configuration

A personal Neovim setup built for performance and a modern coding experience. Heavily inspired by and built on top of [LazyVim](https://github.com/LazyVim/LazyVim). 

Tailored specifically for an **Arch Linux** environment running **Hyprland**, and tested to work smoothly with terminal emulators and **Neovide**.

## ⚙️ Prerequisites & Dependencies

To ensure all plugins (Telescope, Treesitter, LSP, etc.) work flawlessly without errors, make sure to install the following dependencies on your system before cloning this repository.

### For Arch Linux Users

Install the core system requirements (Search tools, C compiler, Tree-sitter CLI, and Lua package manager):
```bash
sudo pacman -S neovim git gcc make unzip curl ripgrep fd fzf tree-sitter-cli luarocks
```

Install Language Providers (Python and Node.js) for Neovim LSP support:
```bash
# Python provider
sudo pacman -S python-pynvim

# Node.js provider (Requires npm to be configured properly in user directory)
npm install -g neovim
```

*(Note: Image, Mermaid, and PDF rendering tools like `ghostscript`, `mermaid-cli`, or `tectonic` are intentionally excluded from this setup to keep it lightweight and because they are not supported in Neovide.)*

## 🚀 Installation

1. Backup your existing Neovim configuration (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   mv ~/.local/share/nvim ~/.local/share/nvim.bak
   mv ~/.local/state/nvim ~/.local/state/nvim.bak
   mv ~/.cache/nvim ~/.cache/nvim.bak
   ```

2. Clone this repository:
   ```bash
   git clone [https://github.com/USERNAME_GITHUB_KAMU/NAMA_REPO_KAMU.git](https://github.com/USERNAME_GITHUB_KAMU/NAMA_REPO_KAMU.git) ~/.config/nvim
   ```

3. Start Neovim! Lazy.nvim will automatically install all the plugins.
   ```bash
   nvim
   ```
