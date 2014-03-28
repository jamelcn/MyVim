
" Maintainer:	Jamel Chen
" Last change:	2012-09-15
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" ----------------------Vim's preprocessing settings----------------------
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" ----------------------Vim's preprocessing settings----------------------

" ----------------------Vundle for vim's plugin management----------------
" Bundle Start
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible	" be iMproved
filetype off 		" required!

if has("win32")
	set rtp+=~/vimfiles/bundle/vundle/
	call vundle#rc('~/vimfiles/bundle/')
else
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
endif
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" vim-scripts repos
"Bundle 'snipMate'
"Bundle 'AutoComplPop'
Bundle 'Shougo/neocomplete.vim'
Bundle 'Shougo/neosnippet'
Bundle 'UltiSnips'
Bundle 'The-NERD-tree'
Bundle 'Auto-Pairs'
Bundle 'The-NERD-Commenter'
"该插件与lua.vim冲突
"Bundle 'xolox/vim-session'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'
Bundle 'ack.vim'
Bundle 'Align'
"Bundle 'c.vim'
Bundle 'vim-scripts/Color-Sampler-Pack'
Bundle 'Color-Scheme-Explorer'
"a little script to highlight several words in different colors simultaneously 
Bundle 'Mark'
"extended % matching for HTML, LaTeX, and many other languages
Bundle 'matchit.zip'
"Plugin to manage Most Recently Used (MRU) files
Bundle 'mru.vim'
"Better Rainbow Parentheses, if not usable, use 'Rainbow-Parenthesis', the old one
"Bundle 'rainbow_parentheses.vim'
"Delete/change/add parentheses/quotes/XML-tags/much more with ease
Bundle 'surround.vim'	
"Browse plain text easily(show the title tag and syntax highlight)
Bundle 'TxtBrowser'
"Personal wiki for vim
Bundle 'vimwiki'
"vim plugins for HTML and CSS hi-speed coding.
""Bundle 'ZenCoding.vim'
Bundle 'Emmet.vim'
"Run interactive commands inside a Vim buffer
"Bundle 'Conque-Shell'
"Echo the function declaration in the command line for C/C++.
Bundle 'echofunc.vim'
"Grep search tools integration with Vim
"Bundle 'grep.vim'
"Use the power of vim to rename groups of files
Bundle 'renamer.vim'
"Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
Bundle 'taglist.vim'
"Maintains a history of previous yanks, changes and deletes
Bundle 'YankRing.vim'
"Improved integration between Vim and its environment (fullscreen, open URL, background command execution)
"Bundle 'xolox/vim-shell'
"L9 Libray for fuzzyfinder
Bundle 'L9'
"buffer/file/command/tag/etc explorer with fuzzy matching
Bundle 'FuzzyFinder'
"Modified libstdc++ headers for use with ctags
Bundle 'tags-for-std-cpp-STL-streams-...'
"C/C++ omni-completion with ctags database (conflicts with clang-complete)
"Bundle 'OmniCppComplete'
"Cocoa for IOS development
Bundle 'cocoa.vim'
"clang complete for c/c++/objc/objcpp
Bundle 'clang-complete'
"Bundle 'SuperTab-continued.'
Bundle 'Match-Bracket-for-Objective-C'
Bundle 'a.vim'
"Bundle 'luainspect.vim'
Bundle 'vim-misc'
"Bundle 'vim-multiple-cursors'
"Bundle 'lua.vim'
"Bundle 'lua-support'
"Bundle 'close-duplicate-tabs'
"Bundle 'Word-Fuzzy-Completion'
Bundle 'EasyMotion'
Bundle 'vim-startify'
Bundle 'seoul256.vim'
Bundle 'tango-morning.vim'
Bundle 'vim-signature'
Bundle 'jellybeans.vim'
Bundle 'indentLine.vim'
Bundle 'nerdtree-execute'
Bundle 'unite.vim'
"Bundle 'sexy_scroller.vim'
"Bundle 'GoldenView.Vim'
"Bundle 'zhaocai/GoldenView.Vim'
Bundle 'forest'
Bundle 'AssistEnclose.vim'
Bundle 'accelerated-jk'
Bundle 'ctrlp.vim'
Bundle 'bandit.vim'
Bundle 'gf-ext'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'ag.vim'
Bundle 'Tabular'
Bundle 'Python-mode-klen'
Bundle 'vimroom.vim'
Bundle 'repeat.vim'
Bundle 'vcscommand.vim'

