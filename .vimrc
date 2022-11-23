execute pathogen#infect()
set nocompatible
syntax on
syntax enable 																 "activa color de las fuentes 
set number
set mouse=a                                    "activa el mouse   
set numberwidth=2 
set clipboard=unnamedplus
set showcmd                                    "muestra lo que se esta editando
set ruler					                             "muestra la linea en que se encuentra el cursor
set cursorline
set cursorcolumn
set colorcolumn=+1
set encoding=UTF-8
set showmatch                                  "si nos situamos en un parentesis muestra el parentesis de cierre
set sw=2					                             "al editar la linea siguiente avanza automaticamente dos espacios
set relativenumber                             "nos proporciona numeracion de lineas para editar el documento	
set laststatus=2                               "nos muestra la linea de edicion para saber en que linea nos encontramos, si estamos en modo edicio, vision, normal etc
set noshowmode                                 "no muestra en la linea de comandos cuando se inserta,elimina, pega y otros cuando se realice 

"Trabajando con los tabuladores
set shiftwidth=2
set tabstop=2				                           "softtabstop
set expandtab    		                           "nos ayuda ha utilizar el tab en cualquier parte dl documento conservando la identacion de la linea anterior
set autoindent
filetype indent on 
"filetype plugin indent on


			




" Diccionario
"set spell   "habilitar diccionario
"set spelllang=es,en   "habilitar diccionario


call plug#begin('~/.vim/plugged')              "ruta de los plugins debe crear la carpeta

"Temas
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox'


"Tema menu bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

"completa parentisis
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

"IDE
Plug 'easymotion/vim-easymotion' 
Plug 'mhinz/vim-signify'                       "nos muestra en pantalla informacion de lo que se realiza en vim
Plug 'yggdroot/indentline'				             "nos muestra cuando las lineas estan identadas
Plug 'scrooloose/nerdcommenter'		             "nos permite realizar comentarios

"Explorer
Plug 'scrooloose/nerdtree'

"Plugin JavaScrip
Plug 'jelera/vim-javascript-syntax'

"Plugin vim-jsx
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
   
"Plugin emmet
Plug 'mattn/emmet-vim'

"Plugin de Temux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"Plugin go
Plug 'fatih/vim-go'     "autocompletado
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch':'release'}


Plug 'sheerun/vim-polyglot'

"Git Support
"Plug 'kablamo/vim-git-log'
"Plug 'gregsexton/gitv'
"Plug 'tpope/vim-fugitive'
"Plug 'jaxbot/github-issues.vimmm'


call plug#end() " fin del llamado a los plugins

" temas y estilos

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set background=dark
set t_Co=256
highlight Normal ctermbg=NONE


"Explorador de vim
let NERDTreeQuitOnOpen=1                       "hace que al abrir nerdtree se cierre cuando abrimos un archivo
let g:go_fmt_command = "goimports"


"configuracion de teclas
let mapleader=" "
"nmap <Leader>s <Plug>(easymotion-s2) 
"nmap <F2> :NERDTreeFind<CR>
nmap <Leader>b <Plug>(easymotion-s2)

nmap <Leader>e :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>i :PlugInstall<CR>




