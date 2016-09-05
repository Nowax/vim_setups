" Highlightning cross settings
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
:set cursorline! cursorcolumn!

" Search settings
:set hlsearch!
:set number

:set list                " show special characters
:set listchars=tab:→\ ,trail:·,nbsp:·
" Colorscheme settings
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
:set guifont=Monospace\ 9

let g:solarized_bold=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"

set textwidth=0 wrapmargin=0

set sessionoptions-=options

set makeprg=/home/wonowak/c1/BTS_BM/build/crosswaf_clang\ configure\ build\ --domain=synchronization

function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction
" au VimEnter * nested :call LoadSession()
" au VimLeave * :call MakeSession()

" Button mapping
" Windows settings
:nnoremap <F2> <C-w>w
:nnoremap <F3> <C-w>v
:nnoremap <F4> <C-w>q
" Directories
map <F5> :NERDTreeToggle<CR>
:nnoremap <F6> :Search <C-R><C-W><CR>
:nnoremap <s-F6> :Search y/<C-R>"<C-W><CR>
:nnoremap <c-F6> :SearchReset<CR>
:nnoremap <F7> :StripWhitespace<CR>
:nnoremap <F9> :call MakeSession()<CR>
:nnoremap <F11> :call LoadSession()<CR>
:nnoremap <c-G> :Grep<CR>
:nnoremap <c-m> :make<CR>
" Exit mapping
:nnoremap <F12> :qa<CR>

" Autocomplete
:nnoremap <C-Space> <C-n>
" save file
:nnoremap <C-s> :w<CR>
:vmap <C-c> "+y
:vmap <C-v> "+p

" configure tags - add additional tags here or comment out not-used ones
#set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
#set tags+=~/.vim/tags/boost/algorithm
#set tags+=~/.vim/tags/boost/math
#set tags+=~/.vim/tags/boost/smart_ptr
#set tags+=~/.vim/tags/boost/assign
#set tags+=~/.vim/tags/boost/atomic
#set tags+=~/.vim/tags/boost/variant
#set tags+=~/.vim/tags/boost/bimap
#set tags+=~/.vim/tags/boost/intrusive
#set tags+=~/.vim/tags/boost/bind
#set tags+=~/.vim/tags/boost/flyweight
#set tags+=~/.vim/tags/boost/iostreams
#set tags+=~/.vim/tags/boost/ptr_container
#set tags+=~/.vim/tags/boost/thread
#set tags+=~/.vim/tags/boost/iterator
#set tags+=~/.vim/tags/boost/function
#set tags+=~/.vim/tags/boost/lambda
#set tags+=~/.vim/tags/boost/random
#set tags+=~/.vim/tags/boost/functional
#set tags+=~/.vim/tags/boost/optional
#set tags+=~/.vim/tags/boost/function_types
#set tags+=~/.vim/tags/boost/local_function
#set tags+=~/.vim/tags/boost/tuple
#set tags+=~/.vim/tags/boost/regex

" build tags of your own project with Ctrl-F11
map <C-F10> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD", "boost"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview


