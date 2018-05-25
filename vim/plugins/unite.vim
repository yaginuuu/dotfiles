let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200

nmap     <Leader>f [unite]
nnoremap <silent> ,uy :<C-u>Unite history/yank -no-quit<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer -no-quit<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file -no-quit<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register -no-quit<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> ,e  :<C-u>Unite file_rec/async:!<CR>
nnoremap <silent> ,f  :<C-u>Unite file<CR>

" 画面分割, 画面タブ設定
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file -no-quit<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file -no-quit<CR>

"------------------------------------
" Unite-rails.vim
"------------------------------------
" -no-quit: 検索画面を閉じないようにする
noremap rc :<C-u>Unite rails/controller<CR>
noremap rm :<C-u>Unite rails/model<CR>
noremap rv :<C-u>Unite rails/view<CR>
noremap rh :<C-u>Unite rails/helper<CR>
noremap rs :<C-u>Unite rails/stylesheet<CR>
noremap rj :<C-u>Unite rails/javascript<CR>
noremap rr :<C-u>Unite rails/route<CR>
noremap rg :<C-u>Unite rails/gemfile<CR>
noremap rt :<C-u>Unite rails/spec<CR>
