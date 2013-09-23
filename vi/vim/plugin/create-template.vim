" Vim plugin that generates new source file when you type
"    vim nonexistent.sh.
" Author: Nik Khilnani <nik@khilnani.org>

function! MakeFile()
    if exists("b:template_used") && b:template_used
        return
    endif
    
    let b:template_used = 1
    
    let ext= expand("%:e")

    let template = expand($HOME . "/.vim/templates/template." . ext)
    if(filereadable(template))
      execute "0r " . template
    endif

"    call setline (1, "hmm")
"    call append(".", "hmm2")

endfunction

au BufNewFile *.sh call MakeFile()
au BufNewFile *.py call MakeFile()
au BufNewFile *.rb call MakeFile()
au BufNewFile *.php call MakeFile()
au BufNewFile *.pl call MakeFile()
au BufNewFile *.java call MakeFile()
au BufNewFile *.js call MakeFile()
au BufNewFile *.md call MakeFile()
