set ts=4
syntax enable 
set nocompatible
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
"set undofile
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

"nnoremap <tab> % vnoremap <tab> %



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  if filereadable("cscope")
      cs add cscope
  endif

  set csverb
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'easymotion/vim-easymotion'
Bundle 'clones/vim-genutils'

"my Bundle here:
"
" original repos on github
"Bundle 'kien/ctrlp.vim'
"..................................
" vim-scripts repos
"Bundle 'YankRing.vim'
" Bundle 'taglist.vim'
Bundle 'Tagbar'
"Bundle 'YankRing.vim'
Bundle 'c.vim'
Bundle 'lookupfile'
Bundle 'The-NERD-Tree'
Bundle 'The-NERD-Commenter'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
" Plugin 'Valloric/YouCompleteMe'

filetype plugin indent on

"......................................
" lookup file settting
"......................................
":let g:LookupFile_TagExpr = '"./filenametags"'
"
"let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_global_ycm_extra_conf='/home/guoyi/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"" 禁用syntastic来对python检查
"let g:syntastic_ignore_files=[".*\.py$"] 
"" " 使用ctags生成的tags文件
"let g:ycm_collect_identifiers_from_tag_files = 1
"" " 开启语义补全
"" " 修改对C语言的补全快捷键，默认是CTRL+space，修改为ALT+;未测出效果
"let g:ycm_key_invoke_completion = '<M-;>'
"" " 设置转到定义处的快捷键为ALT+G，未测出效果
"nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration
"" <C-R>=expand("<cword>")<CR><CR> 
"" "关键字补全
"let g:ycm_seed_identifiers_with_syntax = 1
"" " 在接受补全后不分裂出一个窗口显示接受的项
"set completeopt-=preview
"" " 让补全行为与一般的IDE一致
"set completeopt=longest,menu
"" " 不显示开启vim时检查ycm_extra_conf文件的信息
"let g:ycm_confirm_extra_conf=0
"" " 每次重新生成匹配项，禁止缓存匹配项
"let g:ycm_cache_omnifunc=0
"" " 在注释中也可以补全
"let g:ycm_complete_in_comments=1
"" " 输入第一个字符就开始补全
"let g:ycm_min_num_of_chars_for_completion=1
"" " 错误标识符
"let g:ycm_error_symbol='>>'
"" " 警告标识符
"let g:ycm_warning_symbol='>*'
"" " 不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
"let g:ycm_use_ultisnips_completer=0


"......................................
" NERDTree
"......................................
let g:NERDSpaceDelims=1


"......................................
" key map
"......................................
map <C-a> :NERDTreeToggle<CR>
map <C-x> :TagbarToggle<CR>
" map <C-x> :TlistToggle<CR>
"
"


"......................................
"YankRing
"......................................
""将yankring的历史文件夹移到~/.vim
""let g:yankring_history_dir = $HOME.'/.vim/'
"修改历史文件名
""let g:yankring_history_file = '.yankring_history'


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
