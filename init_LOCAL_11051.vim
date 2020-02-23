call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes' 
Plug 'sainnhe/edge'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'uarun/vim-protobuf'
Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'machakann/vim-highlightedyank'
"Plug 'terryma/vim-multiple-cursors'

call plug#end()

" Set Leader
let g:mapleader="\\"
nmap z \
tmap z \

" Defaults
set number
set splitbelow
set splitright
set emoji
set ruler
set showcmd
set hidden
set cmdheight=4
set updatetime=300
set shortmess+=c
set signcolumn=yes
set tabstop=4
set shiftwidth=4
set expandtab
set inccommand=nosplit

" Auto brackets and quotes
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap [ []<Esc>i
"inoremap < <><Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i

" disable vim-go :GoDef short cut (gd), this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<TAB>"
let g:UltiSnipsJumpForwardTrigger = "<TAB>"
let g:UltiSnipsJumpBackwardTrigger = "<S-TAB>"

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Splits mappings
tnoremap <c-h> <C-\><C-n><C-w>h
tnoremap <c-j> <C-\><C-n><C-w>j
tnoremap <c-k> <C-\><C-n><C-w>k
tnoremap <c-l> <C-\><C-n><C-w>l

nnoremap <c-h> <C-\><C-n><C-w>h
nnoremap <c-j> <C-\><C-n><C-w>j
nnoremap <c-k> <C-\><C-n><C-w>k
nnoremap <c-l> <C-\><C-n><C-w>l

inoremap <c-h> <C-\><C-n><C-w>h
inoremap <c-j> <C-\><C-n><C-w>j
inoremap <c-k> <C-\><C-n><C-w>k
inoremap <c-l> <C-\><C-n><C-w>l

nnoremap <silent><leader>' :res +5<CR>
nnoremap <silent><leader>/ :res -5<CR>
nnoremap <silent><leader>, :vertical resize +5<CR>
nnoremap <silent><leader>. :vertical resize -5<CR>

" Terminal
tnoremap <Esc> <C-\><C-n>

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Config
nnoremap <leader>vr :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>ve :e ~/.config/nvim/init.vim<CR>

" Clipboard
vnoremap <C-c> "+y
vnoremap <C-x> "+d
vnoremap <C-p> "+p
inoremap <C-v> "+p

" Colors
set background=dark
colorscheme edge
let g:one_allow_italics = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Buffers
nnoremap <silent><leader>bd :bd<CR>
nnoremap <silent><leader>bh :bprevious<CR>
nnoremap <silent><leader>bl :bnext<CR>
nnoremap <silent><leader>b1 :b1<CR>
nnoremap <silent><leader>b2 :b2<CR>
nnoremap <silent><leader>b3 :b3<CR>
nnoremap <silent><leader>b4 :b4<CR>
nnoremap <silent><leader>b5 :b5<CR>
nnoremap <silent><leader>b6 :b6<CR>
nnoremap <silent><leader>b7 :b7<CR>
nnoremap <silent><leader>b8 :b8<CR>
nnoremap <silent><leader>b9 :b9<CR>

" Nerd Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Go specific
let g:go_fmt_command = "goimports"
nnoremap <leader>gr :GoRun<CR>
nnoremap <leader>gb :GoBuild<CR>
nnoremap <leader>gt :GoTesv<CR>
let g:go_auto_type_info = 1
let g:go_highlight_types = 1 
let g:go_highlight_fields = 1 
let g:go_highlight_functions = 1 
let g:go_highlight_function_calls = 1 

"fzf
nnoremap <silent><leader>sf :Files<CR>
nnoremap <silent><leader>sg :GFiles<CR>
nnoremap <silent><leader>sb :Buffers<CR>
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
