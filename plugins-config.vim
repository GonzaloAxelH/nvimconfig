

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
" HTML, JSX

let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'
" Lightlane

let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}


"Airline config

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}'

"Config UltiSnips

let g:UltiSnipsSnippetDirectories=[$HOME.'/configs/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-_>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

"Config gitgutter

let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

"Kite config (not found now Kite) 

autocmd FileType python let b:coc_suggets_disable = 1
autocmd FileType javascript let b:coc_suggets_disable = 1
autocmd FileType scss setl iskeyword+=@-@

    if &filetype == "javascript" || &filetype == "python"
        inoremap <c-space> <C-x><C-u>
    else
        inoremap <silent><expr> <c-space> coc#refresh()
    endif

"Config theme Gruvbox

let g:jsx_ext_required=0
let g:gruvox_termcolors=16
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_plugin_hi_groups = 1
colorscheme gruvbox
set background=dark



"Change to syntax filetype

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html

"Lightline config

let g:lightline = { 'colorscheme': 'gruvbox'}

"Singnify Git config 

let g:signify_sign_add ='+'
let g:signify_sign_delete= '●'
let g:signify_sign_change = '→'

"NERDTree config 

let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:nerdtreegitstatuswithflags = 1
let g:webdeviconsunicodedecoratefoldernodes = 1
let g:nerdtreegitstatusnodecolorization = 1
let g:nerdtreeignore = ['^node_modules$']
let NERDTreeQuitOnOpen =1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


"Vim prettier

let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_auto_focus = 0

"Coc config

let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-pairs',
\ 'coc-tsserver',
\ 'coc-eslint', 
\ 'coc-prettier', 
\ 'coc-json',
\ ]
" prettier command for coc

command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


"Syntax Custom highlighting

let g:jsx_ext_required = 1

"colors jsx
hi Normal guibg=NONE ctermbg=NONE
hi jsxAttrib  ctermfg=214
hi jsxComponentName ctermfg=142 cterm=bold
hi jsxTagName ctermfg=142 cterm=bold
hi javascriptImport ctermfg=214
hi javascriptExport ctermfg=214
hi javaScriptNumber ctermfg=108
hi CocUnusedHighlight ctermfg=244

"javascript vim

let g:javascript_plugin_flow = 1

" MatchTagAlways types files (Plugins not Intalled)

let g:mta_filetypes = {
    \ 'xhtml' : 1,
     \'javascriptreact' :1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
     \'javascript':1,
    \ 'javascript.jsx': 1,
    \}

"Terminal Integraded

au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-x> :call OpenTerminal()<CR>






