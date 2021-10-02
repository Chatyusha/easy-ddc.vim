function! easyddc#manage#add(repo) abort
  call dein#add(a:repo)
endfunction

function! easyddc#manage#install() abort
  call dein#install()
endfunction

function! easyddc#manage#add_from_list(repos) abort
  for i in a:repos
    call easyddc#manage#add(i)
  endfor
endfunction
