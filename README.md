# Readme.

Please do the following.
1. Check this source code in `~/.config` folder. if you had checked it out somewhere else please move the cloned `nvim` folder to that location.
2. Open `init.vim` in `nvim`
3. Do a `:PlugInstall`, and enjoy the goodness.

Please note - if this is the first time you are running this command , please be aware that the last command might fail as "Vim Plug" has itself not been installed. 
We are using this package manager to install all our packages. If this is the case you can run the following command 
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
 and the restart nvim

You will need nvim > 0.5.0 greater for the LSP to work.
