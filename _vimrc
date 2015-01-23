set nocompatible

"Use arrow keys
map <Up> k
map <Down> j
map <Left> h
map <Right> l
xmap <Up> k
xmap <Down> j
xmap <Left> h
xmap <Right> l

"-- Vundle --"
"----------------------------------------------------------------------"
if filereadable(expand("~/dotfiles/_vimrc.bundles"))
  source ~/dotfiles/_vimrc.bundles
endif

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

function EnableFullScreen()
  if &go =~ 'e'
    exec('silent !wmctrl -r :ACTIVE: -b add,fullscreen')
    exec('set go-=e')
  endif
endfunction

function DisableFullScreen()
  if &go !~ 'e'
    exec('silent !wmctrl -r :ACTIVE: -b remove,fullscreen')
    exec('set go+=e')
  endif
endfunction

function ToggleFullScreen()
  if &go =~ 'e'
    exec('silent !wmctrl -r :ACTIVE: -b add,fullscreen')
    exec('set go-=e')
  else
    exec('silent !wmctrl -r :ACTIVE: -b remove,fullscreen')
    exec('set go+=e')
  endif
endfunction

function TexAbbs()
  iab <buffer> L $\mathcal{L}$($P_1$,$P_2$)
  iab <buffer> Lstar $\mathcal{L}^*$($P_1$,$P_2$)
  iab <buffer> H $\mathcal{H}$
  iab <buffer> W $\mathcal{W}$
  iab <buffer> S $\mathcal{S}$
  iab <buffer> B $\mathcal{B}$
  iab <buffer> C $\mathcal{C}$
  iab <buffer> G $\mathcal{G}$
  iab <buffer> newG $\hat{\mathcal{G}}$
  iab <buffer> F $\mathcal{F}$
  iab <buffer> Hs $\mathcal{H}_s$
  iab <buffer> newHs $\hat{\mathcal{H}_s}$
  iab <buffer> Fs $\mathcal{F}_s$
  iab <buffer> newFs $\hat{\mathcal{F}_s}$
  iab <buffer> Tl $T_{laminar}$
  iab <buffer> eps $\varepsilon$
  iab <buffer> pi $\pi$
  iab <buffer> phi $\varphi_s$
  iab <buffer> phii $\varphi_s^{-1}$
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
  iab <buffer> N' $N^{'}$
  iab <buffer> N" $N^{''}$
  iab <buffer> ni $n_i$
  iab <buffer> n1 $n_1$
  iab <buffer> n2 $n_2$
  iab <buffer> C1 $C_1$
  iab <buffer> C2 $C_2$
  iab <buffer> C3 $C_3$
  iab <buffer> Cn $C_n$
  iab <buffer> __ \\ \hspace*{1em}
  iab <buffer> Unew $U^{new}$
  iab <buffer> Nnew $N^{new}$
  iab <buffer> ... $\cdots$
  iab <buffer> ,... ,$\cdots$
  iab <buffer> QED $\blacksquare$
endfunction

"Toggle background
function! ToggleBg()
  if &background == 'dark'
    if g:colors_name == 'sienna' || g:colors_name == 'freya' || g:colors_name == 'moria'
      execute "Colo light"
    else
      set background=light
    endif
  else
    if g:colors_name == 'sienna' || g:colors_name == 'freya' || g:colors_name == 'moria'
      execute "Colo dark"
    else
      set background=dark
    endif
  endif
endfunc

" Limit a working area with a vertical line
function SetWorkingArea()
  if &filetype == 'tex' || &filetype == 'html' || &filetype == 'xml' || &filetype == 'json'
    set textwidth=100
  else
    set textwidth=80
  endif
  if exists('+colorcolumn')
    execute "set colorcolumn=" . join(range(&textwidth+1,335), ',')
  else
    set colorcolumn=+1
  endif
endfunction

