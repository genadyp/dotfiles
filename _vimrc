set nocompatible

"-- Vundle --"
"----------------------------------------------------------------------"
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'


"-- My Bundles here:
Bundle 'scrooloose/nerdcommenter'  
  "plugin that allows for easy commenting of code for many filetypes
  "Bundle 'The NERD Commenter'
Bundle 'scrooloose/nerdtree'  
  "tree explorer plugin for navigating the filesystem
  "Bundle 'The NERD tree'
Bundle 'astashov/vim-ruby-debugger'  
  "Vim plugin for debugging Ruby applications (using ruby-debug-ide gem)
Bundle 'acx0/Conque-Shell'
  "Bundle 'Conque-Shell'
  "Should be checked for new versions on http://www.vim.org/scripts/script.php?script_id=2771
  "Run interactive commands inside a Vim buffer 
Bundle 'vim-scripts/upAndDown'
   "upAndDown : Swapping a line with the line directly above or below
   "By default, use <S-Up> and <S-Down> to move line or block of lines. 
Bundle 'othree/eregex.vim'
   "Perl/Ruby style regexp notation for Vim'
Bundle 'FavEx'  
  "Favorite file and directory explorer 
Bundle 'minibufexpl.vim'  
  "Elegant buffer explorer
Bundle 'mru.vim'  
  "Plugin to manage Most Recently Used (MRU) files
Bundle 'ZoomWin'  
  "Zoom in/out  of windows (toggle between one window and multi-window) 
"Bundle 'terryma/vim-expand-region'
  "vim-expand-region : Incremental visual selection 
  "http://www.vim.org/scripts/script.php?script_id=4499
  "https://github.com/terryma/vim-expand-region
"Bundle 'terryma/vim-multiple-cursors'
  "vim-multiple-cursors : True Sublime Text style multiple selections for Vim 
  "https://github.com/terryma/vim-multiple-cursors
  "http://www.vim.org/scripts/script.php?script_id=4523
Bundle 'scrooloose/syntastic'
  "Syntastic : Automatic syntax checking 
  "https://github.com/scrooloose/syntastic
  "http://www.vim.org/scripts/script.php?script_id=2736
Bundle 'easytags.vim'
  "easytags.vim : Automated tag file generation and syntax highlighting of tags in Vim
  "http://www.vim.org/scripts/script.php?script_id=3114
Bundle 'sjl/gundo.vim'
  "Gundo : Visualize your undo tree. 
  "http://www.vim.org/scripts/script.php?script_id=3304
  "http://sjl.bitbucket.org/gundo.vim/
  "https://github.com/sjl/gundo.vim/
Bundle 'beloglazov/vim-online-thesaurus'   
  "vim-online-thesaurus : A Vim plugin for looking up words in an online thesaurus
  "http://www.vim.org/scripts/script.php?script_id=4588
  "https://github.com/beloglazov/vim-online-thesaurus

"---- Motion
Bundle 'tpope/vim-surround'
  "surround.vim: quoting/parenthesizing made simple
  "https://github.com/tpope/vim-surround
  "http://www.vim.org/scripts/script.php?script_id=1697
Bundle 'AutoClose'
  "AutoClose : Inserts matching bracket, paren, brace or quote 
  "http://www.vim.org/scripts/script.php?script_id=1849
"Bundle 'amdt/vim-niji'
  "vim-niji : Yet another rainbow parentheses plugin.
  "http://www.vim.org/scripts/script.php?script_id=4580
  "https://github.com/amdt/vim-niji

"---- Syntax
"Bundle 'Rykka/riv.vim'
  "riv.vim : reStructuredText  in vim
  "https://github.com/Rykka/riv.vim
  "http://www.vim.org/scripts/script.php?script_id=4112
Bundle 'Specky'  
  "Functions to help make behavioral testing easy with ruby and rspec. 
Bundle 'Rubytest.vim'
  "Rubytest.vim : Run ruby tests in vim 
  "http://www.vim.org/scripts/script.php?script_id=2612
  "https://github.com/janx/vim-rubytest"
Bundle 'dmcinnes/ruby_single_test'
  "Ruby Single Test : Runs a single Ruby test under the cursor 
  "https://github.com/dmcinnes/ruby_single_test
  "http://www.vim.org/scripts/script.php?script_id=2869