filetype plugin indent on " required!
" Bundle End
" ----------------------Vundle for vim's plugin management----------------

" ---------------------------Self-customed plugins--------------------------
" self customed vim plugins -- by Jamel Chen
set rtp+='$HOME/.vim/bundle/customed/auto-highlight/'
" ---------------------------Self-customed plugins--------------------------

" ------------------------Mac settings------------------------
" Settings for mac
if has("gui_macvim")
	set macmeta
	se guifont=Menlo\ Regular\ for\ Powerline:h11
	let Powerline_symbols='fancy'
endif
" ------------------------Mac settings------------------------

" ------------------------Win32 settings------------------------
if has("win32")
	"I have no idea to deal with the $HOME in win7's Gvim
	"and the $HOME in MSYS's Gvim,so I add some commands here:
	"set Environment variable for MSYS'HOME Directory
	let $MYHOME="D:/MSYS/home/G460AL380/"
	let $DESKTOP="C:/Documents and Settings/G460AL380/desktop/"
	let $HTS="D:/soft/WEB_DEVELOPMENT/xampp/htdocs/web_code2/"
	let $easyui="E:/StudyMaterials/Javascript/jquery/jquery-easyui-1.2.1/jquery-easyui-1.2.1"
	"cd $MYHOME

	" Grep Settings For Win32,Maybe not necessary at present
	"let Grep_Path='c:\Program Files\GnuWin32\bin\grep.exe'
	"let Fgrep_Path='c:\Program Files\GnuWin32\bin\fgrep.exe'
	"let Egrep_Path='c:\Program Files\GnuWin32\bin\egrep.exe'
	"let Agrep_Path='c:\Program Files\GnuWin32\bin\Agrep.exe'
	"let Grep_Find_Path='c:\Program Files\GnuWin32\bin\find.exe'
	"let Grep_Xargs_Path='c:\Program Files\GnuWin32\bin\xargs.exe'
	"let Grep_Default_Filelist='*.[chS]'
	
	" Adjusting alpha degree by using vimtweak.dll
	"let g:alphaDeg = 240
	"function IncAlpha()
		"let g:alphaDeg+=10
		"call libcallnr("vimtweak.dll", "SetAlpha", g:alphaDeg)
	"endfunction
	"nnoremap <F12> :call IncAlpha()<cr>
	"au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", g:alphaDeg)

" Put gvim in full screen on windows by using key <F11>
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll","ToggleFullScreen",0)<CR>

	" cocos2d-x settings
	" The "$COCOS2d" is windows's %COCOS2D% environment variable
	set path+=$COCOS2D/cocos2dx,$COCOS2D/cocos2dx/include,$COCOS2D/cocos2dx/kazmath/include,$COCOS2D/cocos2dx/platform/win32,$COCOS2D/cocos2dx/platform/third_party/win32,$COCOS2D/cocos2dx/platform/third_party/win32/OGLES,$COCOS2D/external,$COCOS2D/CocosDenshion/include

	"au GUIEnter * MRU
endif
" ------------------------Win32 settings------------------------


" ------------------------Internal Behaviors------------------------

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

set nobackup
set history=50		" keep 50 lines of command line history
set incsearch		" do incremental searching
set ignorecase		" ignore case when searching for string
set wrapscan		" Do not wrap scan the result when searching for a pattern
set backspace=indent,eol,start	" allow backspacing over everything in insert mode

"se autochdir "×??ˉ?D??????μ?μ±?°???t?ù?ú????
" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a
" Settings for visualbell instead of annoying beep :(
set visualbell
"set so=12	" Make the cursor always stay near the mid of screen, its value depends on your monitor

" Settings for mapleader
let mapleader = ","

" Alt-Space is System menu
if has("gui")
	noremap <m-space> :simalt ~<cr>
	inoremap <m-space> <c-o>:simalt ~<cr>
	cnoremap <m-space> <c-c>:simalt ~<cr>
endif

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

