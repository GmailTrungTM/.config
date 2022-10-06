:set number												" Show number on the left
:set autoindent											" Indent automatically	
:set tabstop=4											" Tab size of 4 spaces
:set mouse=a											" Enable mouse on all modes 
:set smartcase											" Do not ignore case if the search pattern has uppercase 
:set softtabstop=4										" On insert use 4 spaces for tab 
:set shiftwidth=4
:set noswapfile											" Do not leave any backup files 
:set hlsearch											" Highlight search results								
:set ignorecase											" Search ignoring case 
:set incsearch
:set completeopt=menu,menuone,noselect
:set showmatch
:set nowrap
syntax on
" hiding tilde
highlight EndOfBuffer ctermfg=black ctermbg=black


" Keybindings
"" vim
nnoremap <C-w>h <C-\><C-n><C-w>h
nnoremap <C-w>j <C-\><C-n><C-w>j
nnoremap <C-w>k <C-\><C-n><C-w>k
nnoremap <C-w>l <C-\><C-n><C-w>l

"" FZF
nnoremap <C-f> :FZF<CR>
"" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-c> :NERDTreeClose<CR>
"" Terminal
nnoremap <C-t> :terminal<CR>

:inoremap jj <ESC>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/site/plugged') 

" Declare the list of PLUGINS. 
" ========LUALINE-PLUG
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" ========NERDTREE-PLUG
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
" ========COC-PLUG
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" ========FZF-PLUG
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'} 
Plug 'junegunn/fzf.vim'

" Lists ends here. Plugins become visible to Vim after this call.
call plug#end()

" REQUIRE
lua <<EOF
	print("hello trung,\nlist of plugs:") 
	require('nerdtree')										 
	require('statusbar') 
	require('coc') 
	require('fzf')
	print("nvim is ready") 
EOF
