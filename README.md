# My Dotfiles

This repository contains my personal dotfiles for various tools and applications.

## Configurations

### Starship

- **File:** `starship/starship.toml`
- **Description:** Customizes the Starship prompt with symbols for success, error, and vi mode. It also configures the appearance of the directory, git branch, git status, python version, and command duration.

### Tmux

- **File:** `tmux/.tmux.conf`
- **Description:** Configures Tmux with `C-s` as the prefix, sets the base index to 1, and enables RGB color support. It uses the `tmux-tokyo-night` theme and includes plugins for yanking text.

### Visual Studio Code

- **File:** `vscode/keybindings.json`
- **Description:** Defines custom keybindings for Visual Studio Code, focusing on file tree navigation, buffer navigation, refactoring, and terminal management.

### WezTerm

- **File:** `wezterm/.wezterm.lua`
- **Description:** Configures the WezTerm terminal emulator with the "OneDark" color scheme, "FiraCode Nerd Font Mono" font, and a custom background image. It also includes custom keybindings for copy and paste.

### Zsh

- **File:** `zsh/.zshrc`
- **Description:** Configures the Zsh shell with Oh My Zsh, including plugins for git, syntax highlighting, and autosuggestions. It sets environment variables, defines aliases for common commands, and initializes nvm, starship, and zoxide. It also includes a custom fzf search function.

## Usage

To use these dotfiles, you can clone this repository and then create symbolic links from the files in this repository to the corresponding locations in your home directory.

For example, to use the zsh configuration, you would run:

```bash
ln -s /path/to/this/repo/zsh/.zshrc ~/.zshrc
```

**Note:** You may need to install the required fonts, plugins, and tools for each configuration.