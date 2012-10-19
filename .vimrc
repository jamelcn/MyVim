
" Maintainer:	Jamel Chen
" Last change:	2012-09-15
"	Testing...
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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" vim-scripts repos
Bundle 'snipMate'
Bundle 'AutoComplPop'
Bundle 'The-NERD-tree'
Bundle 'Auto-Pairs'
Bundle 'The-NERD-Commenter'
Bundle 'xolox/vim-session'
Bundle 'Lokaltog/vim-powerline'
Bundle 'ack.vim'
Bundle 'Align'
Bundle 'c.vim'
Bundle 'vim-scripts/Color-Sampler-Pack'
Bundle 'Color-Scheme-Explorer'
"a little script to highlight several words in different colors simultaneously 
Bundle 'Mark'
"extended % matching for HTML, LaTeX, and many other languages
Bundle 'matchit.zip'
"Plugin to manage Most Recently Used (MRU) files
Bundle 'mru.vim'
"Better Rainbow Parentheses, if not usable, use 'Rainbow-Parenthesis', the old one
Bundle 'rainbow_parentheses.vim'
"Delete/change/add parentheses/quotes/XML-tags/much more with ease
Bundle 'surround.vim'	
"Browse plain text easily(show the title tag and syntax highlight)
Bundle 'TxtBrowser'
"Personal wiki for vim
Bundle 'vimwiki'
"vim plugins for HTML and CSS hi-speed coding.
Bundle 'ZenCoding.vim'
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
Bundle 'xolox/vim-shell'
"L9 Libray for fuzzyfinder
Bundle 'L9'
"buffer/file/command/tag/etc explorer with fuzzy matching
Bundle 'FuzzyFinder'

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
	cd E:/

	" Grep Settings For Win32,Maybe not necessary at present
	"let Grep_Path='c:\Program Files\GnuWin32\bin\grep.exe'
	"let Fgrep_Path='c:\Program Files\GnuWin32\bin\fgrep.exe'
	"let Egrep_Path='c:\Program Files\GnuWin32\bin\egrep.exe'
	"let Agrep_Path='c:\Program Files\GnuWin32\bin\Agrep.exe'
	"let Grep_Find_Path='c:\Program Files\GnuWin32\bin\find.exe'
	"let Grep_Xargs_Path='c:\Program Files\GnuWin32\bin\xargs.exe'
	"let Grep_Default_Filelist='*.[chS]'
	
	" Adjusting alpha degree by using vimtweak.dll
	let g:alphaDeg = 240
	function IncAlpha()
		let g:alphaDeg+=10
		call libcallnr("vimtweak.dll", "SetAlpha", g:alphaDeg)
	endfunction
	nnoremap <F12> :call IncAlpha()<cr>
	au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", g:alphaDeg)

" Put gvim in full screen on windows by using key <F11>
"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll","ToggleFullScreen",0)<CR>
endif
" ------------------------Win32 settings------------------------


" ------------------------Internal Behaviors------------------------

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

set history=50		" keep 50 lines of command line history
set incsearch		" do incremental searching
set ignorecase		" ignore case when searching for string
set nowrapscan		" Do not wrap scan the result when searching for a pattern
set backspace=indent,eol,start	" allow backspacing over everything in insert mode

"se autochdir "×Ô¶¯ÇÐ»»Ä¿Â¼µ½µ±Ç°ÎÄ¼þËùÔÚÄ¿Â¼
" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a
" Settings for visualbell instead of annoying beep :(
set visualbell
set so=12	" Make the cursor always stay near the mid of screen, its value depends on your monitor

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
" ------------------------Internal Behaviors------------------------

" ------------------------External Behaviors------------------------
" ------------------------External Behaviors------------------------

" ------------------------All Appearances------------------------
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" when press tab for completion, show candicate completions
" Set Line number
set nu!
" Remove the toolbar 
set guioptions-=T
"Remove the Menu
set guioptions-=m
"Remove the left ScrollBar
set guioptions-=L
"Remove the right ScrollBar
set guioptions-=r
"Remove the gui tabs
set guioptions-=e

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

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
""colorscheme jellybeans
""colorscheme kelly
""colorscheme molokai
""colorscheme moria
""colorscheme mustang
""colorscheme wombat
colorscheme xoria256
""colorscheme zenburn
""colorscheme desert
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
""colorscheme jellybeans
""colorscheme kelly
""colorscheme molokai
""colorscheme moria
""colorscheme mustang
""colorscheme wombat
""colorscheme xoria256
colorscheme zenburn
""colorscheme desert
endif
" -----------Candidate colorschemes-----------

set fileencodings=utf-8,gbk,gb18030,utf-16,big5
"se guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
se guifont=Bitstream_Vera_Sans_Mono_for_Po:h10:cANSI
"se guifont=Consolas_for_Powerline_FixedD:h10:cANSI

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
nnoremap <c-n> gt
nnoremap <c-p> gT
cabbrev te tabe

nmap <F2> :NERDTree %<CR>

" USE <C-B> as <HOME> <C-Z> as <END> in insert mode
imap <C-B> <C-O>^
imap <C-Z> <END>

" USE <c-j> to spilt html tags or parenthesis by blank lines
inoremap <c-j> <cr><cr><Esc>kS

" USE <C-L> as <Del> in insert mode
imap <C-L> <Del>

" Map j,k to gj, gk for comfortable navigation
nnoremap j gj
nnoremap k gk

"USE <F6> <F7> For quickfix's "cn" and "cp"
nnoremap <F7> :cp<cr>
nnoremap <F8> :cn<cr>

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


" For all PHP files set colorscheme 
 au Filetype php set cindent shiftwidth=4 softtabstop=4

 " For all Python files set indent
 au Filetype python set cindent shiftwidth=4 softtabstop=4
 au Filetype python nnoremap <F9> :new<cr>:r !python #<cr>

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
endif

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
endif

"Taglist Settings
let Tlist_Use_Right_Window=1	"Make Tlist shown on the right window
let Tlist_Show_One_File=0	"让taglist可以同时展示多个文件的函数列表
let Tlist_Exit_OnlyWindow=1 	"当taglist是最后一个分割窗口时，自动推出vim
let Tlist_WinWidth=28
if has("win32")
	let Tlist_Ctags_Cmd = 'C:\Windows\System32\ctags.exe'
endif


"Grep Settings 
nnoremap <silent> <F3> :Grep<cr>

"Cscope Settings
set cscopequickfix=s-,c-,d-,i-,t-,e- "让quickfix窗口来显示cscope结果
nmap <C-s>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-s>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-s>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>a :cs add 

" Settings for RainbowParentheses 
" :RainbowParenthesesToggle       " Toggle it on/off
" :RainbowParenthesesLoadRound    " (), the default when toggling
" :RainbowParenthesesLoadSquare   " []
" :RainbowParenthesesLoadBraces   " {}
" :RainbowParenthesesLoadChevrons " <>
au VimEnter * RainbowParenthesesToggle
au syntax * RainbowParenthesesLoadRound
au syntax * RainbowParenthesesLoadSquare
au syntax * RainbowParenthesesLoadBraces
au syntax * RainbowParenthesesLoadChevrons

" Settings for easy tag
"     :let g:easytags_on_cursorhold = 0
"     :let g:easytags_auto_update = 0


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
