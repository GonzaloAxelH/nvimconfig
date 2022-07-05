
let mapleader=" " 

"format code

vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"Nerdtree

nmap <C-n> :NERDTreeToggle<CR>

"Save 

nmap <C-m> :noa w <CR>

"NERDCommenter

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"Easymotion (search by two characters)

nmap <Leader>s <PLug>(easymotion-s2)

" j/k will move virtual lines (lines that wrap)

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Coc.vim
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
augroup mygroup
autocmd!
augroup end
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

"OpenTerminal 
"
nnoremap <c-x> :call OpenTerminal()<CR>

