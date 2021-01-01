" neovim要求配置
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


" 自定义配置, 插件
call plug#begin()

" 代码注释反注释
Plug 'preservim/nerdcommenter'
" 高亮光标下单词
Plug 'RRethy/vim-illuminate'

call plug#end()

