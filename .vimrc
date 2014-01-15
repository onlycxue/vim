set syntax=on
set autoindent
set tabstop=4
set nu
set nobackup
set noswapfile
"set tags=/home/charlesxue/setup/cocos2d-x/cocos2d-x-2.1.4/cocos2dx/tags

"quickfix open for cscope
nmap <silent> <F2> :cw<cr>
"map <silent> <F3> :TlistToggle<cr>
nmap <silent> <F3> :WMToggle<cr>
nmap <silent> <F4> :A<cr>
nmap <silent> <F7> :TMiniBufExplorer<cr>

let g:tagloader_autoload=1
let g:winManagerWindowLayout='FileExplorer|TagList'

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:miniBufExplMapCtabSwitchBufs = 1
let g:miniBufExplorerMoreThanOne=0
let g:bufExplorerMaxHeight=30

map <F5> :call CompileRunGcc()<CR>
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc

"cscope setting

"set cscopequickfix=s-,c-,d-,i-,t-,e-,g+

if filereadable("cscope.out")
	cs add cscope.out
elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
endif

set cscopequickfix=s-,c-,d-,i-,t-,e-,g-


nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>  
	   
