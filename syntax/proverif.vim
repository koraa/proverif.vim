syn spell notoplevel

syn region proverifComment start=/[(][*]/ end=/[*][)]/ fold keepend extend contains=@Spell,proverifComment,proverifTodo
syn keyword proverifTodo contained TODO FIXME XXX NB NOTE

syn keyword proverifFail fail

syn keyword proverifBoolean true false

syn keyword proverifOperator not new
syn match proverifOperator display /\(&&\|||\|<>\|<-R\|<=\|=>\|<-\|<\|>\|:\|=\|+\|-\)/
syn match proverifReplProcess display /[!]/

syn match proverifNumber display /\i\@<![-+]\?[0-9][0-9]*/

syntax keyword proverifKeyword among channel choice clauses const def elimtrue else equation equivalence event fail forall free get in insert noninterf nounif or otherwise out param phase pred proba proof putbegin reduc suchthat table weaksecret yield

syn match proverifQueryOp display /==>/
syntax keyword proverifQueryKeyword query lemma axiom restriction
syntax keyword proverifEntry process

syn keyword proverifKeyword type nextgroup=proverifType skipwhite skipempty
syn match proverifTypeAttr /:/ nextgroup=proverifType display transparent skipwhite skipempty
syn match proverifType /\i\+/ display contained

syn match proverifDelimiter /[;\.,]/

syn match proverifOption /\[[[:ident:],]*\]/

syn keyword proverifKeyword const nextgroup=proverifFuncName skipwhite skipempty
syn keyword proverifKeyword letfun nextgroup=proverifFuncName skipwhite skipempty
syn keyword proverifKeyword let nextgroup=proverifFuncName skipwhite skipempty
syn match proverifFuncName /\i\+/ display contained

syn keyword proverifKeyword fun nextgroup=proverifConstructorName skipwhite skipempty
syn match proverifConstructorName /\i\+/ nextgroup=proverifConstructorParams display contained
syn region proverifConstructorParams start="(" end=")" contains=proverifComment,proverifType contained

syn keyword proverifKeyword expand nextgroup=proverifMacroName skipwhite skipempty
syn match proverifMacroName /\i\+/ nextgroup=proverifMacroParams display contained
syn region proverifMacroParams start="(" end=")" contains=proverifComment contained

syn match proverifFuncCall "\i\(\i\)*("he=e-1,me=e-1

syn keyword proverifConditional if then else

syn keyword proverifKeyword set nextgroup=proverifConfig skipwhite skipempty
syn match proverifConfig /\i\+\s*=\s*\i\+/

hi def link proverifComment  Comment
hi def link proverifTodo     Todo
hi def link proverifBoolean  Boolean
hi def link proverifOperator Operator
hi def link proverifNumber   Number
hi def link proverifType     Type
hi def link proverifReplProcess Special
hi def link proverifFuncName Function
hi def link proverifConstructorName Function
hi def link proverifMacroName Macro
hi def link proverifMacroParams Macro
hi def link proverifFuncCall Function
hi def link proverifKeyword Keyword
hi def link proverifConditional Conditional
hi def link proverifFail Exception
hi def link proverifDelimiter Delimiter
hi def link proverifOption StorageClass
hi def link proverifConfig PreCondit
hi def link proverifQueryOp Special
hi def link proverifQueryKeyword Special
hi def link proverifEntry Special