" Set ColorColumn highlighting if absent.
" Need it for setting working area.
function OnColorScheme()
  if has("gui_running")
    let l:undefined = ""
  else
    let l:undefined = "-1"
  endif

  let l:color_column_fg = synIDattr(synIDtrans(hlID('ColorColumn')), 'fg')
  let l:color_column_bg = synIDattr(synIDtrans(hlID('ColorColumn')), 'bg')

  if l:color_column_fg == l:undefined
    let l:guibg = synIDattr(synIDtrans(hlID('LineNr')), 'bg')
    let l:guifg = synIDattr(synIDtrans(hlID('LineNr')), 'fg')

    if  (l:guifg == l:undefined) && (l:guibg == l:undefined)
      let l:guifg = synIDattr(synIDtrans(hlID('StatusLine')), 'fg')
      let l:guibg = synIDattr(synIDtrans(hlID('StatusLine')), 'bg')
    endif

    if (l:guifg != l:undefined) && (l:guibg != l:undefined)
      execute "hi ColorColumn ctermfg=White ctermbg=Black guifg=" . l:guifg . " guibg=" . l:guibg
    elseif l:guifg != l:undefined
      execute "hi ColorColumn ctermfg=White ctermbg=Black guifg=" . l:guifg
    elseif l:guibg != l:undefined
      execute "hi ColorColumn ctermfg=White ctermbg=Black guibg=" . l:guibg
    else
      execute "hi ColorColumn ctermfg=White ctermbg=Black" 
    endif
  endif
endfunction

" ========== TERMINAL ===============================================
if !has("gui_running")
  colorscheme zenburn
endif

" Disable Background Color Erase (BCE) so that color schemes work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
set t_ut=
endif

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

" Tmux will send xterm-style keys when its xterm-keys option is on.
if &term =~ '^screen'
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" Change cursor shape in different modes
if !has("gui_running") && $COLORTERM == "gnome-terminal" && has("autocmd")
  " For the Gnome-Terminal (version 2.26)
  au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  "au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"

  au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape block"
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape block"
  "au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape ibeam"

  au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile1/cursor_shape block"
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile1/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile1/cursor_shape block"
  "au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile1/cursor_shape ibeam"
elseif $TERM =~ "xterm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" ========== GUI ===============================================
if has('gui_running')
  set guioptions-=T  "Don't show toolbar
  set wak=no " Don't use the ALT-keys for menus.
  "set linespace=2  " Number of pixel lines to use between lines.

  colorscheme solarized
  set background=light

  nnoremap <F11> :call ToggleFullScreen()<CR>
  inoremap <F11> :call ToggleFullScreen()<CR>
endif

" ========== DEFINITIONS ===============================================
" Load indentation rules and plugins according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Enables syntax highlighting.
if has("syntax")
  syntax on
endif

" set current working directory to home directory
cd

syntax on

" Toggle background
ca tbg call ToggleBg()

"Remove all highlighting
nnoremap & :nohls<CR>

"Shows all occurences of the underlying word
nnoremap * :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>

"Remap ESC to jj
:imap jj <esc>

set shiftwidth=2 tabstop=2 expandtab smartindent cindent

"Line numbers
set nu
"To prevent problems while running on Linux scripts edited on Windows
set fileformat=unix
"Always get a status line
set laststatus=2
"let mapleader = ","
" make backspace work like most other apps
set backspace=2

"visually select all the text in between mathing elements
"noremap % v%


" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event
" handler (happens when dropping a file on gvim).
"if has("autocmd")
    "set viewoptions=cursor,folds
    "au BufWinLeave * mkview
    "au BufWinEnter * silent loadview
"endif

" Spell checking
"setlocal spell spelllang=en_us

"Switch between Vim window splits easily
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

"To add a blank line below or above and keep the cursor in place
nmap <S-Enter> m`O<Esc>``
nmap <C-Enter> m`o<Esc>``
"Insert new line in insert mode without breaking current line
imap <S-Enter> <Esc><S-Enter>li
imap <C-Enter> <Esc><C-Enter>li

"Delete current line in insert mode
imap <C-D> <Esc>ddi
"Substitute current line in insert mode
"imap <C-S> <Esc>S

"The above command will change the 'completeopt' option so that Vim's popup menu doesn't select the first completion item, but rather just inserts the longest common text of all matches; and the menu will come up even if there's only one match. (The longest setting is responsible for the former effect and the menuone is responsible for the latter.)
set completeopt=longest,menuone

"Automatically change the current directory
"Change to [C]urrent [W]orking [D]irectory
map <leader>cd :cd %:p:h<CR>
command CWD cd %:p:h

"If you still want to retain the visual selection after having pressed > or <,
"you can use these mappings \
vnoremap > >gv
vnoremap < <gv

" Remove the Windows ^M - when the encodings gets messed up
"noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Select last paste in visual mode
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

" ========== MOUSE =============================================
set mouse=a " Enable mouse usage (all modes).

" ========== RETAB, TRAILING WHITESPACES =============================================
"Automatically retab
autocmd BufWritePre  *.{cpp,h,c,rb,java,pl}  :retab
autocmd FileAppendPre *.{cpp,h,c,rb,java,pl}  :retab
autocmd FileWritePre  *.{cpp,h,c,rb,java,pl}  :retab
autocmd FilterWritePre  *.{cpp,h,c,rb,java,pl}  :retab