"nnoremap { :call search("^[ 	]*$", "b")<cr>
"nnoremap } :call search("^[ 	]*$")<cr>
nnoremap <silent> { :silent call MovePrevPara()<cr>
nnoremap <silent> } :silent call MoveNextPara()<cr>
function  MoveNextPara()
	call search("^[ 	]*$")
	while foldclosed(line('.')) != -1
		call search("^[ 	]*$")
	endwhile
endfunction
function MovePrevPara()
	call search("^[  	]*$", "b")
	while	foldclosed(line('.')) != -1
		call search("^[ 	]*$", "b")
	endwhile
endfunction

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction
" ------------------------Internal Behaviors------------------------

" ------------------------External Behaviors------------------------
command CDC cd %:p:h
command LCDC lcd %:p:h
" Chdir to file's path
function CD()
	set acd
	set noacd
endfunction
" Current file's path
command CD call CD()
let filePath = substitute(getreg('%'), "\\(\/\\?\.\\?\\w\\+\\)\\(\.\\w\\+\\)$", "", "")
" ------------------------External Behaviors------------------------

" ------------------------All Appearances------------------------
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" when press tab for completion, show candicate completions
set wildignorecase	" when complete words in ex-mode, please ignorecase
" Set Line number
set nu!
" Remove the toolbar 
set guioptions-=T
"Remove the Menu
set guioptions-=m
"Remove the left ScrollBar
set guioptions-=L
if has("win32")
"Remove the right ScrollBar
set guioptions-=r
endif
"Remove the gui tabs
set guioptions-=e
"Set indent length
set sw=4 sts=4 ts=4
set cul
set lines=40

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
set t_Co=256

" Set Font to Ubuntu Consolas Monospace
set guifont=Consolas:h10:cANSI
" Set Font to Ubuntu_Mono
"set guifont=Ubuntu_Mono:h12:cANSI

" -----------Candidate colorschemes-----------
" Light ones
if has("gui_running")
""colorscheme autumn
""colorscheme autumn2
""colorscheme autumnleaf
""colorscheme default
colorscheme eclipse
""colorscheme fruit
""colorscheme nuvola
""colorscheme silent
""colorscheme tango-morning
"colorscheme seoul256-light

" Dark ones
""colorscheme camo
""colorscheme anotherdark
""colorscheme candycode
""colorscheme evening
""colorscheme freya
""colorscheme golden
""colorscheme herald
""colorscheme jellybeans
""colorscheme kelly
""colorscheme molokai
"colorscheme moria
""colorscheme mustang
""colorscheme wombat
""colorscheme xoria256
""colorscheme zenburn
""colorscheme desert
colorscheme darkspectrum
"colorscheme monokai
"colorscheme seoul256
endif

if ! has("gui_running")
""colorscheme default
""colorscheme autumn
""colorscheme autumn2
""colorscheme autumnleaf
""colorscheme eclipse
""colorscheme fruit
""colorscheme nuvola
""colorscheme silent
""colorscheme tango-morning

" Dark ones
""colorscheme camo
""colorscheme anotherdark
""colorscheme candycode
""colorscheme evening
""colorscheme freya
""colorscheme golden
""colorscheme herald
colorscheme jellybeans
""colorscheme kelly
""colorscheme molokai
""colorscheme moria
""colorscheme mustang
""colorscheme wombat
""colorscheme xoria256
"colorscheme zenburn
""colorscheme desert
colorscheme gentooish

"Setting cursor color in non gui terminal
hi cursor guibg=#ff00000

endif
" -----------Candidate colorschemes-----------

set fileencodings=utf-8,gbk,gb18030,utf-16,big5
"se guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
se guifont=Bitstream_Vera_Sans_Mono_for_Po:h10:cANSI
set guifont=Monaco:h9
se guifont=Lucida_Console:h11:cANSI
"se guifont=Consolas_for_Powerline_FixedD:h10:cANSI
"set guifont=Consolas:h10:cANSI
if has("gui_macvim")
	set guifont=Monaco:h10:cANSI
elseif has("win32")
	set guifont=CosmicSansNeueMono:h12:cANSI
else
	set guifont=Ubuntu_Mono:h12:cANSI
	"set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
	se guifont=Ubuntu\ Mono\ 12
	set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
end

" Settings for js fold
"let javaScript_fold=1

" Settings for indent folding
au FileType c,c++,java,php,python,javascript,css,sh set foldmethod=indent foldcolumn=1
set nofoldenable

