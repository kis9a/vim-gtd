setlocal background=dark
let b:current_syntax = 'GTD'

" Color Definitions
hi def gtdGreen term=NONE ctermfg=47 guifg=#689d6a
hi def gtdLightGreen term=NONE ctermfg=142 guifg=#b8bb26

hi def gtdBlue term=NONE ctermfg=24 guifg=blue
hi def gtdLightBlue term=NONE ctermfg=109 guifg=#076678

hi def gtdRed term=NONE ctermfg=9 guifg=#ff0000
hi def gtdLightRed term=NONE ctermfg=167 guifg=#df5f5f

hi def gtdOrange term=NONE ctermfg=208 guifg=orange
hi def gtdOrangeLight term=NONE ctermfg=208 guifg=#fe8019

hi def gtdPurple term=NONE ctermfg=96 guifg=#8f3f71
hi def gtdPurpleLight term=NONE ctermfg=132 guifg=#b16286

hi def gtdLight term=NONE ctermfg=223 guifg=#ebcdb2
hi def gtdLight0 term=NONE ctermfg=250 guifg=#d5c4a1

hi def gtdGray term=NONE ctermfg=244 guifg=#928374
hi def gtdDark term=NONE ctermfg=241 guifg=#665c54
hi def gtdDark0 term=NONE ctermfg=239 guifg=#504945


" Date
syn match gtdDate /^\v\d{4}$/
syn match gtdDate /^\v\d{4}\/\d{2}$/
syn match gtdDate /^\v\d{4}\-\d{2}$/
syn match gtdDate /^\v\d{4}\-\d{2}\-\d{2}$/
syn match gtdDate /^\v\d{4}\/\d{2}\/\d{2}$/

hi! link gtdDate gtdOrangeLight

" Header
syn match gtdHeader /^#\s.*/
syn match gtdHeader /^##\s.*/
syn match gtdHeader /^###\s.*/
syn match gtdHeader /^####\s.*/
syn match gtdHeader /^#####\s.*/
syn match gtdHeader /^######\s.*/

hi! link gtdHeader gtdPurple

" Task status
syn match gtdIdea /^-\s.*/
syn match gtdIdea /^\s\s-\s.*/
syn match gtdTodo /^o\s.*/
syn match gtdTodo /^\s\so\s.*/
syn match gtdDone /^x\s.*/
syn match gtdDone /^\s\sx\s.*/
syn match gtdStop /^\~\s.*/
syn match gtdStop /^\s\s\~\s.*/
syn match gtdEmergency /^\!\s.*/
syn match gtdEmergency /^\s\s!\s.*/

hi! link gtdIdea gtdLight
hi! link gtdTodo gtdGreen
hi! link gtdDone gtdDark
hi! link gtdStop gtdDark0
hi! link gtdEmergency gtdRed

" Option
syn match gtdTime containedin=gtdIdea,gtdTodo,gtdEmergency /\v\(\d{1}\)/
syn match gtdTime containedin=gtdIdea,gtdTodo,gtdEmergency /\v\(\d{1}\/\d{1}\)/
syn match gtdTag containedin=gtdIdea,gtdTodo,gtdEmergency /\v\#(\w+)/
syn match gtdVar containedin=gtdIdea,gtdTodo,gtdEmergency /\v\$(\w+)/
syn match gtdComment containedin=gtdEmergency,gtdIdea,gtdTodo,gtdEmergency /\/\/\s*.*/
syn region gtdComment containedin=gtdEmergency,gtdIdea,gtdTodo,gtdDone,gtdStop,gtdEmergency start="/\*" end="\*/"
syn match gtdUrl containedin=gtdIdea,gtdTodo,gtdEmergency /http[s]\?:\/\/[[:alnum:]%\/_#.\=\:\;\,\-\&\?]*/
syn match gtdUrl containedin=gtdIdea,gtdTodo,gtdEmergency /<http[s]\?:\/\/[[:alnum:]%\/_#.\=\:\;\,\-\&\?]*>/
syn match gtdUrl containedin=gtdIdea,gtdTodo,gtdEmergency /\[.*\](http[s]\?:\/\/[[:alnum:]%\/_#.\=\:\;\,\-\&\?]*)/

hi! link gtdTag gtdPurpleLight
hi! link gtdTime gtdLightRed
hi! link gtdComment gtdGray
hi! link gtdUrl gtdLightBlue
hi! link gtdVar gtdOrange
