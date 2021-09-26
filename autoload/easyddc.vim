let s:tmpdir = expand("<sfile>:p:h:h")."/tmp"
let g:ddc_sources = get(g:,'ddc_sources',['ddc-around'])

function! easyddc#init() abort
  let l:sources = []
  let l:sourceOptions
endfunction

function! easyddc#loadtmp(tmpname) abort
  let l:tmpfile = s:tmpdir . "/" . a:tmpname . ".json"
  let l:data = easyddc#util#read_json(l:tmpfile)
  return l:data
endfunction

function! easyddc#test() abort
  echo easyddc#loadtmp("ddc-around")
endfunction

