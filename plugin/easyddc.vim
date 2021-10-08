if exists('g:loaded_easyddc')
  finish
endif

let g:loaded_easyddc = 1

call ddc#custom#patch_global('sources', easyddc#construct()["src"])
call ddc#custom#patch_global('sourceOptions', easyddc#construct()["ops"])

call ddc#enable()
