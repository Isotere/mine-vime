# https://nvchad.github.io/getting-started/setup

PACKER_PATH=~/.local/share/nvim/site/pack/packer/start
YCM_PATH=$(PACKER_PATH)/YouCompleteMe

uninstall: clear

install: clear prepare deps
	git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
	nvim --headless -c 'hi NormalFloat guibg=#1e222a|q'
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
	nvim --headless -c 'TSInstall go'
	nvim --headless -c 'TSInstall latex|q'
	nvim --headless -c 'TSInstall lua|q'
	nvim --headless -c 'TSInstall php|q'
	nvim --headless -c 'TSInstall python|q'
	nvim --headless -c 'TSInstall javascript|q'
	nvim --headless -c 'TSInstall typescript|q'

clear:
	chmod -R 777 ~/.local/share/nvim || exit 0
	rm -rf ~/.local/share/nvim || exit 0
	rm -fr ~/.local/share/nvim/site/pack || exit 0
	rm -rf ~/.config/nvim || exit 0
	rm -rf $(PACKER_PATH) || exit 0
	rm -rf ~/.cache/nvim || exit 0


deps:
	pip3 install --user --upgrade pynvim
	pip3 install --upgrade vim-vint
	pip3 install --upgrade autopep8 flake8 bandit pytype
	pip3 install --upgrade jedi-language-server
	composer --no-interaction global require \
		squizlabs/php_codesniffer \
		phpstan/phpstan
	npm install -g neovim
	npm install -g prettier eslint @babel/eslint-parser eslint-plugin-import eslint-plugin-node
	npx install-peerdeps -g eslint-config-airbnb
	npm install -g stylelint stylelint-config-recommended stylelint-config-standard
	npm install -g yaml-language-server markdownlint bash-language-server
	npm install -g dockerfile-language-server-nodejs
	npm install -g sql-formatter prettier
	npm install -g dockerfile-language-server-nodejs
	go install honnef.co/go/tools/cmd/staticcheck@latest
	GO111MODULE=on go install golang.org/x/tools/gopls@latest

prepare:
	brew upgrade neovim the_silver_searcher fzf bat htop fd ncdu tldr httpie git-delta ripgrep gnu-sed cmake


