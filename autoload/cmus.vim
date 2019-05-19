func! s:create_status_dict()
  let s:raw_data = systemlist("cmus-remote -Q")

  let s:status = {}
  for line in s:raw_data
    let s:words = split(line)

    if s:words[0] == 'status' || s:words[0] == 'file' || s:words[0] == 'duration' || s:words[0] == 'position'
      let s:status[s:words[0]] = join(s:words[1:])
    elseif s:words[0] == 'set' || s:words[0] == 'tag'
      let s:status[s:words[1]] = join(s:words[2:])
    endif
  endfor

  return s:status
endfunc


func! cmus#show_status(target)
  let s:status = s:create_status_dict()
  if a:target == ""
    for [key, value] in items(s:status)
      echo key . ': ' . value
    endfor
    return
  endif

  if has_key(s:status, a:target)
    echo a:target . ': ' . s:status[a:target]
  else
    echoe 'key "' . a:target . '" does not exist'
  endif
endfunc

func! cmus#start()
  call system("cmus-remote --start")
endfunc

func! cmus#stop()
  call system("cmus-remote --stop")
endfunc

func! cmus#pause()
  call system("cmus-remote --pause")
endfunc

func! cmus#pause_playback()
  call system("cmus-remote --pause-playback")
endfunc

func! cmus#next()
  call system("cmus-remote --next")
endfunc

func! cmus#prev()
  call system("cmus-remote --prev")
endfunc
