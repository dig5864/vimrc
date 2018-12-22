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
set nocompatible                " be iMproved

".......................................................
" cscope setting
".......................................................
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


filetype off                    " required!
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"Bundle 'gmarik/vundle'
"Bundle 'fholgado/minibufexpl.vim'

".......................................................
" install plug.vim
".......................................................
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

".......................................................
" plug.vim 插件列表
" 输入PlugInstall安装下列插件
".......................................................
call plug#begin('~/.vim/plugged')
" 将内容复制货剪切到一个共享的剪切板
Plug 'vim-scripts/YankRing.vim'
" 显示taglist(例如函数列表)
Plug 'vim-scripts/Tagbar'
" ???
Plug 'vim-scripts/c.vim'
" ???
Plug 'vim-scripts/lookupfile'
" 显示文件列表
Plug 'vim-scripts/The-NERD-Tree'
Plug 'vim-scripts/The-NERD-Commenter'
" 同时打开多个文件会在上方显示文件(类似tab)
Plug 'fholgado/minibufexpl.vim'
" 跳转的???
Plug 'easymotion/vim-easymotion'
" 查找文件的
Plug 'Shougo/unite.vim'
" 异步处理(需要到插件目录make)
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" ???
Plug 'clones/vim-genutils'
" tab键安装pep8的规则空行
Plug 'Vimjas/vim-python-pep8-indent'
" 查看文件的git提交记录
" Plug 'cohama/agit.vim'
" 按.重复上一次操作
" Plug 'tpope/vim-repeat'
" 显示行尾多余的空格
Plug 'ntpeters/vim-better-whitespace'
Plug 'mbbill/undotree'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'dyng/ctrlsf.vim'
"Plug 'ggreer/the_silver_searcher'

"if has('nvim')
"    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"    Plug 'Shougo/deoplete.nvim'
"    Plug 'roxma/nvim-yarp'
"    Plug 'roxma/vim-hug-neovim-rpc'
"    Plug 'zchee/deoplete-jedi'
"endif
"if has('python3')
"    let g:deoplete#enable_at_startup = 1
"endif
" Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tammersaleh/vim-align'
"Plug 'tpope/vim-sensible'
"Plug 'tpope/vim-commentary'
"Plug 'lrvick/Conque-Shell'
"Plug 'Conque-Shell'
call plug#end()
"......................................

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
" UndoTree
"......................................
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

"......................................
" LeaderF
"......................................
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_PreviewResult = {'Function':0, 'Colorscheme':1}

if !has('gui_running')
    set t_Co=256
endif

let g:EasyMotion_smartcase = 1
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

"......................................
" key map
"......................................
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <C-x> :TagbarToggle<CR>
noremap <F2> :LeaderfFunction!<CR>

" UndoTree key
nnoremap <F6> :UndotreeToggle<CR>

" cscope key
nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"map <Leader> <Plug>(easymotion-prefix)
map , <Plug>(easymotion-prefix)
nnoremap s <Plug>(easymotion-s)
nnoremap <Leader>. <Plug>(easymotion-repeat)
" map <C-x> :TlistToggle<CR>



"let g:deoplete#enable_at_startup = 1
"......................................
"YankRing
"......................................
""将yankring的历史文件夹移到~/.vim
""let g:yankring_history_dir = $HOME.'/.vim/'
"修改历史文件名
""let g:yankring_history_file = '.yankring_history'

" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
"
" " enable ncm2 for all buffers
" autocmd BufEnter * call ncm2#enable_for_buffer()
"
" " IMPORTANTE: :help Ncm2PopupOpen for more information
" set completeopt=noinsert,menuone,noselect
"
" " NOTE: you need to install completion sources to get completions. Check
" " our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-tmux'
" Plug 'ncm2/ncm2-path'


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
