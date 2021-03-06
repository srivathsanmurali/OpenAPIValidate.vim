if exists('vim_openapi_validator')
  finish
else
  let g:vim_openapi_validator = 1
  let g:OpenAPISchema = get(g:, 'OpenAPISchema', '3.0.0')
  let g:OpenAPICmd = get(g:, 'OpenAPICmdLine','openapi-spec-validator')
  let g:OpenAPICmdLine = g:OpenAPICmd . ' --schema ' . g:OpenAPISchema . ' '

  command! OAPValidate :call s:openapi_validate()
endif


function! s:openapi_validate()
	if &modified
		echohl WarningMsg | echo 'Unsaved buffer. Quitting.' | echohl NONE
		return
	endif
  
	let filepath = shellescape(expand('%:p'))
	let output = system(g:OpenAPICmdLine . filepath)

	if strlen(output) > 3
    "add output to quickfix window
		cexpr output 
		copen "open the quickfix window
	else
		echo "Valid OpenAPI specification."
	endif
endfunction
