set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'vimwiki/vimwiki'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
call plug#end()

set number
set expandtab
set tabstop=2
set softtabstop=2
set hlsearch
syntax enable
set wrap linebreak
set backspace=indent,eol,start

" Allow system clipboard
set clipboard=unnamed

" vim wiki
let g:vimwiki_url_maxsave=0
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
set foldmethod=indent
set foldlevelstart=99
set shiftwidth=2

" for insert mode to show cursor
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

"markdown preview
filetype plugin on
"Uncomment to override defaults:
""let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
""let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
""let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
""let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
""let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
map <leader>md : InstantMarkdownPreview<CR>
