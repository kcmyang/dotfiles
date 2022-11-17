filetype on
set tabstop=2
set shiftwidth=0
set expandtab
set clipboard+=unnamedplus

" Makefile settings
autocmd Filetype make setlocal noexpandtab

" Remaps
let mapleader = " "

nnoremap <silent> <CR> :nohlsearch<CR><CR>
nnoremap <C-a> ggVG
nnoremap Y y$

inoremap <C-a> <ESC>ggVG

vnoremap <C-a> <ESC>ggVG
vnoremap p pgvy

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'phanviet/vim-monokai-pro'
Plug 'kcmyang/vim-monokai-tastier'
Plug 'justinmk/vim-sneak'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'unblevable/quick-scope'

call plug#end()

" Mouse mode
set mouse=a
map <ScrollWheelUp> k
map <S-ScrollWheelUp> 5k
map <C-ScrollWheelUp> 5k
map <ScrollWheelDown> j
map <S-ScrollWheelDown> 5j
map <C-ScrollWheelDown> 5j

" Hybrid line numbers
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

set list listchars=trail:·,extends:>
autocmd FileWritePre * call TrimWhiteSpace()
autocmd FileAppendPre * call TrimWhiteSpace()
autocmd FilterWritePre * call TrimWhiteSpace()
autocmd BufWritePre * call TrimWhiteSpace()

nnoremap <Leader>d :call TrimWhiteSpace()<CR>
" nnoremap! <Leader>d :call TrimWhiteSpace()<CR>

" Colorscheme
set termguicolors
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" Find a syntax element
command! What echo synIDattr(synID(line('.'), col('.'), 1), 'name')

" vim-highlightyank
let g:highlightedyank_highlight_duration = 100

" vim-gitgutter
set signcolumn=yes
set updatetime=100
highlight! link SignColumn LineNr
let g:gitgutter_sign_added = '▌'
let g:gitgutter_sign_modified = '▌'
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '▌'
nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

" vim-airline
let g:airline_theme = 'monokai_tasty'
let g:airline_powerline_fonts = 1
set noshowmode

" Column width indicator
set colorcolumn=80,100

" Line numbering
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Split below and right
set splitbelow
set splitright

" Case insensitive search
set ignorecase
set smartcase
