# easy-ddc.vim

This is a plugin to simplify the configuration of [ddc.vim](https://github.com/Shougo/ddc.vim).

**Note:** 
This Plugin depends on [ddc.vim](https://github.com/shougo/ddc.vim) and [dein.vim](https://github.com/Shougo/dein.vim), 
and [ddc.vim](https://github.com/shougo/ddc.vim) requires Neovim (0.5.0+ and of course, **latest** is recommended) or Vim 8.2.0662. 

## Install

### Install Deno

Execute the following commands to install [Deno](https://deno.land/) according to your OS and architecture.

#### Linux(x86\_64)/Mac(X86\_64)

```sh
curl -fsSL https://deno.land/x/install/install.sh | sh
```

#### Windows(Powershell)

```ps1
iwr https://deno.land/x/install/install.ps1 -useb | iex
```

#### Mac(M1)/Linux(Arm64)

```sh
# After installing cargo, build Deno.
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

git clone https://github.com/denoland/deno_install.git
cd deno_install
cargo install deno --locked
```

If you want more information, please look [here](https://deno.land/).
### Install ddc.vim
#### dein

```vim
call dein#begin()

call dein#add('Shougo/ddc.vim')
call dein#add('vim-denops/denops.vim')

call dein#add('Chatyusha/easy-ddc.vim')

call dein#end()
```

## Options

|option|meaning|default|
|:-:|:-:|:-:|
|ddc\_sources|ddc sources to use|`['ddc-around','default']`|

## Templates

The list of **ddc-sources** supported by this plugin, and templates are in `./tmp`

I am going to add more **ddc-source** templates in the future.

|template name|repository|
|:-:|:-:|
|default|[Shougo/ddc-macher\_head](https://github.com/Shougo/ddc-matcher_head) and [Shougo/ddc-sorter\_rank](https://github.com/Shougo/ddc-sorter_rank)|
|ddc-around|[Shougo/ddc-around](https://github.com/Shougo/ddc-around)|
|ddc-omni|[Shougo/ddc-omni](https://github.com/Shougo/ddc-omni)|
|ddc-vim-lsp|[shun/ddc-vim-lsp](https://github.com/shun/ddc-vim-lsp)|
|ddc-file|[LumaKernel/ddc-file](https://github.com/LumaKernel/ddc-file)|

## Usage
Make an array of the *ddc-sources* you want to use and assign it to the global variable *ddc_sources*.(default `[default, ddc-around]`),
and then run `call easyddc#install_sources()`
You can choose *ddc-sources* from [templates](#templates).

For example, when you use `default` and `ddc-around`, set the global valiable *ddc_sources* as follows, `let g:ddc_sources = ['default', 'ddc-around']`

## Example

(vimrc/init.vim)
```vim
let g:ddc_sources = ['default', 'ddc-around']
```
