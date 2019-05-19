func! s:call_cmus_remote(arg)
    system("cmus-remote " . arg)
endfunc

func! s:create_status_dict()
  let s:raw_data = s:call_cmus_remote("-Q")

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


func! cmus#show_status()
  let s:status = s:create_status_dict()
  for [key, value] in items(s:status)
    echo key . ': ' . value
  endfor
endfunc


func! cmus#start()
  s:call_cmus_remote("--play")
endfunc

func! cmus#stop()
  s:call_cmus_remote("--stop")
endfunc

func! cmus#pause()
  s:call_cmus_remote("--pause")
endfunc

func! cmus#pause_playback()
  s:call_cmus_remote("--pause-playback")
endfunc

func! cmus#next()
  s:call_cmus_remote("--stop")
endfunc

func! cmus#prev()
  s:call_cmus_remote("--prev")
endfunc
