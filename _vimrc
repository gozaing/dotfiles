" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup


" tab
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

" NeoBundle setting
filetype off
 
if has('vim_starting')
  set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

" ここから NeoBundle でプラグインを設定します
  
" NeoBundle で管理するプラグインを追加します。
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm.git'
NeoBundle 'tyru/open-browser.vim'

" color
NeoBundle 'vim-scripts/moria'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/Lucius'
NeoBundle 'vim-scripts/Zenburn'
NeoBundle 'mrkn/mrkn256.vim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'therubymug/vim-pyte'
NeoBundle 'tomasr/molokai'

" カラースキーム一覧表示に Unite.vim を使う
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

" Tree
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()
filetype plugin indent on       " restore filetype
NeoBundleCheck

" color
colorscheme jellybeans
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
set t_Co=256
set number

" ##############################
" MarkDown
" ##############################
"PreVim
augroup PrevimSettings
 autocmd!
 autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END"
"let g:previm_open_cmd = 'open -a Safari'
nnoremap [previm] <Nop>
nmap <Space>p [previm]
nnoremap <silent> [previm]o :<C-u>PrevimOpen<CR>
nnoremap <silent> [previm]r :call previm#refresh()<CR>
"  ##############################
