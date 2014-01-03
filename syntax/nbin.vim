
if exists("b:current_syntax")
      finish
endif

syntax clear

syn match call "CALL.*"
syn match string  "`.*'"
syn match lineno "\[.*\]"
syn match comment "/\*.*\*/"
syn match constant "0x[0-9a-fL]\+"
syn match expression "\vEXPR[A-Z_]+|COMP[A-Z_]+"
syn match identifier "\vGLOBAL|LOCAL"

hi def link call Statement
hi def link string String
hi def link lineno LineNr
hi def link comment Comment
hi def link expression PreProc

let b:current_syntax = "nbin"
