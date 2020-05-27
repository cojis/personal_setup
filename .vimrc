" I think this sources vimrc without reload
"autocmd! bufwritepost .vimrc source %

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go'
Plug 'junegunn/goyo.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'blueshirts/darcula'
call plug#end()

set autowrite

" Mappings
let mapleader = "\<Space>"
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>s :wincmd r<CR>

" Leader is \
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set number

" base16-vim settings
"
" removes green line numbers
" https://github.com/chriskempson/base16-vim
let base16colorspace=256
colorscheme base16-default-dark
" colorscheme base16-eighties

" seoul256
" let g:seoul256_background=234
" colorscheme seoul256
" set background=dark

" colorscheme gruvbox
" let g:gruvbox_contrast_dark = "medium"

"set termguicolors
syntax on

" typescript settings
let g:typescript_indent_disable = 1

" nerdtree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" rust.vim
let g:rustfmt_autosave = 1

" Syntastic pathogen guide
"execute pathogen#infect()

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 0

" alias for mvim
" alias vim='mvim -v'
" alias vi='mvim -v'
" alias vim='nvim'

" vim-go settings
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_fmt_command = "goimports"

" vim lightline
set laststatus=2

" coc-vim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)

" fzf
" f = files in git repo
" df = directory files
nnoremap <leader>f :GitFiles<CR>
nnoremap <leader>df :Files<CR>

" tmux compatability with scrolling
" Makes mouse available for all modes
set mouse=a

filetype plugin on
