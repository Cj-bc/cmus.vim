func! cmus#show_status()
  let s:status = systemlist("cmus-remote -Q")
  echo s:status
endfunc