"---- Version Control
Bundle 'airblade/vim-gitgutter'
  "A Vim plugin which shows a git diff in the gutter (sign column)
  "https://github.com/airblade/vim-gitgutter
"Bundle 'mhinz/vim-signify'
  "A plugin that shows a diff via Vim's sign column
  "https://github.com/mhinz/vim-signify
"Bundle 'git://repo.or.cz/vcscommand'
  "vcscommand.vim : CVS/SVN/SVK/git/hg/bzr integration plugin
  "http://www.vim.org/scripts/script.php?script_id=90
  "http://www.allaboutvim.ru/2007/08/vcscommandvim-svn_09.html
"Bundle 'tpope/vim-fugitive'
  "fugitive.vim : A Git wrapper so awesome, it should be illegal 
  "http://www.vim.org/scripts/script.php?script_id=2975


"---- Colors
Bundle 'Son-of-Obisidian'
  " Bundle 'vim-scripts/Son-of-Obisidian'
  "Son of Obisidian : Port of Visual Studio 2010 Son of obsidian color scheme
Bundle 'abra/obsidian2'
   "Obsidian2 Color scheme based on Notepad++ obsidian Color scheme
Bundle 'altercation/vim-colors-solarized'
Bundle 'changyuheng/holokai'
   "holokai : A slightly dark version of molokai 
   "http://www.vim.org/scripts/script.php?script_id=4417
   "https://github.com/changyuheng/holokai
Bundle 'tomasr/molokai'
   "Molokai is a Vim port of the monokai theme for TextMate originally created by Wimer Hazenberg.
   "https://github.com/tomasr/molokai
Bundle 'xoria256.vim' 
   "xoria256.vim : Soft pastel gamma on dark background, same appearence in {,g}vim 
   "http://www.vim.org/scripts/script.php?script_id=2140
Bundle 'darkslategray.vim'
   "darkslategray.vim : Dark slate gray background, pastel colored text 
   "http://www.vim.org/scripts/script.php?script_id=149
Bundle 'veloce/vim-aldmeris'
   "aldmeris : A colorscheme based on oblivion for gedit that support GVIM and 256 colors term 
   "http://www.vim.org/scripts/script.php?script_id=3673
   "https://github.com/veloce/vim-aldmeris
"Bundle 'moss'
   "moss : Dark color scheme for low light conditions
   "http://www.vim.org/scripts/script.php?script_id=2779
"Bundle 'Briofita'
   "Briofita : a dark background GUI colorscheme 
   "http://www.vim.org/scripts/script.php?script_id=4136
Bundle 'junegunn/seoul256.vim'
   "seoul256.vim : A low-contrast Vim color scheme based on Seoul Colors 
   "http://www.vim.org/scripts/script.php?script_id=4605
   "https://github.com/junegunn/seoul256.vim
Bundle 'Arkham/vim-tango'
   "Tango colour scheme : Colour scheme using the Tango Desktop project palette 
   "https://github.com/Arkham/vim-tango
   "http://www.vim.org/scripts/script.php?script_id=1686
Bundle 'darktango.vim'
   "darktango.vim : Tango based color scheme 
   "http://www.vim.org/scripts/script.php?script_id=1672
Bundle 'tango-morning.vim'
   "tango-morning.vim : Light Grey Tango color theme based on Morning 
   "http://www.vim.org/scripts/script.php?script_id=2640
Bundle 'tango-desert.vim'
   "tango-desert.vim : Dark Color scheme based on tango palette and desert 
   "http://www.vim.org/scripts/script.php?script_id=2671
Bundle 'two2tango'
   "two2tango : Colorscheme based upon Tango palette 
   "http://www.vim.org/scripts/script.php?script_id=1988
Bundle 'jonathanfilip/vim-lucius'
   "Lucius : Light and dark color scheme for GUI and 256 color terminal.
   "https://github.com/jonathanfilip/vim-lucius
   "http://www.vim.org/scripts/script.php?script_id=2536



"---- To Install
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"Bundle 'git://git.wincent.com/command-t.git'
" ...


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


"-- Functions --"
"----------------------------------------------------------------------"
"Open bash console inside vim
function! Bash(vert)
	if (a:vert == 1)
		ConqueTermVSplit bash
	else
		ConqueTermSplit bash
	endif
	setlocal statusline=BASH\ CONSOLE
endfunction

"Open ruby interpreter inside vim
function! Irb(vert)
  if (a:vert == 1)
    ConqueTermVSplit irb 
	else
    ConqueTermSplit irb
  endif
  setlocal statusline=INTERACTIVE\ RUBY