function ConsoleEditMode()
	set autoindent
	set sw=4 sts=4 
	set lines=8 columns=170
	winpos 0 600
endfunction
command CEMode call ConsoleEditMode()

au FileType qf call AdjustWindowHeight(3, 5)
function! AdjustWindowHeight(minheight, maxheight)
	  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
  endfunction
" ------------------------All Appearances------------------------


" ------------------------Key Mappings------------------------
"Set defautl Scroll lines to 3 lines
nnoremap <c-e> <c-e><c-e><c-e>
nnoremap <c-y> <c-y><c-y><c-y>

"Set <space> key to scroll half window in normal mode
nnoremap <space> <c-d>
nnoremap <BS> <c-u>

" Set Shift-<方向键> 向某方向(HJKL)移动窗口
noremap <m-h> <c-w>h
noremap <m-j> <c-w>j
noremap <m-k> <c-w>k
noremap <m-l> <c-w>l

" Set Alt-<方向键> 向某方向(HJKL)移动窗口
noremap <s-m-h> <c-w><
noremap <s-m-j> <c-w>+
noremap <s-m-k> <c-w>-
noremap <s-m-l> <c-w>>

" Set shortcuts to set filetype more easily
""noremap <m-0> <Esc>:set filetype=help<cr>
""noremap <m-1> <Esc>:set filetype=html<cr>
""noremap <m-2> <Esc>:set filetype=php<cr>
""noremap <m-3> <Esc>:set filetype=javascript<cr>
""noremap <m-4> <Esc>:set filetype=css<cr>

"Set tab navigation key
"nnoremap <c-n> gt
"nnoremap <c-p> gT
cabbrev te tabe

nmap <F2> :NERDTree %<CR>

" USE <C-B> as <HOME> <C-E> as <END> in insert mode
imap <C-B> <C-O>^
imap <C-E> <END>

" USE <c-j> to spilt html tags or parenthesis by blank lines
inoremap <c-j> <cr><cr><Esc>kS

" USE <C-L> as <Del> in insert mode
imap <C-L> <Del>
" USE <C-K> to kill the characters after the cursor in insert mode
imap <C-K> <esc>lDa

" Map j,k to gj, gk for comfortable navigation
nnoremap j gj
nnoremap k gk
" using accelerated-jk to accelerate j and k moving
nmap j <Plug>(accelerated_jk_gj_position)
nmap k <Plug>(accelerated_jk_gk_position)


"USE <F6> <F7> For quickfix's "cn" and "cp"
nnoremap <F7> :cp<cr>
nnoremap <F8> :cn<cr>

"USE <leader>fx to format html document
map <leader>fx :1,%s/>\s*</>\r</gg<CR>gg=G
" USE <F4> For Unite.vim
nnoremap <F4> :Unite 
nnoremap <F6> :CtrlP

" ------------------------Autocommands------------------------
" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
  " For all txt files settings
  au BufEnter *.txt setlocal ft=txt

  " map <F9> to write and open current html files
  au FileType html nnoremap <F9> :Open %<cr>
  " map <C-F9> to write and open current html files
  au FileType html nnoremap <C-F9> :w \| Open %<cr>

  " syntax for jquery 
  "au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
  au BufRead,BufNewFile *.js set ft=javascript syntax=jquery

  " syntax for json
  au! BufRead,BufNewFile *.json set filetype=json 
  augroup json_autocmd 
	  autocmd! 
	  autocmd FileType json set autoindent 
	  autocmd FileType json set formatoptions=tcq2l 
	  autocmd FileType json set textwidth=78 shiftwidth=2 
	  autocmd FileType json set softtabstop=2 tabstop=8 
	  autocmd FileType json set expandtab 
	  autocmd FileType json set foldmethod=syntax 
  augroup END 

  autocmd FileType c set cindent shiftwidth=4
  autocmd FileType c set softtabstop=4

  autocmd FileType cpp set cindent shiftwidth=4
  autocmd FileType cpp set softtabstop=4

  autocmd Filetype lua nnoremap <F9> :!lua %<cr>


