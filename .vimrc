"(use -l since the interactive mode always fails)
" set shell=/usr/bin/env\ zsh\ -l

" this needs to be temporarily disabled until vundle has done its thing
filetype off

" make sure there is no delay with the escape key
set timeoutlen=1000 ttimeoutlen=0

" Plugins that will be loaded from github
call plug#begin()
Plug 'yearofmoo/Vim-Darkmate'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" highlight the code
syntax enable
filetype plugin indent on
set cursorline
set backspace=2 " make backspace work like most other apps

" theme
" colorscheme PaperColor-Dark
" colorscheme spacegray
colorscheme darkmate

" Add a different color for the cursor line
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
hi CursorLine guibg=#000000 ctermbg=0 gui=none
hi SignColumn guibg=#333333 ctermbg=235

" white bg with red text (cterm is used for neovim)
hi Visual term=reverse ctermbg=15 ctermfg=1 guibg=#333333

" font
set guifont=Droid\ Sans\ Mono:h18

" line wrapping
set wrap
set linebreak
set nolist  " list disables linebreak

" Stoooopid backup files "
set nobackup
set nowritebackup
set noswapfile

" highlight and partial search results "
set hlsearch
set incsearch

" editor flags "
set ruler
set number
set hidden
set softtabstop=2
set wildmenu
set wildmode=list:longest
set incsearch
set ignorecase
set smartcase
set showmode
set tabstop=2
set shiftwidth=2
set expandtab

" Clear highlights "
nmap <Space> :nohl<Enter>

" external stuff
noremap <Leader>aliases :e ~/.zsh/.aliases<Enter>

" displays the hep information for syntax highlighting
map <Leader>hi :help highlight-groups<Enter>

" file searching with CTRLP
noremap <Leader>fuf :CtrlPClearCache<Enter>
noremap <leader>. :CtrlPTag<cr>

" D-Keys "
noremap <c-o> @@
inoremap <c-o> <Esc>@@
noremap <c-d> :CtrlPBuffer<Enter>
inoremap <c-d> <Esc>:CtrlPBuffer<Enter>
noremap <c-r> :redo<Enter>

" Use this if you want all buffers to become tabs
"au BufAdd,BufNewFile * nested tab sball"

" Snippets "
map <Leader>allsnips :e ~/.vim/UltiSnips<Enter>
map <Leader>snip :UltiSnipsEdit<Enter>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
inoremap <c-x><c-k> <c-x><c-k>
let g:UltiSnipsEditSplit="vertical"

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|bower_components\|tmp\|build\|dist'
let g:localvimrc_ask = 0

" netrw is the annoying default vim file browser. This is disabled here such
" that the <s-down><s-up> keyboard commands can be used to traverse buffers
let loaded_netrwPlugin = 1

" gitgutter is great but it's slow, so I only want it to be enabled on
" projects that I choose. What goes on here is that it is disabled at start,
" but if it is enabled manually (via :GitGutterEnable) or enabled directly
" inside of a localvimrc file then it will be on for that specific project.
let g:gitgutter_enabled = -1

" Number Incrementation "
set nf=octal,hex,alpha
noremap <silent> <Leader>[ <C-X>
inoremap <silent> <Leader>[ <Esc><C-X>a
vnoremap <silent> <Leader>[ <Esc><C-X>v
noremap <silent> <Leader>] <C-A>
inoremap <silent> <Leader>] <Esc><C-A>a
vnoremap <silent> <Leader>] <Esc><C-A>v

" file searching and buffers "
noremap <c-k> <C-w>k
noremap <c-j> <C-w>j
noremap <c-h> <C-w>h
noremap <c-l> <C-w>l
noremap <C-Space> <C-w>o
noremap <C-@> <C-w>o
nnoremap <C-g> :m .+1<CR>
nnoremap <C-t> :m .-2<CR>
vnoremap <C-g> :m .+1<CR><Esc>gv
vnoremap <C-t> :m .-2<CR><Esc>gv
noremap <C-f> o<Esc>j


" Buffers "
nnoremap <c-a> ggVG<CR>
inoremap <c-a> <Esc>ggVG<CR>
vnoremap <c-a> ggG<CR>
noremap <c-u> :b#<CR>
noremap K kJ

" change j,k,A,I,^ and $ to always match wrapped lines "
nmap j gj
nmap k gk
nmap A g$a
nmap I g^i

" indentation "
vmap < <gv
vmap > >gv

nnoremap <c-s> <Esc>:z

