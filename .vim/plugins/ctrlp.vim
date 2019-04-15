" 隠しファイルを表示する
let g:ctrlp_show_hidden = 1
" キャッシュを使用して検索を高速化
let g:ctrlp_use_caching = 1
" vim終了時にキャッシュをクリアしない
let g:ctrlp_clear_cache_on_exit = 0
" <C-r>でキャッシュをクリアして再検索
let g:ctrlp_prompt_mappings = { 'PrtClearCache()': ['<C-r>'] }
" 検索結果の表示ウィンドウの設定，10件分を表示（それ以上になってもスクロールされる）
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:50'
