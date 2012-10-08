"set number
"set cin
"set softtabstop=4
set expandtab
set tabstop=2
set shiftwidth=2

set tags=tags;
"set autochdir

let g:winManagerWindowLayout='FileExplorer|TagList'



map <F2> <Esc>:tabp<Cr>
map <F3> <Esc>:tabn<Cr>
map <F8> o<Esc>
map <F9> O<Esc>

syntax on
filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class 

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

let g:pydiction_location = '~/.vim/ftplugin/pydiction-1.2/complete-dict'


" Tell vim to remember certain things when we exit
" "  '10  :  marks will be remembered for up to 10 previously edited files
" "  "100 :  will save up to 100 lines for each register
" "  :20  :  up to 20 lines of command-line history will be remembered
" "  %    :  saves and restores the buffer list
" "  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo


function! ResCur()
  if line("'\"") <= line("$")
      normal! g`"
	  return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <F11> :mksession! ~/.vim_session <cr> " Quick write session with F11
map <F12> :source ~/.vim_session <cr>     " And load session with F12

au BufNewFile,BufRead *.gradle setf groovy

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" --- OmniCppComplete ---
" -- required --
set nocp " non vi compatible mode
filetype plugin on " enable plugins

" -- optional --
" auto close options when exiting insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone

" -- configs --
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window

inoremap {<CR>  {<CR>}<Esc>O

"colo BusyBee
hi Pmenu 		   guifg=#ffffff guibg=#202020 ctermfg=255 ctermbg=238
hi PmenuSel 	   guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
"highlight Pmenu ctermbg=238 gui=bold
"TODO
"au FileType * exe('setl dict+='.$VIMRUNTIME.'/syntax/'.&filetype.'.vim')

"--config of html file indent
filetype indent on
let g:html_indent_inctags="html,body,head,tbody"

"--config for hight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

set ruler

highlight Visual cterm=NONE ctermbg=White ctermfg=Black
au! BufNewFile,BufRead *.applescript   setf applescript
call pathogen#infect()

set backspace=2
