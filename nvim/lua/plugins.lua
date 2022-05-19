-- https://github.com/wbthomason/packer.nvim
-- https://github.com/nvim-lua/kickstart.nvim

return require('packer').startup({
	function(use)
    	use 'wbthomason/packer.nvim'
		-- ToDo:  https://github.com/tpope/vim-sensible
		use { 'tpope/vim-sensible' }
		use 'mhinz/vim-startify'
		-- ToDo: https://github.com/tpope/vim-repeat
		use 'tpope/vim-repeat'
		use 'ntpeters/vim-better-whitespace'
		use 'tpope/vim-surround'
		-- ToDo: https://github.com/NMAC427/guess-indent.nvim
		use 'nmac427/guess-indent.nvim'
		use 'lukas-reineke/indent-blankline.nvim'
		use {
			'marko-cerovac/material.nvim',
		}
		use 'b0o/schemastore.nvim'

		-- " ToDo: https://github.com/numToStr/Comment.nvim
		use {
			'numToStr/Comment.nvim',
			config = function ()
				require('Comment').setup()
			end
	  	}

		 use {
			'Pocco81/AutoSave.nvim',
			config = function ()
			  local autosave = require("autosave")
			  autosave.setup()
			end
	  	}

		use {
			"folke/which-key.nvim",
			config = function()
				require("which-key").setup {}
			end
	  	}

		-- ToDo: https://github.com/lewis6991/gitsigns.nvim
		use {
			'lewis6991/gitsigns.nvim',
			requires = { 'nvim-lua/plenary.nvim' },
			config = function()
				require('gitsigns').setup({})
			end
	  	}

		-- ToDo: https://github.com/preservim/nerdtree
		use {
			-- 'preservim/nerdtree'
			'scrooloose/nerdtree'
		}
		use 'jistr/vim-nerdtree-tabs'
		use 'ryanoasis/vim-devicons'


		require('plugins.lsp').run(use)
    	require('plugins.autocomplete').run(use)
	end,
	config = {
    		enable = true,
    		display = {
      			open_fn = require('packer.util').float,
    		}
  	}
})
