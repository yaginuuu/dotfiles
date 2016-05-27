" let g:context_filetype#filetypes = {
"       \ 'html': [
"       \     {
"       \         'start': '<script>',
"       \         'end':   '</script>', 'filetype': 'javascript',},
"       \     {
"       \         'start': '<script\%( [^>]*\)charset="[^\"]*"\%( [^>]*\)\?>',
"       \         'end':   '</script>', 'filetype': 'javascript',},
"       \     {
"       \         'start': '<script\%( [^>]*\)\? type="text/javascript"\%( [^>]*\)\?>',
"       \         'end':   '</script>', 'filetype': 'javascript',},
"       \     {
"       \         'start': '<script\%( [^>]*\)\? type="text/coffeescript"\%( [^>]*\)\?>',
"       \         'end':   '</script>', 'filetype': 'coffee',},
"       \     {
"       \         'start': '<style\%( [^>]*\)\? type="text/css"\%( [^>]*\)\?>',
"       \         'end':   '</style>', 'filetype': 'css',},
"       \     {
"       \         'start': '<?',
"       \         'end':   '?>', 'filetype': 'php',},
"       \],}