endfunction

"Remove trailing whitespaces
function! StripTrailingWhite()
    let l:winview = winsaveview()
    silent! %s/\s\+$//
    call winrestview(l:winview)
endfunction

function TexAbbs()
  iab <buffer> L $\mathcal{L}$
  iab <buffer> H $\mathcal{H}$
  iab <buffer> W $\mathcal{W}$
  iab <buffer> S $\mathcal{S}$
  iab <buffer> B $\mathcal{B}$
  iab <buffer> C $\mathcal{C}$
  iab <buffer> G $\mathcal{G}$
  iab <buffer> eps $\varepsilon$
  iab <buffer> pi $\pi$
  iab <buffer> Ui $U_i$
  iab <buffer> U1 $U_1$
  iab <buffer> U2 $U_2$
  iab <buffer> ui $u_i$
  iab <buffer> u1 $u_1$
  iab <buffer> u2 $u_2$
  iab <buffer> Pi $P_i$
  iab <buffer> P1 $P_1$
  iab <buffer> P2 $P_2$
  iab <buffer> pi $p_i$
  iab <buffer> p1 $p_1$
  iab <buffer> p2 $p_2$
  iab <buffer> ei $e_i$
  iab <buffer> e1 $e_1$
  iab <buffer> e2 $e_2$  
  iab <buffer> Ni $N_i$
  iab <buffer> N0 $N_0$
  iab <buffer> N1 $N_1$
  iab <buffer> N2 $N_2$
  iab <buffer> ni $n_i$
  iab <buffer> n1 $n_1$
  iab <buffer> n2 $n_2$
  "iab <buffer> U_i $U_i$
  "iab <buffer> U_1 $U_1$
  "iab <buffer> U_2 $U_2$
  "iab <buffer> u_i $u_i$
  "iab <buffer> u_1 $u_1$
  "iab <buffer> u_2 $u_2$
  "iab <buffer> P_i $P_i$
  "iab <buffer> P_1 $P_1$
  "iab <buffer> P_2 $P_2$
  "iab <buffer> p_i $p_i$
  "iab <buffer> p_1 $p_1$
  "iab <buffer> p_2 $p_2$
  "iab <buffer> e_i $e_i$
  "iab <buffer> e_1 $e_1$
  "iab <buffer> e_2 $e_2$  
  "iab <buffer> N_i $N_i$
  "iab <buffer> N_0 $N_0$
  "iab <buffer> N_1 $N_1$
  "iab <buffer> N_2 $N_2$
  "iab <buffer> n_i $n_i$
  "iab <buffer> n_1 $n_1$
  "iab <buffer> n_2 $n_2$
  iab <buffer> Unew $U^{new}$
  iab <buffer> ... $\cdots$
  iab <buffer> ,... ,$\cdots$
  iab <buffer> QED $\blacksquare$
endfunction


"-- Custom definitions --"
"----------------------------------------------------------------------"
"let g:ruby_path = ':C:\ruby192\bin\ruby.exe -Ilib'


" set current working directory to home directory
cd

syntax on

"--- Search
"set ignorecase " ignore case when searching
"set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise
"set hlsearch " highlight search terms
"set incsearch " show search matches as you type

"--- History
"set history=1000 " remember more commands and search history
"set undolevels=1000 " use many muchos levels of undo

if has('gui_running')
  colorscheme solarized
  set background=light
endif

"if has('gui_running')
"  set guifont=Rod_Transparent:h11
"endif

set shiftwidth=2 tabstop=2 expandtab smartindent cindent
set textwidth=100
set colorcolumn=100
"Line numbers
set nu
"To prevent problems while running on Linux scripts edited on Windows
set fileformat=unix
"Always get a status line
set laststatus=2
"let mapleader = ","

"visually select all the text in between mathing elements
"noremap % v%

"backup, swaps 
let my_backupdir=$HOME.'/.vim/backup'
silent execute '!mkdir "'.my_backupdir.'"'
silent execute '!rm "'.my_backupdir.'/*"'
let &backupdir=my_backupdir.'//'"
let &directory=my_backupdir.'//'"


" Spell checking
"setlocal spell spelllang=en_us

