" startifyのヘッダー部分に表示する文字列を設定する(dateコマンドを実行して日付を設定している)
let g:startify_custom_header =
  \ map(['( ^ o ^ ) / < vim '.v:version]+split(strftime("%Y年%m月%d日", localtime()), '\n'), '"   ". v:val') + ['','']

" デフォルトだと、最近使ったファイルの先頭は数字なので、使用するアルファベットを指定
let g:startify_custom_indices = ['f', 'g', 'h', 'r', 'i', 'o', 'b']

let g:startify_files_number = 10
let g:startify_list_order = [
        \ ['☺  ブックマーク:'],
        \ 'bookmarks',
        \ ['♻  最近使ったファイル:'],
        \ 'files',
        \ ['♲  最近使ったファイル(カレントディレクトリ下):'],
        \ 'dir',
        \ ['⚑  セッション:'],
        \ 'sessions',
        \ ]
let g:startify_bookmarks = ["~/.dotfiles", "~/Desktop"]
