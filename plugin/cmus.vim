command! -nargs=? CmusStatus :call cmus#show_status("<args>")
command! CmusStart :call cmus#start()
command! CmusStop :call cmus#stop()
command! CmusPause :call cmus#pause()
command! CmusPausePlayback :call cmus#pause_playback()
command! CmusNext :call cmus#next()
command! CmusPrev :call cmus#prev()




nnoremap <leader>cp :CmusStart<CR>
nnoremap <leader>cs :CmusStatus<CR>
nnoremap <leader>cn :CmusNext<CR>

