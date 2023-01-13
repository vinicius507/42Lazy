# 42Lazy
École 42 configuration spec for `lazy.nvim`.

## Requirements
- [lazy.nvim](https://github.com/folke/lazy.nvim)

## Usage
To use the 42Lazy spec you just need to import it in `lazy.nvim` setup:

```lua
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
    -- import FtLazy Plugins
    { "vinicius507/42Lazy", import = "ft-lazy.plugins" },
  },
})
```

## Setup
You can configure 42Lazy using the `setup` function:

```lua
require("ft-lazy").setup({ ... })
```

42Lazy comes with the following defaults:

```lua
{
	--@type NormeConfig @see vinicius507/norme.nvim
	norme = {
		cmd = "norminette",
	}
	--@type FtHeaderConfig @see vinicius507/header42.nvim
	header = {
		login = "marvin",
		email = "marvin@42.fr",
	}
}
```

## Inspiration
- [LazyVim](https://github.com/LazyVim/LazyVim)
