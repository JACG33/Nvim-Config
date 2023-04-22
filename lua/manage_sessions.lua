 -- Funciones para cargar el projecto actual.
 --function load_session_project()
     --vim.cmd[[
      --let dir="~/.config/nvim/sessions"..split(getcwd(),"\\")[-1]..".vim"
      --if !empty(glob(dir))
       --execute ':source'..dir
       --echom "loadSession"
      --endif
     --]]
 --end

 ---- Funciones para guardar el projecto actual.
 --function save_session_project()
     --local timer = vim.loop.new_timer()
     --local dir= "~/.config/nvim/sessions/"
     --local folder
     --local dirOpen=vim.split(vim.loop.cwd(), "/",{plain=true})
     --local count=0
     --for key,value in pairs(dirOpen) do
         --folder=value
     --end
     --dir=dir..folder..".vim"
     --vim.cmd('mksession!'..dir)
 --end




function initSessions()
  vim.cmd[[
    function! s:load_session_project(t) abort
      let dir="~/.config/nvim/sessions/"..split(getcwd(),"[\\/]")[-1]..".vim"
      if !empty(glob(dir))
       execute ':source'..dir
       echom "loadSession"
      endif
    endfunction

    function! s:save_session_project(t) abort
        let dir="~/.config/nvim/sessions/"..split(getcwd(),"[\\/]")[-1]..".vim"
        execute ':mksession!'..dir
        echom "saveSession"
    endfunction

    call timer_start(2000, function('s:load_session_project'))

    call timer_start(10000, function('s:save_session_project'),{ 'repeat': -1 })
  ]]

end

vim.api.nvim_create_autocmd(
    'VimEnter',
    {
      callback = function() 
        initSessions()
      end
    }
)