"Automatically retab
autocmd BufWritePre  *.{cpp,h,c,rb,java}  :retab
autocmd FileAppendPre *.{cpp,h,c,rb,java}  :retab
autocmd FileWritePre  *.{cpp,h,c,rb,java}  :retab
autocmd FilterWritePre  *.{cpp,h,c,rb,java}  :retab

"Automatically remove trailing whitespaces
autocmd BufWritePre  *.{cpp,h,c,rb,java}  call StripTrailingWhite()
autocmd FileAppendPre *.{cpp,h,c,rb,java}  call StripTrailingWhite()
autocmd FileWritePre  *.{cpp,h,c,rb,java}  call StripTrailingWhite()
autocmd FilterWritePre  *.{cpp,h,c,rb,java}  call StripTrailingWhite()

map <C-s> :call StripTrailingWhite() \| retab \| w<CR>
map! <C-s> :call StripTrailingWhite() \| retab \| w<CR>
imap <C-s> <C-\><C-O><C-s>


map <Up> k
map <Down> j
map <Left> h
map <Right> l

"Switch between Vim window splits easily
"nmap <silent> <C-Up> :wincmd k<CR>
"nmap <silent> <C-Down> :wincmd j<CR>
"nmap <silent> <C-Left> :wincmd h<CR>
"nmap <silent> <C-Right> :wincmd l<CR>

"Insert newline without entering insert mode
nmap <S-Enter> O<Esc>
"nmap <CR> O<Esc>
nmap <C-Enter> o<Esc>
"To add a blank line below or above and keep the cursor in place
"nnoremap <C-J> m`o<Esc>``
"nnoremap <C-K> m`O<Esc>``

"Insert new line in insert mode without breaking current line
imap <S-Enter> <Esc>O
imap <C-Enter> <Esc>o

"Delete current line in insert mode
imap <C-D> <Esc>ddi
"Substitute current line in insert mode
"imap <C-S> <Esc>S

"The above command will change the 'completeopt' option so that Vim's popup menu doesn't select the first completion item, but rather just inserts the longest common text of all matches; and the menu will come up even if there's only one match. (The longest setting is responsible for the former effect and the menuone is responsible for the latter.) 
set completeopt=longest,menuone

"Automatically change the current directory
"set autochdir
"Change to [C]urrent [W]orking [D]irectory
map <leader>cd :cd %:p:h<CR>
command CWD cd %:p:h

"--- buffers managment ---"
map <C-S-Right> :bnext<CR>
map <C-S-Left> :bprevious<CR>
imap <C-S-Right> <ESC>:bnext<CR>
imap <C-S-Left> <ESC>:bprevious<CR>


augroup MyAbbrevs
    autocmd!
    autocmd BufNewFile,BufRead *.tex call TexAbbs()
augroup END 


"-- Plagins --"
"----------------------------------------------------------------------"

"----- minbufexpl -----"
let g:miniBufExplMapWindowNavArrows = 1

"----- mru -----"
let MRU_File = $HOME.'/.vim/.vim_mru_files'
let MRU_Max_Entries = 10

"----- Conque Shell -----"
let g:ConqueTerm_PyExe = '/usr/bin/python'
"open bash  
ca bash call Bash(0)
"open bash vertically
ca vbash call Bash(1) 
"open irb
"ca irb call Irb(0)
"open irb vertically
"ca virb call Irb(1)

"----- eregex -----"
" For replacement, use :%S// (uppercase S) to use perl style regexp.
" default disable
let g:eregex_default_enable = 0
" custom search delimeters
let g:eregex_forward_delim = '/'
let g:eregex_backward_delim = '?'
" call eregex#toggle funtion to toggle the keymapping
nnoremap <leader>/ :call eregex#toggle()<CR>

"----- vim-ruby-debug -----"
"for more information see help for vim-ruby-debug
"let g:ruby_debugger_progname = 'C:\Program Files\Vim\vim73\gvim.exe'
"let g:ruby_debugger_builtin_sender = 0

"----- ZoomWin -----"
"Press <C-w-o> : the current window zooms into a full screen
"Press <C-w-o> again: the previous set of windows is restored 

"----- vim-online-thesaurus -----"
"By default the `:OnlineThesaurusLookup` command is mapped to `<LocalLeader>K`
"If you want to disable the default key binding, add the following line
"let g:online_thesaurus_map_keys = 0
"Then you can map the `:OnlineThesaurusLookup` command to anything you want as
"follows:
"nnoremap <your key binding> :OnlineThesaurusLookup<CR>


