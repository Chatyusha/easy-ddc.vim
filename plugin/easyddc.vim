if exists('g:loaded_easyddc')
  finish
endif

let g:loaded_easyddc = 1

call ddc#custom#patch_global('sources', easyddc#construct()["src"])
call ddc#custom#patch_global('sourceOptions', easyddc#construct()["ops"])

if !exists('g:easyddc_default_mapping') || g:easyddc_default_mapping == 1
  " Mappings

  " <TAB>: completion.
  inoremap <silent><expr> <TAB>
  \ pumvisible() ? '<C-n>' :
  \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
  \ '<TAB>' : ddc#manual_complete()

  " <S-TAB>: completion back.
  inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

endif

" Use ddc.
call ddc#enable()
