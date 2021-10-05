let s:tmpdir = expand("<sfile>:p:h:h")."/tmp"
let s:default_sources = ['ddc-around', 'default']
let s:ddc_sources = get(g:,'ddc_sources',s:default_sources)

function! easyddc#construct() abort
  let l:sources = []
  let l:sourceOptions = {}
  let l:repos = []
  for i in s:ddc_sources
    let l:src = get(easyddc#loadtmp(i),'sources')
    let l:ops = get(easyddc#loadtmp(i),'sourceOptions')
    let l:repo = get(easyddc#loadtmp(i),'repo')
    if l:src != ''
      let l:sources += [l:src]
    endif
    let l:sourceOptions = extend(l:sourceOptions,l:ops)
    if type(l:repo) == v:t_list
      let l:repos += l:repo
    else
      let l:repos += [l:repo]
    endif
  endfor
  return {"repos":l:repos,"src":l:sources,"ops":l:sourceOptions}
endfunction

function! easyddc#loadtmp(tmpname) abort
  let l:tmpfile = s:tmpdir . "/" . a:tmpname . ".json"
  let l:data = easyddc#util#read_json(l:tmpfile)
  return l:data
endfunction

function! easyddc#test() abort
  ""echo easyddc#loadtmp("ddc-matchmatcher_headd")
  echo easyddc#construct()
endfunction

function! easyddc#install_sources() abort
  let l:ddc_data = easyddc#construct()
  call easyddc#manage#add_from_list(l:ddc_data["repos"])
  call easyddc#manage#install()
endfunction
