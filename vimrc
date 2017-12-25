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
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
:set expandtab
:exec 'set viminfo=%,' . &viminfo
:set incsearch
:set ignorecase
:map <c-s> /
:imap <A-right> <Esc>$i
:map <A-right> $
:imap <A-left> <Esc>0i
:map <A-left> 0
:map <c-home> 1G
:map <c-end> G
:map <c-left> w
:map <c-left> b
:map <c-x><c-s> :w<CR>
:imap <C-home> <Esc>1Gi
:imap <C-end> <Esc>Gi
:imap <C-left> <Esc>wi
:imap <C-left> <Esc>bi
:map <A-w> y
:map <C-y> p
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
map <C-x><C-s> :w <CR> :echo expand('%:p') "written." <CR>
map <C-x>5 :vsplit<CR>
map <C-x>2 :split<CR>
map <C-x>1 :only<CR>
map <C-x>0 :hide<CR>
map <A-end> <C-w><C-w>
map <A-home> <C-w><C-w>
nnoremap <c-x><c-c> <Esc>:q!<CR>
map <c-x><c-b> :buffers<CR>
map <c-x><c-t> ddp<up>
map <c-t> Xp
noremap <A-u> gUaw
noremap <a-l> guaw
noremap <a-bs> bdw
noremap <a-c> mb~
map <C-k> d$
map <c-k><c-k> dd
nnoremap <a-/> ma
nnoremap <a-j> `a
nnoremap <c-x>( qq
nnoremap <c-x>) q

