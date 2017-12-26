" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon > /dev/null 2>/dev/null

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw
                
set timeout ttimeoutlen=50
command! -nargs=1 Silent
\   execute 'silent !' . <q-args>
\ | execute 'redraw!'

map <F2> :echo 'Current time is ' . strftime('%c')<CR>
:map <F3> :Silent cp $HOME\/.vimrc vimrc\/vimrc1<CR>:echo ".vimrc was save, Please update later."<CR>
set shortmess+=I
set autochdir
:set expandtab
exec 'set viminfo=%,' . &viminfo
:set incsearch
:set ignorecase
:map <c-s> /
:imap <A-right> <Esc>$i
:map <A-right> $<left>
:map <A-left> <Esc>i
:map <c-home> 1G
:map <c-end> G
:imap <A-left> <Esc>0i
:map <A-left> 0
:map <c-right> w
:map <c-left> b
:map <c-x><c-s> :w<CR>
:imap <C-home> <Esc>1Gi
:imap <C-end> <Esc>Gi
:imap <C-left> <Esc>wi
:imap <C-left> <Esc>bi
:map <A-w> y
:map <C-y> p
" :cmap <A-w> y
:cmap <C-y> <C-r>"
:map <F9> u
:imap <F9> <Esc>ui
:map <F10> :undo<CR>
:imap <F10> <Esc>:redo<CR>i
:map <F12> :b#<CR>
:imap <F12> <Esc>:b#<CR>i
:map <C-g> <Esc>
nnoremap <NUL> v
nnoremap <s-up> <c-v>
nnoremap <s-down> <c-v>
:imap <C-g> <Esc>
:cmap <C-g> <Esc>
:map <c-s> /
:cmap <c-s> /
map <C-x> :echo 'C-x'
map <C-x><C-s> :w <CR> :echo expand('%:p') "written." <CR>
map <C-x>5 :vsplit<CR>
map <C-x>2 :split<CR>
map <C-x>1 :only<CR>
map <C-x>0 :hide<CR>
map <A-end> <C-w><C-w>
map <A-home> <C-w><C-w>
nnoremap <c-x>c :q!<CR>
map <c-x><c-b> :buffers<CR>
map <c-x><c-b><up> :buffers<CR>:buffer<Space>
map <c-x><c-k> :bd<CR>
map <c-x><c-t> ddp<up>
map <c-x> :echo 'C-x'<CR> 
map <c-t> Xp
noremap <A-u> gUaw
noremap <a-l> guaw
noremap <a-bs> bdw
noremap <a-c> mb~
noremap <a-d> dw
map <C-k> d$
map <c-k><c-k> dd
nnoremap <a-/> ma
nnoremap <a-j> `a
nnoremap <c-x>( qq
nnoremap <c-x>) q

