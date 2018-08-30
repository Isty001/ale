call ale#Set('go_gomod_executable', 'go')

function! ale#fixers#gomod#Fix(buffer) abort
    let l:executable = ale#Var(a:buffer, 'go_gomod_executable')

    return {
    \   'command': ale#Escape(l:executable)
    \       . ' mod edit -fmt'
    \       . ' %t',
    \   'read_temporary_file': 1,
    \}
endfunction

