" vim:tabstop=2:shiftwidth=2:expandtab:textwidth=99
" Vimwiki syntax file
" Description: Defines default syntax
" Home: https://github.com/vimwiki/vimwiki/


" s:default_syntax is kind of a reference to the dict in
" g:vimwiki_syntax_variables['default']. It is used here simply as an
" abbreviation for the latter.
let s:default_syntax = g:vimwiki_syntax_variables['default']

" text: $ equation_inline $
let s:default_syntax.rxEqIn = '\$[^$`]\+\$'
let s:default_syntax.char_eqin = '\$'

" text: **strong** or __strong__
" let s:default_syntax.rxBold = '\*[^*]\+\*'
let s:default_syntax.rxBold = '\%(^\|\s\|[[:punct:]]\)\@<='.
      \'\(\*\|_\)\{2\}'.
      \'\%([^*_`[:space:]][^*_`]*[^*_`[:space:]]\|[^*_`[:space:]]\)'.
      \'\1\{2\}'.
      \'\%([[:punct:]]\|\s\|$\)\@='
let s:default_syntax.char_bold = '\*\*\|__'

" text: *emphasis* or _emphasis_
" let s:default_syntax.rxItalic = '_[^_]\+_'
let s:default_syntax.rxItalic = '\%(^\|\s\|[[:punct:]]\)\@<='.
      \'\(\*\|_\)'.
      \'\%([^*_`[:space:]][^*_`]*[^*_`[:space:]]\|[^*_`[:space:]]\)'.
      \'\1'.
      \'\%([[:punct:]]\|\s\|$\)\@='
let s:default_syntax.char_italic = '\*\|_'

" text: *_bold italic_* or _*italic bold*_
let s:default_syntax.rxBoldItalic = '\%(^\|\s\|[[:punct:]]\)\@<='.
      \'\*_'.
      \'\%([^*_`[:space:]][^*_`]*[^*_`[:space:]]\|[^*_`[:space:]]\)'.
      \'_\*'.
      \'\%([[:punct:]]\|\s\|$\)\@='
let s:default_syntax.char_bolditalic = '\*_'

let s:default_syntax.rxItalicBold = '\%(^\|\s\|[[:punct:]]\)\@<='.
      \'_\*'.
      \'\%([^*_`[:space:]][^*_`]*[^*_`[:space:]]\|[^*_`[:space:]]\)'.
      \'\*_'.
      \'\%([[:punct:]]\|\s\|$\)\@='
let s:default_syntax.char_italicbold = '_\*'

" text: `code`
let s:default_syntax.rxCode = '`[^`]\+`'
let s:default_syntax.char_code = '`'

" text: ~~deleted text~~
let s:default_syntax.rxDelText = '\~\~[^~`]\+\~\~'
let s:default_syntax.char_deltext = '\~\~'

" text: ^superscript^
let s:default_syntax.rxSuperScript = '\^[^^`]\+\^'
let s:default_syntax.char_superscript = '^'

" text: ,,subscript,,
let s:default_syntax.rxSubScript = ',,[^,`]\+,,'
let s:default_syntax.char_subscript = ',,'

" generic headers
let s:default_syntax.rxH = '#'
let s:default_syntax.symH = 0



" <hr>, horizontal rule
let s:default_syntax.rxHR = '^-----*$'

" Tables. Each line starts and ends with '|'; each cell is separated by '|'
let s:default_syntax.rxTableSep = '|'

" Lists
let s:default_syntax.bullet_types = ['-', '*', '+']
let s:default_syntax.recurring_bullets = 0
let s:default_syntax.number_types = ['1.']
let s:default_syntax.list_markers = ['-', '*', '+', '1.']
let s:default_syntax.rxListDefine = '::\%(\s\|$\)'

" Preformatted text
let s:default_syntax.rxPreStart = '```'
let s:default_syntax.rxPreEnd = '```'

" Math block
let s:default_syntax.rxMathStart = '\$\$'
let s:default_syntax.rxMathEnd = '\$\$'

let s:default_syntax.rxComment = '^\s*%%.*$\|<!--[^>]*-->'
let s:default_syntax.rxTags = '\%(^\|\s\)\@<=:\%([^:[:space:]]\+:\)\+\%(\s\|$\)\@='

let s:default_syntax.header_search = '^\s*\(#\{1,6}\)\([^#].*\)$'
let s:default_syntax.header_match = '^\s*\(#\{1,6}\)#\@!\s*__Header__\s*$'
let s:default_syntax.bold_search = '\%(^\|\s\|[[:punct:]]\)\@<=\*\zs'.
      \ '\%([^*`[:space:]][^*`]*[^*`[:space:]]\|[^*`[:space:]]\)\ze\*\%([[:punct:]]\|\s\|$\)\@='
let s:default_syntax.bold_match = '\%(^\|\s\|[[:punct:]]\)\@<=\*__Text__\*'.
      \ '\%([[:punct:]]\|\s\|$\)\@='
let s:default_syntax.wikilink = '\[\[\zs[^\\\]|]\+\ze\%(|[^\\\]]\+\)\?\]\]'
let s:default_syntax.tag_search = '\(^\|\s\)\zs:\([^:''[:space:]]\+:\)\+\ze\(\s\|$\)'
let s:default_syntax.tag_match = '\(^\|\s\):\([^:''[:space:]]\+:\)*__Tag__:'.
      \ '\([^:[:space:]]\+:\)*\(\s\|$\)'
