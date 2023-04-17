# nvim.nocopy-paste

Neovim plugin for pasting text without copying underlying visual-selected text

_gif with demo_

## Installation

Install the plugin with your preferred package manager

### Lazy.nvim

```lua
require("lazy").setup({
    "silentz/nvim.nocopy-paste",
})
```

### Packer

```lua
return require('packer').startup(function (use)
    use "silentz/nvim.nocopy-paste"
end)
```

## FAQ

* Q: Why not use `vnoremap <leader>p "_dP` instead of this plugin?
* A: _gif with demo_
