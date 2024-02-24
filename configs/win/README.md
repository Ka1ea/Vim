# Win Instructions

02/23/2024
Kalea Gin
Vimrc windows :3
1.0 
Installation steps (windows ed):
1) install vim, git
2) add vim to path (if not already there) ctrl panel > environment settings > path > C:program files\Vim\vimXX
3) https://github.com/junegunn/vim-plu://github.com/junegunn/vim-plug 
4) PlugInstall
5) mkdir ~/vimfiles/undo

command:

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
`
