" Only do this when not done yet for this buffer
if exists("b:ruby_editing_ftplugin")
finish
endif
let b:ruby_editing_ftplugin = 1

map <buffer> <S-e> :w<CR>:rubyf %
"map <buffer> gd /def <C-R><C-W><CR> 
