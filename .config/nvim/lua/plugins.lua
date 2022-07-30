local packer = require("packer")

return packer.startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	-- Vimscript plugins
	use "preservim/nerdtree"
	use "xuyuanp/nerdtree-git-plugin"
	use "vim-airline/vim-airline"
	use "preservim/nerdcommenter"
	use "dense-analysis/ale"
	use "flazz/vim-colorschemes"
	use "sheerun/vim-polyglot"
	use "ryanoasis/vim-devicons"
	use "jiangmiao/auto-pairs"
	use "airblade/vim-gitgutter"
	use "dracula/vim"
	use "godlygeek/tabular"
	use { "neoclide/coc.nvim", branch = "release" }
end)
