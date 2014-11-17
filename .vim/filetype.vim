if exists("did_load_filetypes")
    finish
endif

func! RightMargin()
if (v:version <= 702)
    au BufNewFile,BufRead *.ttcn3,*.ttcn  let w:m2=matchadd('ErrorMsg', '\%>121v.\+', -1)
    au BufNewFile,BufRead *.cpp,*.hpp,*.h let w:m2=matchadd('ErrorMsg', '\%>101v.\+', -1)
else
    au BufNewFile,BufRead *.ttcn3,*.ttcn set colorcolumn=121
    au BufNewFile,BufRead *.cpp,*.hpp,*.h set colorcolumn=101
endif
endfunc

augroup filetypedetect
    au BufNewFile,BufRead *.ttcn3,*.ttcn  setf ttcn
    au BufNewFile,BufRead *.cpp,*.hpp,*.h setf cpp
    au BufNewFile,BufRead *.cpp,*.hpp,*.h set omnifunc=omni#cpp#complete#Main
    call RightMargin()
augroup END
