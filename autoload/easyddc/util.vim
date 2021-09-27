let s:plugin_root = dein#_base_path . "/repos/github.com"

function! easyddc#util#read_json(filepath) abort
  return json_decode(join(readfile(a:filepath),''))
endfunction


function! easyddc#util#remove(plugin)
  let l:repo = s:plugin_root . "/" . a:plugin
  if !has('win32')
    call delete(l:repo,"rf")
  endif
  call dein#recache_runtimepath()
endfunction