" For all PHP files set colorscheme 
 au Filetype php set cindent shiftwidth=4 softtabstop=4

 " For all Python files set indent
 au Filetype python set cindent shiftwidth=4 softtabstop=4
 au Filetype python nnoremap <F9> :new<cr>:r !python #<cr>

 " Set .m file as objective-c file instead of matlab file by default
 let filetype_m='objc'

 " For all objective-c fils set dictionary
 au FileType objc set dictionary=~/.vim/bundle/customed/objective-C/ios.tag
 au FileType objcpp set dictionary=~/.vim/bundle/customed/objective-C/ios.tag
 au FileType objc UltiSnipsAddFiletypes objc
 au FileType objcpp UltiSnipsAddFiletypes objc
 "map for objc file
 au FileType objc inoremap <F4> <esc>:UltiSnipsAddFiletypes<space>objc<cr>a
 " set right bracket match start bracket(only available if equator exists)
 imap ]] <esc>vF=f[s]%i
 
 

 " For all vimwiki files set colorscheme
 "au Filetype vimwiki colorscheme tango-morning

" Settings for zencoding
"let g:user_zen_leader_key = '<c-e>'

  augroup END
else

  set autoindent		" always set autoindenting on

endif 
" ------------------------Autocommands------------------------

" --------------------External Plugins Settings----------------------

if has("gui_macvim")
	let g:Powerline_symbols = 'fancy'
elseif has("win32")
	let g:Powerline_symbols = 'fancy'
endif

set encoding=utf-8
set langmenu=zh_CN.utf-8
if has("win32")
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language message zh_CN.utf-8
set fileencodings=utf-8,GB2312,cp936,gb18030,big5,euc-jp,euc-kr,latin1
let g:airline_powerline_fonts=1
let g:airline_theme="zenburn"
let g:airline_theme="kalisi"
set laststatus=2

" Settings for Autopairs
let g:AutoPairsFlyMode=1

" Settings for yankring
let g:yankring_replace_n_nkey = '<M-y>'
let g:yankring_replace_n_pkey = '<M-Y>'

if has("win32")
	" Settings for php manual
	set runtimepath+=$HOME/vimfiles/phpmanual
	autocmd BufNewFile,Bufread *.module,*.inc,*.php set keywordprg="help"
	" Settings for php function completion
	au FileType php setlocal dict+=$VIM/vim73/php_funclist.txt complete+=k

	"WinManager Settings
	let g:winManagerWindowLayout='FileExplorer,TagList'
	let g:persistentBehaviour=0		"when only explorer windows left, quit..
	"nmap wm :WMToggle<cr>

	" Settings for cygwin
	"set shell=D:/MyPrograms/cygwin/bin/bash
	"set shellcmdflag=--login\ -c
	"set shellxquote=\"
endif

"Taglist Settings
let Tlist_Use_Right_Window=1	"Make Tlist shown on the right window
let Tlist_Show_One_File=0	"让taglist可以同时展示多个文件的函数列表
let Tlist_Exit_OnlyWindow=1 	"当taglist是最后一个分割窗口时，自动推出vim
let Tlist_WinWidth=28
if has("win32")
	let Tlist_Ctags_Cmd = 'C:\Windows\System32\ctags.exe'
endif

"Settings for C++ STL tags references
set tags+=~/.vim/bundle/tags-for-std-cpp-STL-streams-.../tags

"Grep Settings 
nnoremap <silent> <F3> :Ag<cr>

"Cscope Settings
set cscopequickfix=s-,c-,d-,i-,t-,e- "让quickfix窗口来显示cscope结果
nmap <C-]>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-]>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-]>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>a :cs add 
nmap <f3> :Ag <C-R>=expand("<cword>")<CR><CR>
au FileType cpp cs add ~/workspace/com/cc/client/cscope.out ~/workspace/com/cc/client
au FileType cpp cs add ~/Developer/cocos2d-x/cocos2d-x-2.2.0/cscope.out ~/Developer/cocos2d-x/cocos2d-x-2.2.0

" Settings for RainbowParentheses 
" :RainbowParenthesesToggle       " Toggle it on/off
" :RainbowParenthesesLoadRound    " (), the default when toggling
" :RainbowParenthesesLoadSquare   " []
" :RainbowParenthesesLoadBraces   " {}
" :RainbowParenthesesLoadChevrons " <>
"au VimEnter * RainbowParenthesesToggle
"au syntax * RainbowParenthesesLoadRound
"au syntax * RainbowParenthesesLoadSquare
"au syntax * RainbowParenthesesLoadBraces
"au syntax * RainbowParenthesesLoadChevrons

