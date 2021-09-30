let s:plugin_root = dein#_base_path . "/repos/github.com"

let s:vital = vital#easyddc#new()

function! easyddc#util#read_json(filepath) abort
  return json_decode(join(readfile(a:filepath),''))
endfunction


