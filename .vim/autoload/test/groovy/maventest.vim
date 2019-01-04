" https://github.com/janko-m/vim-test#extending

let g:test#groovy#patterns = {
  \ 'test':      ['\v^\s*%(public void (\w+)|def\s*(".*"))'],
  \ 'namespace': ['\v^\s*%(public )?class (\w+)'],
\}

if !exists('g:test#groovy#maventest#file_pattern')
  let g:test#groovy#maventest#file_pattern = '\v^([Tt]est.*|.*[Tt]est(s|Case)?|.*[Ss]pec)\.groovy'
endif

function! test#groovy#maventest#test_file(file) abort
  return a:file =~? g:test#groovy#maventest#file_pattern
endfunction

function! test#groovy#maventest#build_position(type, position) abort
  let filename = fnamemodify(a:position['file'], ':t:r')

  if a:type ==# 'nearest'
    let name = s:nearest_test(a:position)
    if !empty(name)
      return ['-Dtest=' . name]
    else
      return ['-Dtest=' . filename]
    endif
  elseif a:type ==# 'file'
    return ['-Dtest=' . filename]
  else
    return []
  endif
endfunction

function! test#groovy#maventest#build_args(args) abort
  return a:args
endfunction

function! test#groovy#maventest#executable() abort
  return 'mvn test'
endfunction

function! s:nearest_test(position) abort
  let name = test#base#nearest_test(a:position, g:test#groovy#patterns)
  return escape(join(name['namespace'] + name['test'], '#'), '#')
endfunction
