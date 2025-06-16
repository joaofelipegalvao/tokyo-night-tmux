# Tokyo Night tmux

<p align="center">
  <a href="https://github.com/joaofelipegalvao/tokyo-night-tmux/releases/latest" target="_blank">
    <img src="https://img.shields.io/github/release/joaofelipegalvao/tokyo-night-tmux.svg?style=flat-square&label=Release&logo=github&logoColor=c0caf5&colorA=1a1b26&colorB=bb9af7"/>
  </a>
  <a href="#installation" target="_blank">
    <img src="https://img.shields.io/badge/Installation-Guide-bb9af7?style=flat-square&labelColor=1a1b26&logo=tmux&logoColor=c0caf5"/>
  </a>
  <a href="#plugin-manager" target="_blank">
    <img src="https://img.shields.io/badge/Plugin-Support-bb9af7?style=flat-square&labelColor=1a1b26&logo=pluggy&logoColor=c0caf5"/>
  </a>
</p>

<div align="center">

An elegant, dark and modern [tmux](https://tmux.github.io) color theme.

Designed for a fluent and clear workflow based on the [Tokyo Night](https://github.com/folke/tokyonight.nvim) color palette.

[![overview-1.png](https://i.postimg.cc/MpNXjPTS/overview-1.png)](https://postimg.cc/pmQPwBzG)
</div>


## Features

### Your terminal. Your style.

The unified UI element design provides a clutter-free and fluidly merging appearance.

[![ui-fluid-appearance-vim-1.png](https://i.postimg.cc/QdRZqps1/ui-fluid-appearance-vim-1.png)](https://postimg.cc/87BYpf7z)

[![ui-fluid-appearance-gotop-2.png](https://i.postimg.cc/HxCF8JhT/ui-fluid-appearance-gotop-2.png)](https://postimg.cc/DWBxtzhN)
### Uniform design with beautiful UI elements.

The themed UI elements provide a fluid and unobtrusive transition from the terminal to the tmux status bar.

[![ui-clock-1.png](https://i.postimg.cc/nh2qTSKQ/ui-clock-1.png)](https://postimg.cc/fV33RKrw)

### Take your favorite plugins with you.

The theme supports popular plugins for a fluid and unobtrusive user interface transition.

[![plugins-tmux-prefix-highlight-1.png](https://i.postimg.cc/8CGzYTHy/plugins-tmux-prefix-highlight-1.png)](https://postimg.cc/9Dx2R5sT)

---

## Installation

Thanks to existing plugin managers for tmux, Tokyo Night tmux can be installed for all platforms in a uniform way within a few lines of codes. The recommended manager is [tpm](https://github.com/tmux-plugins/tpm), but any other manager like [tundle](https://github.com/javier-lopez/tundle) can also be used.

### Plugin Manager

To automatically download and activate Tokyo Night tmux, follow the install instructions for [tpm](https://github.com/tmux-plugins/tpm) and

- add
  ```
  set -g @plugin "seu-usuario/tokyonight-tmux"
  ```
  to your `tmux.conf`, by default `.tmux.conf` located in your [home directory](https://en.wikipedia.org/wiki/Home_directory)
- press the default key binding `prefix` + <kbd>I</kbd> to fetch and install the plugin

Also see [tpm's install instructions](https://github.com/tmux-plugins/tpm#installing-plugins) for more details.

[![installation-tpm-2.png](https://i.postimg.cc/rwHCw2tC/installation-tpm-2.png)](https://postimg.cc/3kgDt61d)

### Manual Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/joaofelipegalvao/tokyo-night-tmux ~/.tmux/themes/tokyo-night-tmux
   ```

2. Add the following line to your `.tmux.conf`:
   ```
   run-shell "~/.tmux/themes/tokyo-night-tmux/tokyo-night-tmux.tmux"
   ```

3. Reload tmux configuration:
   ```bash
   tmux source-file ~/.tmux.conf
   ```

## Configuration

The theme comes with sensible defaults, but can be customized to your needs.

## Color Palette

Tokyo Night tmux uses the beautiful Tokyo Night color palette:

- **Background**: Dark, modern background tones
- **Foreground**: Clear, readable text colors
- **Accent**: Vibrant blue and purple highlights
- **Status**: Subtle grays for status information

## Contributing

Tokyo Night tmux is an open source project and we love to receive contributions from the community!

There are many ways to contribute, from writing and improving documentation and tutorials, reporting bugs, submitting enhancement suggestions that can be added to the theme by submitting pull requests.

### Development

1. Fork this repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Acknowledgments

- Inspired by the original [Nord tmux](https://github.com/nordtheme/tmux) theme
- Based on the [Tokyo Night](https://github.com/folke/tokyonight.nvim) color palette
- Thanks to all contributors who help make this theme better

<div align="center">

**[Installation](#installation)** • **[Configuration](#configuration)** • **[Contributing](#contributing)**

Made with ❤️ for the tmux community

</div>
