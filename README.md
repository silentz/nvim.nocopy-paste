# nvim.nocopy-paste

Neovim plugin for pasting text without copying underlying visual-selected text

![example.gif](https://user-images.githubusercontent.com/25668745/232460074-279b00dd-5393-4664-8734-03081696202a.gif)

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

* Q: Why not use `vnoremap p "_dP` instead of this plugin?
* A: There is the problem while using `vnoremap p "_dP`. It happens while pasting in the end of a line:
![vnoremap_example](https://user-images.githubusercontent.com/25668745/232464217-2d98b461-31c5-4d1c-8e11-3e7de3a35690.gif)