" trim "
vmap tt :s/\s\+$//<CR><Esc><Space>
nmap tt Vtt

" theme inspection "
nmap <Leader>t :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc 

" File Type Highlighting
au BufNewFile,BufRead *.markdown set filetype=markdown
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead * set nopaste

set pastetoggle=<leader>p

"setlocal spell spelllang=en
"set spell spelllang=en
"set spellfile=~/.nvim/spell/en.utf-8.add

" airline
set laststatus=2
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline_left_sep='›'  " Slightly fancier than '>'
let g:airline_right_sep='‹' " Slightly fancier than '<'

" Tabbing / Code Alignment / Formatters "
map <Leader>a=        :Tabularize /=<CR>
map <Leader>a<Space>  :Tabularize /<Space><CR>
map <Leader>a:        :Tabularize /:<CR>
map <Leader>a::       :Tabularize /:\zs<CR>
map <Leader>a,        :Tabularize /,<CR>
map <Leader>a;        :Tabularize /;<CR>
map <Leader>a<Bar>    :Tabularize /<Bar><CR>
map <Leader>a[        :Tabularize /[<CR>
map <Leader>a]        :Tabularize /]<CR>
vmap <Leader>at   :!~/.vim/scripts/align-html-attributes.js<CR>
nmap <Leader>at  V:!~/.vim/scripts/align-html-attributes.js<CR>
vmap <Leader>aa   :!~/.vim/scripts/javascript-array.js<CR>
nmap <Leader>aa  V:!~/.vim/scripts/javascript-array.js<CR>
vmap <Leader>ab   :!~/.vim/scripts/boolean-attrs.js<CR>
nmap <Leader>ab  V:!~/.vim/scripts/boolean-attrs.js<CR>
vmap <Leader>ac   :!~/.vim/scripts/semicolon-values.js<CR>
nmap <Leader>ac  V:!~/.vim/scripts/semicolon-values.js<CR>
vmap <Leader>al   :!~/.vim/scripts/log-variable.js<CR>
nmap <Leader>al  V:!~/.vim/scripts/log-variable.js<CR>

" Angular-specific "
vmap <Leader>nga  :!~/.vim/scripts/angular-di-annotate.js<CR>
nmap <Leader>nga V:!~/.vim/scripts/angular-di-annotate.js<CR>
command AngularInstall execute "!~/.vim/scripts/angular-install.sh"

let g:html_indent_inctags = "body,tbody"

nmap <Leader>j :%!python -m json.tool<CR>
nmap <Leader>h :'[,']call HtmlEscape()<CR>
nmap <Leader>s :%s#<[^>]\+>##g<CR>
vmap <Leader>h :call HtmlEscape()<CR>
nmap <leader>u :GundoToggle<CR>

function HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
  silent s/"/\&quot;/eg
endfunction

map <Leader>drr  :Range<space>
map <Leader>dr10 :Range<space>1,10<CR>
map <Leader>dr99 :Range<space>1,99<CR>
command! -nargs=+ Range put =range(<args>)|cw

map <Leader>fchx :!chmod +x %<CR>

" scripts"
map <Leader>scripts :e ~/.vim/scripts<Enter>
command GulpInstall execute "!~/.vim/scripts/gulp-install.sh"

" Real Data Collection "
map <Leader>dm :DataMonths<space>
command -nargs=+ DataMonths execute "$read !~/.vim/scripts/months.js <args>"

" Send Visually selected area to gist "
vnoremap <leader>gist :w !gist -p -t %:e \| pbcopy<cr>
vnoremap <leader>pubgist :w !gist -t %:e \| pbcopy<cr>

" Make sure that copy and paste uses the clipboard register
vmap <C-c> "+y
imap <C-c> <Esc><Leader>p<Esc>"+y
" set clipboard=unnamed

" For terminal vim + iterm2 we need to explicitly configure the cursor "
" for both insert mode as well as other modes "
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

nmap <Leader>iit ^j?iit(<CR>xw/it(<CR>ii<ESC>:w<CR>
nmap <Leader>reg :registers abcdefghi<CR>
vmap <Leader>reg <Esc>:registers abcdefghi<CR>

" For local replace
nmap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nmap gR gD:%s/<C-R>///gc<left><left><left>

" Copy the whole page
nnoremap <Leader>c ggVG"+y

" search whatever is selected
vmap <Leader>/ "sy /<C-R>s

source ~/.dotfiles/.vimrc.local
