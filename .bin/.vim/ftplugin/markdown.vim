
abbreviate tl - [ ]

setlocal foldmethod=expr foldexpr=CheckboxFold(v:lnum) foldtext=CheckboxFoldText()

function! CheckboxFold(lnum)
  let line = getline(a:lnum)
  let next = getline(a:lnum + 1)
  if IsNoIndentCheckboxLine(line) && HasIndentLine(next)
    return 1
  elseif (IsNoIndentCheckboxLine(next) || next =~ '^$') && !HasIndentLine(next)
    return '<1'
  endif
  return '='
endfunction

function! IsNoIndentCheckboxLine(line)
  return a:line =~ '^- \[[ x]\] '
endfunction

function! HasIndentLine(line)
  return a:line =~ '^[[:blank:]]\+'
endfunction

function! CheckboxFoldText()
  return getline(v:foldstart) . ' (' . (v:foldend - v:foldstart) . ' lines) '
endfunction

function! IsDone(line)
  return a:line =~ '-\s\[x\]'
endfunction

function! IsUndone(line)
  return a:line =~ '-\s\[\s\]'
endfunction

function! Done(line)
  return  substitute(a:line, '-\s\[\s\]', '- [x]', '') . ' [' . strftime("%Y/%m/%d %H:%M") . ']'
endfunction

function! Undone(line)
  return  substitute(a:line, '-\s\[x\]', '- [ ]', '')
endfunction

function! ToggleCheckbox()
  let l:line = getline('.')
  if IsDone(l:line)
    call setline('.', Undone(l:line))
  elseif IsUndone(line)
    call setline('.', Done(l:line))
  endif
endfunction

nnoremap <buffer> <Leader><Leader> :call ToggleCheckbox()<CR>
vnoremap <buffer> <Leader><Leader> :call ToggleCheckbox()<CR>

syn match CheckboxMark /-\s\[x\]\s.\+/ display containedin=ALL
hi CheckboxMark ctermfg=Green
syn match CheckboxUnmark /-\s\[\s\]\s.\+/ display containedin=ALL
hi CheckboxUnmark ctermfg=Red