" Settings for easy tag
"     :let g:easytags_on_cursorhold = 0
"     :let g:easytags_auto_update = 0

" Settings for clang-complete
let g:clang_complete_copen=0
"let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=0
let g:clang_complete_auto = 1
let g:clang_snippets_engine='clang_complete'

if has("win32")
"let g:clang_exec="D:/MyPrograms/cygwin/bin/clang.exe"
"let g:clang_library_path='D:Software/DevelopmentLibrary/clang+llvm-3.2-x86-mingw32-EXPERIMENTAL/lib'
endif

" Settings for mac
if has("gui_macvim")
	au FileType objc let g:clang_user_options='clang -v -triple i386-apple-macosx10.8.1 -resource-dir /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/4.2 -x objective-c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.1.sdk -D __IPHONE_OS_VERSION_MIN_REQUIRED=40300 -F/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/System/Library/Frameworks/ '
	au FileType objc let g:clang_periodic_quickfix=0

	au FileType c let g:clang_user_options='clang -cc1 -triple i386-apple-macosx10.8.1 -target-cpu core2 -target-linker-version 128.2 -resource-dir /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/4.2 -fblocks -x c '
	au FileType cpp let g:clang_user_options='clang -cc1 -triple i386-apple-macosx10.8.1 -target-cpu core2 -target-linker-version 128.2 -resource-dir /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/4.2 -fblocks -x c++ '
	au FileType cpp let g:clang_periodic_quickfix=0
endif

"set conceallevel=2
"set concealcursor=vin
"let g:clang_snippets=1
"let g:clang_conceal_snippets=1
"" The single one that works with clang_complete
"let g:clang_snippets_engine='clang_complete'

"" Complete options (disable preview scratch window, longest removed to aways
"" show menu)
"set completeopt=menu,menuone
set pumheight=10             " so the complete menu doesn't get too big
set completeopt=menu,longest " menu, menuone, longest and preview
"let g:SuperTabDefaultCompletionType='context'
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
let g:clang_snippets=1       " use a snippet engine for placeholders
let g:clang_snippets_engine='ultisnips'
"let g:clang_auto_select=2    " automatically select and insert the first match

" settings for UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Settings for vim-startify
let g:startify_custom_header = [
                \ '   __      ___            ______ ____   ',
                \ '   \ \    / (_)           |____  |___ \ ',
                \ '    \ \  / / _ _ __ ___       / /  __) |',
                \ '     \ \/ / | | ''_ ` _ \     / /  |__ <',
                \ '      \  /  | | | | | | |   / /   ___) |',
                \ '       \/   |_|_| |_| |_|  /_(_) |____/ ',
                \ '',
                \ '',
                \ ]

" settings fro indentLine
let g:indentLine_char = "|"

" Settings for unite.vim
let g:unite_source_file_rec_async_comman="ag"
"au FileType unite AcpDisable
"au BufEnter * AcpEnable
nnoremap <Leader>ut :Unite tab<cr>
nnoremap <Leader>uf :Unite file<cr>
nnoremap <Leader>um :Unite file_mru<cr>
nnoremap <Leader>ub :Unite buffer<cr>
nnoremap <Leader>ul :CtrlPFunky<cr>

" Settings for gf-ext
call gf_ext#add_handler('\.jpg$', "!xdg-open")
call gf_ext#add_handler('\.png$', "!xdg-open")

" Settings for neocomplete
let g:neocomplete#enable_at_startup = 1

" -------------------Settings for Vimwiki-------------------
" mappings for Vimwiki
au FileType vimwiki map <Leader>wq <Plug>VimwikiUISelect
au FileType vimwiki map <Leader>ws <Plug>VimwikiSplitLink
au FileType vimwiki map <Leader>wv <Plug>VimwikiVSplitLink
au FileType vimwiki map <Leader>we <Plug>VimwikiTabnewLink
au FileType vimwiki map <Leader>wx <Plug>VimwikiToggleListItem
au FileType vimwiki nmap <Leader>wta :VimwikiTable 1 2<cr>
au FileType vimwiki imap <Leader>wta <Esc>:VimwikiTable 1 2<cr>jla
au FileType vimwiki cnoremap VT VimwikiTable 

