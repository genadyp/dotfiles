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
  map <leader>ca{ va{ \| <leader>cc
  map <leader>c% v% \| <leader>cc
Bundle 'scrooloose/nerdtree'
  "tree explorer plugin for navigating the filesystem
  nmap <leader>e :NERDTreeToggle<CR>
"Bundle 'astashov/vim-ruby-debugger'
  "Vim plugin for debugging Ruby applications (using ruby-debug-ide gem)
  "for more information see help for vim-ruby-debug
  "let g:ruby_path = ':C:\ruby192\bin\ruby.exe -Ilib'
  "let g:ruby_debugger_progname = 'C:\Program Files\Vim\vim73\gvim.exe'
  "let g:ruby_debugger_builtin_sender = 0
Bundle 'acx0/Conque-Shell'
  "Bundle 'Conque-Shell'
  "Should be checked for new versions on http://www.vim.org/scuipts/script.php?script_id=2771
  "Run interactive commands inside a Vim buffer
Bundle 'vim-scripts/upAndDown'
   "upAndDown : Swapping a line with the line directly above or below
   "By default, use <S-Up> and <S-Down> to move line or block of lines.
"Bundle 'othree/eregex.vim'
   "Perl/Ruby style regexp notation for Vim'
"Bundle 'FavEx'
  "Favorite file and directory explorer
Bundle 'minibufexpl.vim'
  "Elegant buffer explorer
Bundle 'mru.vim'
  "Plugin to manage Most Recently Used (MRU) files
Bundle 'ZoomWin'
  "Zoom in/out  of windows (toggle between one window and multi-window)
Bundle 'beloglazov/vim-online-thesaurus'
  "vim-online-thesaurus : A Vim plugin for looking up words in an online thesaurus
  "http://www.vim.org/scripts/script.php?script_id=4588
  "https://github.com/beloglazov/vim-online-thesaurus
Bundle 'LanguageTool'
  "LanguageTool : Grammar checker for English, French, German (etc.) in Vim
  "http://www.vim.org/scripts/script.php?script_id=3223
  let g:languagetool_jar='/home/genadyp/Downloads/App/LanguageTool/LanguageTool-2.2/languagetool-commandline.jar'
  "map <leader>lt :LanguageToolCheck<CR>
  "map <leader>lc :LanguageToolClear<CR>
"Bundle 'terryma/vim-expand-region'
  "vim-expand-region : Incremental visual selection
  "http://www.vim.org/scripts/script.php?script_id=4499
  "https://github.com/terryma/vim-expand-region
"Bundle 'terryma/vim-multiple-cursors'
  "vim-multiple-cursors : True Sublime Text style multiple selections for Vim
  "https://github.com/terryma/vim-multiple-cursors
  "http://www.vim.org/scripts/script.php?script_id=4523
"Bundle 'scrooloose/syntastic'
  "Syntastic : Automatic syntax checking
  "https://github.com/scrooloose/syntastic
  "http://www.vim.org/scripts/script.php?script_id=2736
"Bundle 'easytags.vim'
  "easytags.vim : Automated tag file generation and syntax highlighting of tags in Vim
  "http://www.vim.org/scripts/script.php?script_id=3114
"Bundle 'sjl/gundo.vim'
  "Gundo : Visualize your undo tree.
  "http://www.vim.org/scripts/script.php?script_id=3304
  "http://sjl.bitbucket.org/gundo.vim/
  "https://github.com/sjl/gundo.vim/
"Bundle 'xolox/vim-notes'
  "notes.vim : Easy note taking in Vim
  "http://www.vim.org/scripts/script.php?script_id=3375
  "http://github.com/xolox/vim-notes
"Bundle 'bling/vim-airline'
  "vim-airline : lean & mean statusline that's light as air
  "http://www.vim.org/scripts/script.php?script_id=4661
  "https://github.com/bling/vim-airline
"Bundle 'Lokaltog/powerline'
  "vim-powerline : The ultimate vim statusline utility
  "http://www.vim.org/scripts/script.php?script_id=3881
  "https://github.com/Lokaltog/powerline
"Bundle 'DiffGoFile'
  "DiffGoFile : Jump to file from diff output
  "http://www.vim.org/scripts/script.php?script_id=1888
"Bundle 'arecarn/crunch'
  "Crunch : An easier way to perform calculations inside Vim
  "http://www.vim.org/scripts/script.php?script_id=4686
  "https://github.com/arecarn/crunch
"Bundle 'xolox/vim-misc'
  "vim-misc : Miscellaneous auto-load Vim scripts
  "http://www.vim.org/scripts/script.php?script_id=4597
  "https://github.com/xolox/vim-misc
"Bundle 'xolox/vim-easytags'
  "easytags.vim : Automated tag file generation and syntax highlighting of tags in V
  "depends on vim-misc
  "http://www.vim.org/scripts/script.php?script_id=3114
  "https://github.com/xolox/vim-easytags
"Bundle 'tsaleh/vim-align'
  "Align : Help folks to align text, eqns, declarations, tables, etc
  "https://github.com/tsaleh/vim-align
  "http://www.vim.org/scripts/script.php?script_id=294
Bundle 'suan/vim-instant-markdown'
  "instant-markdown.vim : Real-time Markdown previews from Vim!
  "https://github.com/suan/vim-instant-markdown
  "http://www.vim.org/scripts/script.php?script_id=3994
"Bundle 't9md/vim-quickhl'
  "quickhl.vim : Quickly highlight multiple word.
  "http://www.vim.org/scripts/script.php?script_id=3692
  "https://github.com/t9md/vim-quickhl
Bundle 'vim-scripts/TaskList.vim'
  "TaskList.vim : Eclipse like task list
  "http://www.vim.org/scripts/script.php?script_id=2607
  "https://github.com/vim-scripts/TaskList.vim
  " Map to view the task list.
  map <leader>tl <Plug>TaskList
  "The following keys are mapped to the results window:
  " q - Quit, and restore original cursor position.
  " e - Exit, and keep results window open note that
  " movements on the result window will no longer be
  " updated.
  " <cr> - Quit and place the cursor on the selected line.
  "
  " g:tlWindowPosition
  " This is specifies the position of the window to be opened. By
  " default it will open at on top. To overwrite use:
  let g:tlWindowPosition = 1
  " in your vimrc file, options are as follows:
  " 0 = Open on top
  " 1 = Open on the bottom
  "
  " g:tlTokenList
  " This is the list of tokens to search for default is
  " 'FIXME TODO XXX'. The results are groupped and displayed in the
  " order that they appear. to overwrite use:
  let g:tlTokenList = ['FIXME', 'TODO', 'XXX', 'NOTE']
  " in your vimrc file
  "
  " g:tlRememberPosition
  " If this is set to 1 then the script will try to get back to the
  " position where it last was closed. By default it will find the line
  " closest to the current cursor position.
  " to overwrite use:
  " let g:tlRememberPosition = 1
  " in your vimrc file

"---- Motion
Bundle 'tpope/vim-endwise'
  "endwise.vim: wisely add 'end' in ruby
  "https://github.com/tpope/vim-endwise
  "http://www.vim.org/scripts/script.php?script_id=2386
"Bundle 'tpope/vim-surround'
  "surround.vim: quoting/parenthesizing made simple
  "https://github.com/tpope/vim-surround
  "http://www.vim.org/scripts/script.php?script_id=1697
"Bundle 'AutoClose'
  "AutoClose : Inserts matching bracket, paren, brace or quote
  "http://www.vim.org/scripts/script.php?script_id=1849
Bundle 'jiangmiao/auto-pairs'
  "Auto Pairs : Insert or delete brackets, parens, quotes in pair
  "http://www.vim.org/scripts/script.php?script_id=3599
  "https://github.com/jiangmiao/auto-pairs
  "Toggle Autopairs
  let g:AutoPairsShortcutToggle = '<M-]>'
  "Fast Wrap
  "let g:AutoPairsShortcutFastWrap = '<M-)>'
  "Jump to next closed pair
  let g:AutoPairsShortcutJump = '<M-n>'
  map ) <M-n>
  "BackInsert
  "let g:AutoPairsShortcutBackInsert = '<M-C-b>'
  "function! AutoPairsHandler(char)
    "if !exists('g:AutoPairsShortcutToggle')
      "exec "normal a".a:char
    "else
      """let word_under_cursor = expand("<cword>")
      "let next_char = getline(".")[col(".")]
      ""echo next_char
      "if (next_char != "")
        "silent call AutoPairsToggle()
        "exec "normal i".a:char
        "silent call AutoPairsToggle()
        ""put='hello'
      ""else
        ""exec "normal i".a:char
      "endif
    "endif
  "endfunction

"Bundle 'amdt/vim-niji'
  "vim-niji : Yet another rainbow parentheses plugin.
  "http://www.vim.org/scripts/script.php?script_id=4580
  "https://github.com/amdt/vim-niji
"Bundle 'Yggdroot/indentLine'
  "indentLine.vim : An indent guides plugin displaying thin vertical lines.
  "http://www.vim.org/scripts/script.php?script_id=4354
  "https://github.com/Yggdroot/indentLine
"Bundle 'matze/vim-move'
  "move : vim-move moves single lines and selected text up and down
  "http://www.vim.org/scripts/script.php?script_id=4687
  "https://github.com/matze/vim-move
"Bundle 'kien/ctrlp.vim'
  "ctrlp.vim : Fuzzy file, buffer, mru, tag, ... finder with regexp support.
  "http://www.vim.org/scripts/script.php?script_id=3736
  "https://github.com/kien/ctrlp.vim
"Bundle 'tacahiroy/ctrlp-funky'
  "ctrlp-funky : Jumps to a function definition via ctrlp.vim interface
  "http://www.vim.org/scripts/script.php?script_id=4592
  "https://github.com/tacahiroy/ctrlp-funky
Bundle 'vim-scripts/textmanip.vim'
  "textmanip.vim : Maniplate(duplicate, move) selected text easily
  "https://github.com/vim-scripts/textmanip.vim
  "https://github.com/t9md/vim-textmanip
  "http://www.vim.org/scripts/script.php?script_id=3491
  xmap <C-j> <Plug>(textmanip-move-down-r)
  xmap <C-k> <Plug>(textmanip-move-up-r)
  xmap <C-h> <Plug>(textmanip-move-left)
  xmap <C-l> <Plug>(textmanip-move-right)
"Bundle 'goldfeld/vim-seek'
  "Seek makes navigating long lines effortless, acting like f but taking two characters.
  "Seek is a vim plugin that aims to be your go-to characterwise motion workhorse.
  "The motion seek, summoned with <s> by default.
  "https://github.com/goldfeld/vim-seek
Bundle 'justinmk/vim-sneak'
  "Sneak is a Vim plugin that enables you to move to any location specified by two characters.
  "It works across multiple lines; with operators (including repeat .); and in visual mode.
  "Move to the next or previous match via ; or ,. Move to the nth match by prefixing ; or , with a [count]
  "Sneak is invoked with s (sneak forward) or S (sneak backwards), followed by exactly two characters.
  "Sneak is invoked with operators via z (because s is taken by surround.vim).
  "  Press dzqt to delete from the cursor up to the next instance of "qt".
  "      Press . to repeat the dzqt operation.
  "  Press gUz\} to upper-case the text from the cursor until the next instance of the literal text \}
  "      Press . to repeat the gUz\} operation.
  "https://github.com/justinmk/vim-sneak
Bundle 'catalinciurea/perl-nextmethod'
  "perl-nextmethod : ]m, ]M, [m, [M next/previous perl method motions
  "http://www.vim.org/scripts/script.php?script_id=4697
  "https://github.com/catalinciurea/perl-nextmethod
"Bundle 'wesleyche/SrcExpl'
  "Source Explorer (SrcExpl) : the Source code Explorer which works like the context window of "Source Insight"
  "http://www.vim.org/scripts/script.php?script_id=2179
  "https://github.com/wesleyche/SrcExpl
Bundle 'luochen1990/select-and-search'
  "select text in v mode, then press n to search next one (N for prev one)
  "https://github.com/luochen1990/select-and-search
  "http://www.vim.org/scripts/script.php?script_id=4819
  let g:select_and_search_active = 1

"---- Syntax

"---- Syntax
Bundle 'Specky'
  "Functions to help make behavioral testing easy with ruby and rspec.
Bundle 'LaTeX-Box-Team/LaTeX-Box'
  "LaTeX Box : Lightweight Toolbox for LaTeX
  "http://www.vim.org/scripts/script.php?script_id=3109
  "https://github.com/LaTeX-Box-Team/LaTeX-Box
  "NOTE hardcoded for current TeX project
  let g:main_tex_dir =  '/home/genadyp/Documents/Thesis/Thesis'
  let b:main_tex_file = g:main_tex_dir . '/Thesis.tex'
  let b:main_dvi_file = g:main_tex_dir . '/Thesis.dvi'
  let g:LatexBox_latexmk_async = 1
  let g:LatexBox_latexmk_preview_continuously = 1
  let g:LatexBox_show_warnings = 0
  let g:LatexBox_output_type = "dvi"
  "Supports reverse search
  "http://vim.wikia.com/wiki/Vim_can_interact_with_xdvi
  "http://xdvi.sourceforge.net/inverse-search.html#vim
  "http://hermitte.free.fr/vim/ressources/vimfiles/ftplugin/tex/tex-tools_vim.html
  "NOTE gvim must be run with --servername vimtex
  let g:LatexBox_viewer = 'xdvi -editor "gvim --servername vimtex --remote +\%l \%f"'
  "Forward search
  map <leader>ld :silent execute '!xdvi -editor "gvim --servername 'v:servername' --remote-wait +\%l \%f" -sourceposition ' . line(".") . expand("%") . " "  b:main_dvi_file<CR>
Bundle 'elzr/vim-json'
  "A syntax highlighting file for JSON
  "https://github.com/elzr/vim-json
Bundle 'hallison/vim-markdown'
  "Markdown syntax highlight for Vim editor with snippets support
  "https://github.com/hallison/vim-markdown
  "http://www.vim.org/scripts/script.php?script_id=2882
Bundle 'danchoi/ri.vim'
  "browse ri documentation from Vim
  "https://github.com/danchoi/ri.vim
  "Usage:
  "  <leader>r opens the search/autocomplete window, and will use a horizontal split to display matching documentation
  "  <leader>R opens the search/autocomplete window, and will use a vertical split to display matching documentatoin
  "  NOTE clashs with Thesarus
  "  <leader>K opens the search/autocomplete window and prefills it with the keyword under the cursor
  "  K is automatically remapped to use ri.vim if the current buffer is a *.rb file
  map <leader>r :call ri#OpenSearchPrompt(0)<cr>  " horizontal split
  map <leader>rk :call ri#LookupNameUnderCursor()<cr> " keyword lookup
  "Example:
  "  To look for String::gsub type String#gsub
Bundle 'ri-viewer'
"Bundle 'vim-scripts/ri-viewer'
  "ri-viewer.vim looks up ruby document directories with a keyword such like class name or method.
  "https://github.com/vim-scripts/ri-viewer
  "http://www.vim.org/scripts/script.php?script_id=3621
  "Usage:
  "  <leader>ri to look for word under the cursor
  "  :Ri Object
  "  :Ri Object#help
  "  :Ri Object.help
  "  :RiCore
  "  :RiGem
  "  :RiHome
"Bundle 'Rubytest.vim'
  "Rubytest.vim : Run ruby tests in vim
  "http://www.vim.org/scripts/script.php?script_id=2612
  "https://github.com/janx/vim-rubytest"
"Bundle 'Rykka/riv.vim'
  "riv.vim : reStructuredText  in vim
  "https://github.com/Rykka/riv.vim
  "http://www.vim.org/scripts/script.php?script_id=4112
"Bundle 'dmcinnes/ruby_single_test'
  "Ruby Single Test : Runs a single Ruby test under the cursor
  "https://github.com/dmcinnes/ruby_single_test
  "http://www.vim.org/scripts/script.php?script_id=2869
"Bundle 'TeX-9'
  "TeX 9 : A semi-automatic LaTeX ftplugin with lots of firepower!
  "http://www.vim.org/scripts/script.php?script_id=3508
"Bundle 'bash-support.vim'
  "bash-support.vim : BASH IDE -- Write and run BASH-scripts using menus and hotkeys.
  "http://www.vim.org/scripts/script.php?script_id=365
"Bundle 'plasticboy/vim-markdown'
  "Markdown Vim Mode
  "(Cannot install with Vundle)
  "https://github.com/plasticboy/vim-markdown/
  "http://plasticboy.com/markdown-vim-mode/
"Bundle 'Keithbsmiley/investigate.vim'
  "A Vim plugin for looking up documentation
  "https://github.com/Keithbsmiley/investigate.vim/


"---- Version Control
"Bundle 'airblade/vim-gitgutter'
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
Bundle 'ColorSchemeMenuMaker'
  "ColorSchemeMenuMaker : Auto-generates menu containing your colorschemes
  "(keywords: color scheme menu)
  "http://www.vim.org/scripts/script.php?script_id=2004
Bundle 'Son-of-Obisidian'
  " Bundle 'vim-scripts/Son-of-Obisidian'
  "Son of Obisidian : Port of Visual Studio 2010 Son of obsidian color scheme
Bundle 'abra/obsidian2'
   "Obsidian2 Color scheme based on Notepad++ obsidian Color scheme
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
   "Molokai is a Vim port of the monokai theme for TextMate originally created by Wimer Hazenberg.
   "https://github.com/tomasr/molokai
Bundle 'sickill/vim-monokai'
   "https://github.com/sickill/vim-monokai
Bundle 'xoria256.vim'
   "xoria256.vim : Soft pastel gamma on dark background, same appearence in {,g}vim
   "http://www.vim.org/scripts/script.php?script_id=2140
Bundle 'vim-scripts/darkslategray.vim'
   "darkslategray.vim : Dark slate gray background, pastel colored text
   "http://www.vim.org/scripts/script.php?script_id=149
Bundle 'veloce/vim-aldmeris'
   "aldmeris : A colorscheme based on oblivion for gedit that support GVIM and 256 colors term
   "http://www.vim.org/scripts/script.php?script_id=3673
   "https://github.com/veloce/vim-aldmeris
Bundle 'moss'
   "moss : Dark color scheme for low light conditions
   "http://www.vim.org/scripts/script.php?script_id=2779
Bundle 'Briofita'
   "Briofita : a dark background GUI colorscheme
   "http://www.vim.org/scripts/script.php?script_id=4136
Bundle 'junegunn/seoul256.vim'
   "seoul256.vim : A low-contrast Vim color scheme based on Seoul Colors
   "http://www.vim.org/scripts/script.php?script_id=4605
   "https://github.com/junegunn/seoul256.vim
Bundle 'tango-morning.vim'
   "tango-morning.vim : Light Grey Tango color theme based on Morning
   "http://www.vim.org/scripts/script.php?script_id=2640
Bundle 'two2tango'
   "two2tango : Colorscheme based upon Tango palette
   "http://www.vim.org/scripts/script.php?script_id=1988
Bundle 'twilight'
   "twilight : A clone of Textmates twilight scheme
   "http://www.vim.org/scripts/script.php?script_id=1677
Bundle 'genadyp/atelier_colors'
   "fork of atelier-schemes for vim
Bundle 'donbass.vim'
   "donbass.vim : Finely tuned, 256 color, light-grey background colorscheme
   "http://www.vim.org/scripts/script.php?script_id=2730
Bundle 'jonathanfilip/vim-lucius'
   "Lucius : Light and dark color scheme for GUI and 256 color terminal.
   "https://github.com/jonathanfilip/vim-lucius
   "http://www.vim.org/scripts/script.php?script_id=2536
Bundle 'moria'
Bundle 'sienna'
Bundle 'freya'
Bundle 'chriskempson/base16-vim'
   "https://github.com/chriskempson/base16-vim
Bundle 'sonoma.vim'
   "sonoma.vim : An easy-breezy color theme that acts as a soothing balm for your eyes.
   "http://www.vim.org/scripts/script.php?script_id=4072
Bundle 'mayansmoke'
   "mayansmoke : Ergonomic light-background color scheme.
   "http://www.vim.org/scripts/script.php?script_id=3065
Bundle 'kayaalpg/lithochromatic-vim'
   "LithoChromatic Color Theme for Vim - A low contrast color theme.
   "https://github.com/kayaalpg/lithochromatic-vim
   "http://www.vim.org/scripts/script.php?script_id=4406
Bundle 'darkspectrum'
   "darkspectrum : a gvim color scheme based on the oblivion color scheme for gedit
   "http://www.vim.org/scripts/script.php?script_id=2215
Bundle 'Zenburn'
   "Zenburn : Low contrast colour scheme for low light conditions
   "http://www.vim.org/scripts/script.php?script_id=415
   "https://github.com/jnurmine/Zenburn
Bundle 'DesertedOceanBurnt'
   "DesertedOceanBurnt : A dull, low saturation version of desertedocean
   "http://www.vim.org/scripts/script.php?script_id=1407
Bundle 'neutron.vim'
   "neutron.vim : Light background colorscheme
   "http://www.vim.org/scripts/script.php?script_id=2964
Bundle 'watermark'
   "watermark : a low contrast Color Scheme
   "http://www.vim.org/scripts/script.php?script_id=1471
Bundle 'yellow'
   "yellow : A yellow-green color scheme
   "http://www.vim.org/scripts/script.php?script_id=1474
Bundle 'adobe.vim'
   "adobe.vim : Adobe theme, easy on eyes. Coloring philosophy inside
   "https://github.com/vim-scripts/adobe.vim
   "http://www.vim.org/scripts/script.php?script_id=1365
Bundle 'winter.vim'
   "winter.vim : light gray style
   "http://www.vim.org/scripts/script.php?script_id=2383
Bundle 'morhetz/gruvbox'
   "Retro groove color scheme for Vim
   "https://github.com/morhetz/gruvbox
Bundle 'vim-scripts/wombat256.vim'
   "Wombat for 256 color xterms
   "http://www.vim.org/scripts/script.php?script_id=2465
   "https://github.com/vim-scripts/wombat256.vim
Bundle 'vim-scripts/vilight.vim'
   "A more literal translation of Will Farrington's Twilight color theme
   "http://www.vim.org/scripts/script.php?script_id=2776
   "https://github.com/vim-scripts/vilight.vim
Bundle 'w0ng/vim-hybrid'
  "A dark colourscheme for Vim that combines the:
  "  colour palette from Tomorrow-Night.
  "  syntax group highlighting scheme from Jellybeans
  "  Vim code from Solarized
"Bundle 'genadyp/vim-tomorrow-theme'
  "TODO breaks solorized theme
Bundle 'zeis/vim-kolor'
Bundle 'cocopon/iceberg.vim'
Bundle '29decibel/codeschool-vim-theme'
Bundle 'vim-scripts/darktango.vim'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'reedes/vim-colors-pencil'


"---- To Install
"Bundle 'hotchpotch/perldoc-vim'
"Bundle 'JessicaKMcIntosh/perlhelp-vim'
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
  iab <buffer> F $\mathcal{F}$
  iab <buffer> Hs $\mathcal{H}_s$
  iab <buffer> newHs $\hat{\mathcal{H}_s}$
  iab <buffer> Fs $\mathcal{F}_s$
  iab <buffer> newFs $\hat{\mathcal{F}_s}$
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
  iab <buffer> N" $N^{"}$
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

"-- Custom definitions --"
"----------------------------------------------------------------------"


" set current working directory to home directory
cd

syntax on

"Toggle background
ca tbg call ToggleBg()

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

"--- Search
"set ignorecase " ignore case when searching
"set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise
"set hlsearch " highlight search terms
"set incsearch " show search matches as you type

"--- History
"set history=1000 " remember more commands and search history
"set undolevels=1000 " use many muchos levels of undo

"Remove all highlighting
nnoremap & :nohls<CR>

"Shows all occurences of the underlying word
nnoremap * :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>

"Remap ESC to jj
:imap jj <esc>

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
" make backspace work like most other apps
set backspace=2

"visually select all the text in between mathing elements
"noremap % v%

"backup, swaps
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

"Switch between Vim window splits easily
"nmap <silent> <C-Up> :wincmd k<CR>
"nmap <silent> <C-Down> :wincmd j<CR>
"nmap <silent> <C-Left> :wincmd h<CR>
"nmap <silent> <C-Right> :wincmd l<CR>

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
"set autochdir
"Change to [C]urrent [W]orking [D]irectory
map <leader>cd :cd %:p:h<CR>
command CWD cd %:p:h

"--- buffers managment ---"
map <C-S-Right> :bnext<CR>
map <C-S-Left> :bprevious<CR>
imap <C-S-Right> <ESC>:bnext<CR>
imap <C-S-Left> <ESC>:bprevious<CR>

" Remove the Windows ^M - when the encodings gets messed up
"noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


au! BufRead,BufNewFile *.tex set filetype=tex
augroup TeX
    autocmd!
    autocmd BufNewFile,BufRead *.tex call TexAbbs()
    autocmd BufNewFile,BufRead *.tex setlocal spell!
    autocmd BufNewFile,BufRead *.tex silent exe "cd " . g:main_tex_dir
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

augroup Text
    autocmd!
    autocmd BufNewFile,BufRead *.{txt,md} setlocal spell!
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

"-- CVIM specific --"
"----------------------------------------------------------------------"
if has('gui_running')
  colorscheme solarized
  set background=light
  "Don't show toolbar
  set guioptions-=T
endif

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


