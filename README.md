# Dotfiles Configuration - Ultimate

Welcome to my comprehensive dotfiles configuration! This repository contains the essential configuration files to set up a personalized and efficient development environment. Compatible with various Unix-based systems, these dotfiles are designed to streamline your workflow and maintain a clean, organized environment.

## Features

- **Shell Configuration**: Custom Fish, Zsh, and Bash configurations.
- **Editor Setup**: Pre-configured settings for Vim and VSCode.
- **Terminal Tools**: Settings for `tmux`, `starship`, and various CLI tools.
- **Version Control**: Git configurations for streamlined version control.
- **Customization**: Personalized themes, aliases, and functions.

## Installation

Follow these steps to clone and apply the dotfiles on your system:

1. **Clone the Repository**

    ```sh
    *null
    ```

2. **Run the Installation Script**

    ```sh
    *null
    ```

3. **Apply the Configurations**

    Source the necessary shell configuration to apply the changes:

    ```sh
    *null
    ```

## Customization

Feel free to customize these configurations to match your personal preferences:

- **Fish Shell**: Modify files in `~/.config/fish/conf.d/`
- **Zsh Shell**: Edit `~/.zshrc` and add plugins/themes.
- **Vim**: Update settings in `~/.vimrc` or `~/.config/nvim/init.vim`.
- **VSCode**: Change settings in `~/.config/Code/User/settings.json`.

## Troubleshooting

### Common Issues

- **Permission Denied**: Ensure you have the correct permissions to execute the scripts.
- **Missing Dependencies**: Verify that all required dependencies are installed.

### Contact

If you encounter any issues or have suggestions for improvement, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to the open-source community for various inspirations and resources.

---

*This dotfiles repository is designed to work seamlessly on Ubuntu, macOS, and other Unix-based systems. For macOS, additional tweaks may be necessary if any issues arise.*

~/.config/zsh/
├── .zshenv                 # Biến môi trường toàn cục, được load đầu tiên
├── .zshrc                  # File config chính, load các module
├── lib/                    # Thư mục chứa các functions và utilities
│   ├── aliases.zsh         # Các alias thường dùng
│   ├── completion.zsh      # Cấu hình auto completion
│   ├── exports.zsh         # Environment variables
│   ├── functions/          # Thư mục chứa các custom functions
│   │   ├── directories.zsh     # Smart directory creation and navigation
│   │   ├── extraction.zsh      # Extract any archive format
│   │   ├── fzf.zsh             # FZF enhanced functions
│   │   ├── git.zsh             # Git workflow helpers
│   │   └── projects.zsh        # Project templates
│   ├── history.zsh         # Cấu hình history
│   ├── key-bindings.zsh    # Custom key bindings
│   └── theme.zsh           # Theme và prompt configuration
├── completions/
│   ├── git-completion.bash
│   └── ...
├── plugins/                # Custom plugins và git submodules
│   ├── zsh-autosuggestions/
│   ├── zsh-syntax-highlighting/
│   └── custom-plugin/
├── scripts/              # Scripts hỗ trợ
│   ├── update.sh         # Update plugins
│   └── install.sh        # Setup môi trường mới
└── cache/               # Cache files cho performance
    └── .zcompdump      # Completion dump files