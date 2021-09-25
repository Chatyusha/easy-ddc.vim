# easy-ddc.vim

This is a plugin to simplify the configuration of [ddc.vim](https://github.com/Shougo/ddc.vim).

This Plugin depends on [ddc.vim](https://github.com/Shougo/ddc.vim) and [dein.vim](https://github.com/Shougo/dein.vim).

## Install

### Install Deno

#### Linux(x86\_64)/Mac(X86\_64)

 Please open a terminal and execute the following command.

```sh
curl -fsSL https://deno.land/x/install/install.sh | sh
```


#### dein

```vim
call dein#begin()

call dein#add('Shougo/ddc.vim')
call dein#add('vim-denops/denops.vim')

call dein#add('Chatyusha/easy-ddc.vim')

call dein#end()
```
