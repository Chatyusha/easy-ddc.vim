# easy-ddc.vim

This is a plugin to simplify the configuration of [ddc.vim](https://github.com/Shougo/ddc.vim).

This Plugin depends on [ddc.vim](https://github.com/Shougo/ddc.vim).

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
