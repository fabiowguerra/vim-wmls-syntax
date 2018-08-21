" Vim syntax file
" Language:	WML Script

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
runtime! syntax/c.vim
unlet b:current_syntax

" wmls extensions
syn keyword wmlsStatement   function
syn keyword wmlsType		var string integer real boolean array
syn keyword wmlsAccess		extern
syn keyword wmlsOperator	typeof isvalid
syn keyword wmlsBoolean		true false

syn keyword wmlsLib Lang Float String URL WMLBrowser Dialogs Array File Console RecordStore Crypto Printer Card System PINPad ISO Mifare CardSlot Ecr Serial XML Transact SmartCard XLS Message ATC LibInfo Contactless Capture Video Bluetooth Plugin BmpCanvas

" Default highlighting
hi def link wmlsAccess		wmlsStatement
hi def link wmlsStatement	Statement
hi def link wmlsModifier	Type
hi def link wmlsType		Type
hi def link wmlsOperator	Operator
hi def link wmlsBoolean		Boolean
hi def link wmlsLib		Constant

let b:current_syntax = "wmls"

