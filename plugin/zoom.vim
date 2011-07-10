if &cp || exists("g:loaded_zoom")
    finish
endif
let g:loaded_zoom = 1

let s:save_cpo = &cpo
set cpo&vim

" command
command! -narg=0 ZoomIn    :call zoom#ZoomIn()
command! -narg=0 ZoomOut   :call zoom#ZoomOut()
command! -narg=0 ZoomReset :call zoom#ZoomReset()

" map
nmap + :ZoomIn<CR>
nmap - :ZoomOut<CR>

let &cpo = s:save_cpo
finish

==============================================================================
zoom.vim : control gui font size with "+" or "-" keys.
------------------------------------------------------------------------------
$VIMRUNTIMEPATH/plugin/zoom.vim
==============================================================================
author  : OMI TAKU
url     : http://nanasi.jp/
email   : mail@nanasi.jp
version : 2008/07/18 10:00:00
==============================================================================

Control Vim editor font size with key "+", or key "-".
Press "+" key, Vim editor gui font size will change bigger.
And, press "-" key, Vim editor gui font size will change smaller.

This plugin is for GUI only.


Normal Mode:
    +                  ... change font size bigger
    -                  ... change font size smaller

Command-line Mode:
    :ZoomIn            ... change font size bigger
    :ZoomOut           ... change font size smaller
    :ZoomReset         ... reset font size changes.

==============================================================================

1. Copy the zoom.vim script to
   $HOME/.vim/plugin and $HOME/.vim/autoload directory.
   Refer to ':help add-plugin', ':help add-global-plugin' and
   ':help runtimepath' for more details about Vim plugins.

2. Restart Vim.

==============================================================================
" vim: set ff=unix et ft=vim nowrap :
