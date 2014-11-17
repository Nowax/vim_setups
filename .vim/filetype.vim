if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
    au BufNewFile,BufRead *.ttcn3,*.ttcn  setf ttcn
    au BufNewFile,BufRead *.cpp,*.hpp,*.h setf cpp
    au BufNewFile,BufRead *.cpp,*.hpp,*.h set omnifunc=omni#cpp#complete#Main
    au BufNewFile,BufRead *.ttcn3,*.ttcn  set colorcolumn=121
    au BufNewFile,BufRead *.cpp,*.hpp,*.h set colorcolumn=101
augroup END
