
function! easyddc#util#read_json(filepath)
  return json_decode(join(readfile(a:filepath),''))
endfunction