if has("win32")
	" Settings for Vimwiki
	let g:vimwiki_list = [{'path': 'E:/vimwiki/LinuxNotes/',
				\ 'path_html': 'E:/vimwiki/LinuxNotes/LinuxNotes_html/',
				\ 'template_path': 'E:/vimwiki/templates/',
				\ 'template_default': "DeepBlue",
				\ 'template_ext': '.html',
				\ 'diary_link_count': 5},
				\ {'path': 'E:/vimwiki/ProgrammingNotes/'}]
	"\ 'html_footer' : 'E:/vimwiki/templates/footer.tpl',
	"\ 'css_name': 'E:/vimwiki/templates/style.css',
endif

" 对中文用户来说，我们并不怎么需要驼峰英文成为维基词条
let g:vimwiki_camel_case = 0

" 标记为完成的 checklist 项目会有特别的颜色
let g:vimwiki_hl_cb_checked = 1
 
" 我的 vim 是没有菜单的，加一个 vimwiki 菜单项也没有意义
let g:vimwiki_menu = ''
 
" 是否开启按语法折叠  会让文件比较慢
let g:vimwiki_folding = 0
 
" 是否在计算字串长度时用特别考虑中文字符
let g:vimwiki_CJK_length = 1

"g:vimwiki_valid_html_tags 值可以指定允许写在 wiki 中的HTML标签。 g:vimwiki_valid_html_tags 的默认值是 'b,i,s,u,sub,sup,kbd,br,hr'
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1,pre,p,blockquote'

"g:vimwiki_valid_char_entity 值可以指定允许写在 wiki 中的字符实体。 
"这个功能是我自己在 $HOME/.vim/autoload/vimwiki/html.vim 中的function
"s:safe_html(line)函数处添加的，我增加了变量char_entity，同时修改了一下对line
"进行处理的第一个substitute函数的调用以增加对 & 符号后面的字符串的判断。

"对g:vimwiki_valid_char_entity的赋值方式：去掉字符实体的第一个字符'&'和
"最后一个字符';' ,然后可以以逗号为分隔符加入多个字符实体。
let g:vimwiki_valid_char_entity='nbsp,lt,gt,reg,emsp,thinsp'
"以上为加入nbsp(空格）和小于、大于、注册商标字符

au BufRead,BufNewFile *.wiki setlocal shiftwidth=4 softtabstop=4

" ------------------------Settings for Vimwiki------------------------

" ------------------------Gloal Declaration------------------------
" some useful variable definition (maybe can used for regex search)
let cdigit='\v一|二|三|四|五|六|七|八|九|十|零|〇|百|千|万|亿|佰|仟|壹|贰|叁|肆|伍|陆|柒|捌|玖|拾'
let corder='\v第(一|二|三|四|五|六|七|八|九|十|零|〇|百|千|万|亿|佰|仟|壹|贰|叁|肆|伍|陆|柒|捌|玖|拾)[章节页张頁]'
let nextpattern='\v(<next>|<more>|<suivant>)|(下|后)一?(页|张|章|篇|頁)|次のページ|次へ'
let prevpattern='\v(<prev>|<previous>|<précédent>)|(上|前)一?(页|张|章|篇|頁)|前のページ|前へ'
let wikitextpattern='^\(\s*[-*(=]\)\@!'
let linkhref="<link.*href.*=.*[^\"']*['\"]\\zs[^\"']*\\ze['\"]"
let scriptsrc="<script.*src.*=.*[^\"']*['\"]\\zs[^\"']*\\ze['\"]"
let imgsrc="<img.*src[^=]*=\s*['\"]\\zs[^\"']*\\ze['\"]"

" searching patterns for javascript
" 用于提供防止数组元素未定义的预防性代码
let defUnd='\(\w*\) \(\w\+\)\(\[.*]\)\(\[[''"]\w\+[''"]]\)'
" 命令： :s/<c-r>=defUnd/var \1  = \2\3\4 ? \2\3 : '';
" ------------------------Gloal Declaration------------------------

" 自定义命令
function RunDebugLionGame()
	exe '!cd /D E:/Project3/code/Lion/Release && LionGame.win32.exe'
endfunction
au FileType lua nnoremap <c-F9> :call RunDebugLionGame()<cr>

