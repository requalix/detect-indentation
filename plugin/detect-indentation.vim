function HasLeadingChar(char)
  for line in getline(0, 100)
    if line[0] == a:char
      return 1
    endif
  endfor
  return 0
endfunction

function MinNumSpaces()
  let min_num_spaces = 8
  for line in getline(0, 100)
    let num_spaces = strlen(matchstr(line, '^ *'))
    if num_spaces && num_spaces < min_num_spaces
      let min_num_spaces = num_spaces
    endif
  endfor
  return min_num_spaces
endfunction

let s:fuck_with_ruler_format = 0
if &rulerformat == ""
  let s:fuck_with_ruler_format = 1
end

function SetIndentation()
  let has_spaces = HasLeadingChar(" ")
  let has_tabs = HasLeadingChar("\t")

  if s:fuck_with_ruler_format
    set rulerformat=%l,%c%V%=%P
  end

  if has_spaces
    set et
    if has_tabs
      if s:fuck_with_ruler_format
        set rulerformat=%25(^[\\t\ ]\ \ %l,%c%V%=%P%)
      else
        echom "Some weird spaces and tabs shit going on in this file"
      end
    endif
    let num_spaces = MinNumSpaces()
    let &sw = num_spaces
    let &ts = num_spaces
    let &sts = num_spaces
  elseif has_tabs
    set noet
  end
endfunction

autocmd BufEnter * call SetIndentation()
" autocmd BufReadPost * call SetIndentation()
