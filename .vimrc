" Personal settings
set guifont=Anonymous\ Pro:h13
set wrap " I like line wrapping, the following line indents the wrapping.
set showbreak=\ \ \ \ \ \
set lbr " Make wrapping break on word, not character.
set nolist
set textwidth=0 " Unset the 80 character break width, so it's all about window width.
set wrapmargin=2 " This is the wrap margin, set to 2 so we have a little space on the right of the screen.
set formatoptions+=l " As I understand it, this causes linebreaks on insertion? Not sure what this is.
set hidden " Let me switch buffers without an error message, hides the buffer and moves on.
" For navigating splits, shortening the CTRL-w hjkl to just CTRL-j etc.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" For mac users (using the 'apple' key) to go directly to # tab
map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

" The following function strips trailing whitespaces from a file.
function! <SID>StripTrailingWhitespaces()
  " Preparation - save last search, and cursor position:
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up - restore previous search history, and cursor position:
  let @/=_s
  call cursor(l, c)
endfunction

" Set F2 to toggle paste mode (disabling auto indent). Thanks:
" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" This allows us to use the same function to strip out whitespace anywhere,
" using the f5 key. Thanks Vim Scripts!
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" The following function strips trailing whitespaces from a file.
function! <SID>StripTrailingWhitespacesFixTabs()
  " Preparation - save last search, and cursor position:
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  "fix tabs. Added 2-6-13. Thanks http://stackoverflow.com/questions/426963/replace-tab-with-spaces-in-vim. Vid
  %!expand -t2
  " Clean up - restore previous search history, and cursor position:
  let @/=_s
  call cursor(l, c)
endfunction
" This allows us to use the same function to strip out whitespace anywhere,

" using the f4 key. Thanks Vim Scripts!
nnoremap <silent> <F4> :call <SID>StripTrailingWhitespacesFixTabs()<CR>

" This command applies the previous function to any Drupal, PHP, or JS file on :w.
autocmd BufWritePre *.module,*.install,*.info,*.php,*.test,*.inc,*.profile,*.view,*.js :call <SID>StripTrailingWhitespacesFixTabs()

" Drupal code formatting standards.
set expandtab " Expand tabs to spaces.
set tabstop=2 " Use 2 spaces, say, rather than 4.
set shiftwidth=2 " This is the amount of indentation.
set softtabstop=2 " This helps make sure that when you backspace in insert mode, it backspaces the entire tab.
set autoindent
set smartindent

" Turn on syntax highlighting.
syntax on
filetype on

" Drupal *.module and *.install files should be code highlighted like php.
autocmd BufRead,BufNewFile *.module,*.install,*.test,*.inc,*.profile,*.view set filetype=php

" Other filetypes.
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.dump set filetype=sql

" Source the vimrc file after saving it
autocmd bufwritepost .vimrc.after source ~/.vimrc.after

" colorscheme ir_black

" max memory (in KiB) used for pattern matching
set maxmempattern=10000
