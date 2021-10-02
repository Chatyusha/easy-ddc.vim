let s:vital.System_File = vital#easyddc#import('System.File')
let s:ddc = get(g:,'ddc_root',expand("~/.ddc"))
let s:integ_ddc = s:ddc "/.integ"
let s:repo = s:ddc . "/repo/github.com"
let s:installed_cache_file = s:ddc . "/.installed.json"
let s:add_list = []

function! easyddc#manage#add(plugin_rpo) abort   
endfunction

function! easyddc#manage#install() abort
  for i in s:add_list
    let l:cmd = [
          \ "git",
          \"clone",
          \"https://github.com/".i.".git",
          \s:repo."/".i
          \]
    call system(l:cmd) 
  endfor
endfunction

function! easyddc#manage#construct() abort
endfunction

function! easyddc#manage#empty() abort
  
  "~/.ddc/.integ
  "           \-- denops"
  "             \-- @ddc-files
  "             \-- @ddc-filters
  "             \-- @ddc-sources
  "             \-- @denops
  "             \-- @denops-private
  "           \-- doc
  
  let l:dir_tree = ["denops","deops/@ddc-files","deonps/@ddc-filters","denops/@ddc-sources","deops/@denops","denops/@denops","deops/@denops-private","doc"]
  for i in l:dir_tree
    let l:dir = s:integ_ddc . "/" . i
    if(!isdirectory(l:dir))
      call mkdir(l:dir)
    endif
  endfor
endfunction

function! easddc#manage#makecache() abort
      
endfunction