"" neocomplete {
    "" Use neocomplete.
    "let g:neocomplete#enable_at_startup = 1
    "" Use smartcase.
    "let g:neocomplete#enable_smart_case = 1
    "" Set minimum syntax keyword length.
    "let g:neocomplete#sources#syntax#min_keyword_length = 3
    "let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

    "" Define dictionary.
    "let g:neocomplete#sources#dictionary#dictionaries = {
        "\ 'default' : '',
        "\ 'vimshell' : $HOME.'/.vimshell_hist',
        "\ 'scheme' : $HOME.'/.gosh_completions'
        "\ }

    "" Define keyword.
    "if !exists('g:neocomplete#keyword_patterns')
        "let g:neocomplete#keyword_patterns = {}
    "endif
    "let g:neocomplete#keyword_patterns['default'] = '\h\w*'

    "" Plugin key-mappings.
    ""inoremap <expr><C-g>     neocomplete#undo_completion()
    ""inoremap <expr><C-l>     neocomplete#complete_common_string()

    "" Recommended key-mappings.
    "" <CR>: close popup and save indent.
    "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    "function! s:my_cr_function()
      ""return neocomplete#smart_close_popup() . "\<CR>"
      "" For no inserting <CR> key.
      "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
    "endfunction
    "" <TAB>: completion.
    ""inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    "" <C-h>, <BS>: close popup and delete backword char.
    ""inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    ""inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
    ""inoremap <expr><C-y>  neocomplete#close_popup()
    ""inoremap <expr><C-e>  neocomplete#cancel_popup()
    "" Close popup by <Space>.
    ""inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

    "" For cursor moving in insert mode(Not recommended)
    ""inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
    ""inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
    ""inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
    ""inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
    "" Or set this.
    ""let g:neocomplete#enable_cursor_hold_i = 1
    "" Or set this.
    ""let g:neocomplete#enable_insert_char_pre = 1

    "" AutoComplPop like behavior.
    ""let g:neocomplete#enable_auto_select = 1
    ""let g:neocomplete#enable_refresh_always = 1

    "" Shell like behavior(not recommended).
    ""set completeopt+=longest
    ""let g:neocomplete#enable_auto_select = 1
    ""let g:neocomplete#disable_auto_complete = 1
    ""inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

    "" Enable omni completion.
    "autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    "autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    "autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

    "" Enable heavy omni completion.
    "if !exists('g:neocomplete#sources#omni#input_patterns')
      "let g:neocomplete#sources#omni#input_patterns = {}
    "endif
    "if !exists('g:neocomplete#force_omni_input_patterns')
      "let g:neocomplete#force_omni_input_patterns = {}
    "endif
    ""let g:neocomplete#sources#omni#input_patterns.php =
    ""\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
    ""let g:neocomplete#sources#omni#input_patterns.c =
    ""\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
    ""let g:neocomplete#sources#omni#input_patterns.cpp =
    ""\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

    "" For perlomni.vim setting.
    "" https://github.com/c9s/perlomni.vim
    "let g:neocomplete#sources#omni#input_patterns.perl =
    "\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

    "" For smart TAB completion.
    ""inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
    ""        \ <SID>check_back_space() ? "\<TAB>" :
    ""        \ neocomplete#start_manual_complete()
    ""  function! s:check_back_space() "{{{
    ""    let col = col('.') - 1
    ""    return !col || getline('.')[col - 1]  =~ '\s'
    ""  endfunction"}}}
"" }

""" neosnippet {
    ""imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    ""smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    ""xmap <C-k>     <Plug>(neosnippet_expand_target)
    ""xmap <C-l>     <Plug>(neosnippet_start_unite_snippet_target)

    "" SuperTab like snippets behavior.
    "imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
     "\ "\<Plug>(neosnippet_expand_or_jump)"
     "\: pumvisible() ? "\<C-n>" : "\<TAB>"
    "smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
     "\ "\<Plug>(neosnippet_expand_or_jump)"
     "\: "\<TAB>"

    "" For snippet_complete marker.
    "if has('conceal')
      "set conceallevel=2 concealcursor=i
    "endif

    "" Enable snipMate compatibility feature.
    "let g:neosnippet#enable_snipmate_compatibility = 1
    "let g:neosnippet#snippets_directory = '$HOME/vimfiles/bundle/vim-snippets/snippets, $HOME/snippets'
""}
