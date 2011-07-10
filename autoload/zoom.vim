" keep default value
function! s:zoomInit()
  if !exists("s:zoom_initialized")
    let s:zoom_initialized = 1
    let s:current_font = &guifont
    let s:current_fontwide = &guifontwide
  endif
endfunction

" guifont size + 1
function! zoom#ZoomIn()
  call s:zoomInit()
  let l:fsize = substitute(&guifont, '^.*:h\([^:]*\).*$', '\1', '')
  let l:fsizewide = substitute(&guifontwide, '^.*:h\([^:]*\).*$', '\1', '')
  let l:fsize += 1
  let l:fsizewide += 1
  let l:guifont = substitute(&guifont, ':h\([^:]*\)', ':h' . l:fsize, '')
  let l:guifontwide = substitute(&guifontwide, ':h\([^:]*\)', ':h' . l:fsizewide, '')
  let &guifont = l:guifont
  let &guifontwide = l:guifontwide
endfunction

" guifont size - 1
function! zoom#ZoomOut()
  call s:zoomInit()
  let l:fsize = substitute(&guifont, '^.*:h\([^:]*\).*$', '\1', '')
  let l:fsizewide = substitute(&guifontwide, '^.*:h\([^:]*\).*$', '\1', '')
  let l:fsize -= 1
  let l:fsizewide -= 1
  let l:guifont = substitute(&guifont, ':h\([^:]*\)', ':h' . l:fsize, '')
  let l:guifontwide = substitute(&guifontwide, ':h\([^:]*\)', ':h' . l:fsizewide, '')
  let &guifont = l:guifont
  let &guifontwide = l:guifontwide
endfunction

" reset guifont size
function! zoom#ZoomReset()
  call s:zoomInit()
  let &guifont = s:current_font
  let &guifontwide = s:current_fontwide
endfunction
