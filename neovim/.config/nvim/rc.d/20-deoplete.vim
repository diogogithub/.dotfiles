" ===================================================================
" Deoplete
" ===================================================================

" Autocomplete
let g:deoplete#sources = {}
let g:deoplete#sources.php = ['omni', 'phpactor', 'ultisnips', 'buffer']
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#statement_length = 50
let g:deoplete#sources#jedi#enable_cache = 1
let g:deoplete#sources#jedi#show_docstring = 0

" disable autocomplete
let g:deoplete#disable_auto_complete = 1
if has("gui_running")
  inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()
else
  inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
endif

" deoplete + neosnippet + autopairs changes
let g:AutoPairsMapCR=0
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

"" Deoplete per-autocompleter settings
""" Clang
let g:deoplete#sources#clang#libclang_path = '/lib/libclang.so' " '/usr/lib/i386-linux-gnu/libclang-4.0.so.1'
let g:deoplete#sources#clang#clang_header = '/lib/clang/4.0.0/include' " '/usr/lib/llvm-4.0/lib/clang/4.0.0/include'

""" TernJS
let g:tern_request_timeout = 1
" let g:tern_show_signature_in_pum = '0'
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

""" Java
autocmd FileType java setlocal omnifunc=javacomplete#Complete

""" Omnifunctions
let g:deoplete#omni#functions = {}

let g:EclimCompletionMethod = 'omnifunc'
let g:deoplete#omni#functions.java = 'eclim#java#complete#CodeComplete'

let g:deoplete#omni#functions.javascript = [
      \ 'tern#Complete',
      \ 'autocomplete_flow#Complete',
      \ 'javascriptcomplete#CompleteJS'
      \]
let g:deoplete#omni#functions.css = 'csscomplete#CompleteCSS'
let g:deoplete#omni#functions.html = [
      \ 'htmlcomplete#CompleteTags',
      \ 'xmlcomplete#CompleteTags'
      \]
let g:deoplete#omni#functions.xml = 'xmlcomplete#CompleteTags'
let g:deoplete#omni#functions.perl = 'perlomni#PerlComplete'

" vim:set et sw=2:
