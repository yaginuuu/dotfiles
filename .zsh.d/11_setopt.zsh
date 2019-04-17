# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

# コマンドミスを修正
setopt correct

# ビープを鳴らさない
setopt no_beep

# ^Dでログアウトしない
setopt ignoreeof
# Ctrl+Dでzshを終了しない
setopt ignore_eof

# バックグラウンドジョブが終了したらすぐに知らせる
setopt no_tify

# 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# フローコントロールを無効にする
setopt no_flow_control

# cdコマンドを省略して、ディレクトリ名のみの入力で移動
setopt auto_cd
# cd したら自動的にpushdする
setopt auto_pushd
# 補完候補が複数ある時に、一覧表示
setopt auto_list
# 補完候補が複数あるときに自動的に一覧表示する
setopt auto_menu

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# 高機能なワイルドカード展開を使用する
setopt extended_glob

# git show HEAD^とかrake foo[bar]とか使いたい
setopt no_nomatch
