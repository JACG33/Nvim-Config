" Funciones para cargar el projecto actual.
function! s:load_session_project(t) abort
    let dir="~/AppData/Local/nvim/sessions/"..split(getcwd(),"\\")[-1]..".vim"
    if !empty(glob(dir))
     execute ':source'..dir
     echom "loadSession"
    endif
endfunction

" Funciones para guardar el projecto actual.
function! s:save_session_project(t) abort
    let dir="~/AppData/Local/nvim/sessions/"..split(getcwd(),"\\")[-1]..".vim"
    execute ':mksession!'..dir
    echom "saveSession"
endfunction

augroup user_cmds
    autocmd!
    autocmd VimEnter * call timer_start(2000, function('s:load_session_project'))
    autocmd VimEnter * call timer_start(30000, function('s:save_session_project'),{ 'repeat': -1 })
augroup END