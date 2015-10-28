# vimfiles
My vim configuration files

Should be simple enough to clone into any new system, or to restore if anything goes wrong.

Clone the repo into `~/.vim/` and then update the submodules: `git submodule update --init --recursive` should do it.

The YouCompleteMe plugin has a compiled component, `./install.sh --clang-completer` from the YouCompleteMe folder is what you want.
The tern-for-vim plugin requires some extra components to be installed, `cd` into its folder and do `npm install`.

One more thing: vim-airline looks very nice when paired with a powerline equiped font (https://github.com/powerline/fonts)
