"Pour pas qu'il y ai de conflit avec Vi
set nocompatible


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""Vundle"""""""""""""""""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
"Plugin 'rizzatti/dash.vim'
"Plugin 'szw/vim-tags'

call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""" NEDTree """"""""""""""""""""""""
let g:netrw_liststyle=3
let g:NERDTreeWinSize=20
autocmd VimEnter * NERDTree | wincmd p
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""SOLARIZED COLORSCHEME """""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""" AUTRE SETTINGS """""""""""""""""""""""""""""""""""

" Pour coloriser les .lus
au BufREad,BufNewFile *.nxc set filetype=c
au BufREad,BufNewFile *.ec2nxc set filetype=c
au BufREad,BufNewFile *.lus set filetype=lustre


" pour activer les numéro de ligne 
set nu 

" Pour ajouter des settings.vim dans config à la place du .vimrc
runtime! config/**/*/.vim

" Pour la coloration syntaxique
filetype plugin indent on
set term=xterm-color
syntax on

"Activer la souris dans le shell
set mouse=a

"faire correspondre les parentheses
set showmatch

"Afficher les commandes tapées
set showcmd

"Remplacer les tab par 4 esp
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab
"Pour avoir les '|' d'alignement d'indentation
set list
set listchars=tab:>-
set list lcs=tab:\|\ 

"option pour les completions
set wildmenu

"folder option
syn region C_Fold start="{" end="}" transparent fold
syn region Java_Fold start="{" end="}" transparent fold
syn sync fromstart
set foldmethod=syntax
set foldnestmax=5
set foldlevel=20

"mettre en valeur la ligne du cursor
set cursorline

"raccourci complétion intelligente 
nmap <C-Space> <C-X><C-O>
nmap <C-k> <C-]>

"Raccourcis utiles
iab #i #include
iab #d #define 

"Correcteur orthographique
set spelllang=fr
set spell
set spellsuggest=6
" spell checking
function! ToggleSpellLang()
	" toggle between en and fr
	if &spelllang =~# 'en'
		:set spelllang=fr
	else
		:set spelllang=en
	endif
endfunction
nnoremap <F7> :setlocal spell!<CR>
nnoremap <F8> :call ToggleSpellLang()<CR>

"Raccourci pour MBE
nnoremap <leader>n :bn<cr>
nnoremap <leader>b :bp<cr>

"Raccourcie pour Explore vim
map <leader>e :Explore 

"""""" POUR LE SQL DBExt : voir ensiwiki : 
"" https://ensiwiki.ensimag.fr/index.php/TP_de_BD_avec_VIM
"let g:dbext_default_type = 'ORA'         "Les TP se font sur Oracle
"let dbext_default_user = 'mahieluc'   "Login 
"let dbext_default_passwd = 'Votre-Mdp'   "Mot de passe (SQL != mdp ensibm à priori)
"let dbext_default_host = 'ensioracle1'   "À changer selon le serveur à utiliser
"let dbext_default_srvname = 'ensioracle1'  "idem

"" pour avoir la ligne rouge à 80 char et que le 
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.tex setlocal textwidth=80
au BufRead,BufNewFile *.txt setlocal textwidth=80

set colorcolumn=80        
highlight ColorColumn ctermbg=lightred guibg=lightred
