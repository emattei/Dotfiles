vmap <unique> <up>    <Plug>SchleppUp
vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <left>  <Plug>SchleppLeft
vmap <unique> <right> <Plug>SchleppRight

" If there is text already all the way to the left, it is not possible to move
" further. Setting the two following option to 1 allow squishing
let g:Schlepp#allowSquishingLines = 1
let g:Schlepp#allowSquishingBlock = 1

" Disable trailing whitespace removal when moving block
let g:Schlepp#trimWS = 0

" To move and automatically reindent
vmap <unique> z <Plug>SchleppToggleReindent