"Automatically remove trailing whitespaces
autocmd BufWritePre  *.{cpp,h,c,rb,java,pl}  call StripTrailingWhite()
autocmd FileAppendPre *.{cpp,h,c,rb,java,pl}  call StripTrailingWhite()
autocmd FileWritePre  *.{cpp,h,c,rb,java,pl}  call StripTrailingWhite()
autocmd FilterWritePre  *.{cpp,h,c,rb,java,pl}  call StripTrailingWhite()

map <C-s> :call StripTrailingWhite() \| retab \| w<CR>
map! <C-s> :call StripTrailingWhite() \| retab \| w<CR>
imap <C-s> <C-\><C-O><C-s>

" ========== MOVE, SEARCH & PATTERNS ===========================
set ignorecase  " ignore case when searching
set smartcase  " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch  " highlight search terms
set incsearch  " show search matches as you type

" ========== MOVE, SEARCH & PATTERNS ===========================
"set history=1000 " remember more commands and search history
"set undolevels=1000 " use many muchos levels of undo

" ========== BACKUP, SWAPS ===========================
" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif
"let my_backupdir=$HOME.'/.vim/backup'
""silent execute '!mkdir "'.my_backupdir.'"'
"silent execute '!rm "'.my_backupdir.'/*"'
"let &backupdir=my_backupdir.'//'"
"set directory=my_backupdir.'//'"

autocmd! ColorScheme * call OnColorScheme()

" ========== BUFFERS MANAGMENT ===========================
map <C-S-Right> :bnext<CR>
map <C-S-Left> :bprevious<CR>
imap <C-S-Right> <ESC>:bnext<CR>
imap <C-S-Left> <ESC>:bprevious<CR>

" ========== GROUPS ===========================
au! BufRead,BufNewFile *.tex set filetype=tex
augroup TeX
    autocmd!
    autocmd BufNewFile,BufRead *.tex call TexAbbs()
    autocmd BufNewFile,BufRead *.tex setlocal spell!
    autocmd BufNewFile,BufRead *.tex silent exe "cd " . g:main_tex_dir
    autocmd BufNewFile,BufRead *.tex call SetWorkingArea()
    au Filetype tex let b:AutoPairs = {"$": "$"}
augroup END

au! BufRead,BufNewFile *.json set filetype=json
augroup JSON
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END

au! BufRead,BufNewFile *.{txt,md} set filetype=general_txt
augroup GENERAL_TXT
    autocmd!
    autocmd FileType general_txt setlocal spell!
augroup END

au! BufRead,BufNewFile *.{yaml,yml} set filetype=yaml
augroup YAML
  autocmd!
  autocmd FileType yaml set foldmethod=indent
augroup END

augroup Perl
    autocmd!
    let perl_fold=1
    let perl_fold_blocks=1
    let perl_include_pod = 1

    function! PerlDoc()
      normal yy
      let l:this = @
      if match(l:this, '^ *\(use\|require\) ') >= 0
        exe ':new'
        exe ':resize'
        let l:this = substitute(l:this, '^ *\(use\|require\) *', "", "")
        let l:this = substitute(l:this, ";.*", "", "")
        let l:this = substitute(l:this, " .*", "", "")
        exe ':0r!perldoc -t ' . l:this
        exe ':0'
        return
      endif
      normal yiw
      exe ':new'
      exe ':resize'
      exe ':0r!perldoc -t -f ' . @
      exe ':0'
    endfunction

    "Display docs for built-in functions when cursor is on function name
    "or for modules when cursor is on 'use' or 'require' line.
    map <leader>pd :call PerlDoc()<CR>:set nomod<CR>:set filetype=man<CR>:echo "perldoc"<CR>
augroup END

" Limit a working area with a vertical line
autocmd BufNewFile,BufRead * call SetWorkingArea()

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
ca irb call Irb(0)
"open irb vertically
ca virb call Irb(1)

"----- eregex -----"
" For replacement, use :%S// (uppercase S) to use perl style regexp.
" default disable
let g:eregex_default_enable = 0
" custom search delimeters
let g:eregex_forward_delim = '/'
let g:eregex_backward_delim = '?'
" call eregex#toggle funtion to toggle the keymapping
nnoremap <leader>/ :call eregex#toggle()<CR>

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

"----- perl-nextmethod -----"
"]m jumps to the next perl subroutine start
"]M jumps to the next perl subroutine end
"[m jumps to the previous perl subroutine start
"[M jumps to the previous perl subroutine end

