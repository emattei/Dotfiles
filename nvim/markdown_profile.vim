" Markdown-preview configuration


" specify browser to open preview page
let g:mkdp_browser = 'firefox'

" Shortcut to Start/End/Toggle the preview 
 nmap <C-s> <Plug>MarkdownPreview
 nmap <M-s> <Plug>MarkdownPreviewStop
 nmap <C-p> <Plug>MarkdownPreviewToggle

" use a custom port to start server or random for empty
let g:mkdp_port = '6789'

