call plug#begin('~/.vim/plugged')
	"Plugin for Arduino"

	if has('nvim')
		Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	else
		Plug 'Shougo/defx.nvim'
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif
	" React code snippets and react native
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'cristianoliveira/vim-react-html-snippets'
	Plug 'epilande/vim-react-snippets'
	Plug 'mxw/vim-jsx'
	"Plug 'Valloric/MatchTagAlways'
	Plug 'tellijo/vim-react-native-snippets'
	" ES2015 code snippets  and Javascript,TYpescript plugins
	Plug 'HerringtonDarkholme/yats.vim'
	Plug 'epilande/vim-es2015-snippets'
	"Plug 'SirVer/ultisnips'
	"
	Plug 'mustache/vim-mustache-handlebars'
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'peitalin/vim-jsx-typescript'
	"ventanas emergentes


	"css, scss ,html ,ejs,etc.
	Plug 'nikvdp/ejs-syntax'
	Plug 'mlaursen/coc-scssmodules', {'do': 'yarn install && yarn build'}
	Plug 'ap/vim-css-color'
	"barras de estdo
	Plug 'itchyny/lightline.vim'
	Plug 'oldwomanjosiah/lightline-gruvbox.vim'
	"coloreo y pretier
	Plug 'chemzqm/vim-jsx-improve'
	"Git
	Plug 'Yggdroot/indentLine'
	Plug 'tsony-tsonev/nerdtree-git-plugin'  
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'mhinz/vim-signify'
	"Autocompletado
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"themas
	Plug 'morhetz/gruvbox' 
	"latex
	Plug 'lervag/vimtex'
	"otros
	Plug 'kristijanhusak/defx-icons'
	Plug 'psliwka/vim-smoothie'
	Plug 'scrooloose/nerdtree' 
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'  

	Plug 'ctrlpvim/ctrlp.vim' 
	Plug 'scrooloose/nerdcommenter' 
	Plug 'terryma/vim-smooth-scroll' 
	Plug 'easymotion/vim-easymotion'
	Plug 'mhinz/vim-startify'
	"C#
	
	Plug 'preservim/nerdtree'


	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'


	Plug 'tyewang/vimux-jest-test'
	Plug 'janko-m/vim-test'

	Plug 'benmills/vimux'
	Plug 'christoomey/vim-tmux-navigator'

	" typing
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-surround'

	" syntax
	Plug 'sheerun/vim-polyglot'
	Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
	Plug 'norcalli/nvim-colorizer.lua'

call plug#end()
