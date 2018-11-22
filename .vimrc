call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'sgur/vim-editorconfig'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tomtom/tcomment_vim'
Plug 'henrik/vim-indexed-search'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'othree/html5.vim'
Plug 'majutsushi/tagbar'
call plug#end()

" fzf
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
command! -bang -nargs=* Rg
			\ call fzf#vim#grep(
			\   'rg --line-number --no-heading --color=always --hidden '.shellescape(<q-args>), 1,
			\   <bang>0 ? fzf#vim#with_preview('up:60%')
			\           : fzf#vim#with_preview('right:50%', '?'),
			\   <bang>0)

" netrw
let g:netrw_browse_split = 4	" open files in non-netrw split
let g:netrw_winsize = 25
let g:netrw_altv = 1					" open files on the right


set hlsearch ignorecase
set softtabstop=2 tabstop=2 shiftwidth=2
set number
set hidden					" allow switching away from un-saved buffers

set directory=~/.vim/swap//,/tmp
set undodir=~/.vim/undo//,/tmp
set undofile

" load up bash_profile
set shell=bash\ --login

" status line
set statusline=%f
set statusline+=%{tagbar#currenttag('\ >\ %s','','fs')}
