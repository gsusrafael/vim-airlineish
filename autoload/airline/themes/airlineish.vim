" Normal mode
let s:N1 = [ '#e6e6e6' , '#5f00af' , 15 , 55  ]
let s:N2 = [ '#e6e6e6' , '#875fd7' , 15 , 98  ]
let s:N3 = [ '#e6e6e6' , '#121212' , 15 , 233 ]

" Insert mode
let s:I1 = [ '#e6e6e6' , '#005fff' , 15 , 33  ]
let s:I2 = [ '#e6e6e6' , '#00afff' , 15 , 39  ]
let s:I3 = [ '#e6e6e6' , '#121212' , 15 , 233 ]

" Visual mode
let s:V1 = [ '#121212' , '#ff5f00' , 233 , 202 ]
let s:V2 = [ '#121212' , '#ffaf00' , 233 , 214 ]
let s:V3 = [ '#e6e6e6' , '#121212' , 15  , 233 ]

" Replace mode
let s:R1 = [ '#e6e6e6' , '#ff0000' , 15 , 196 ]
let s:R2 = [ '#e6e6e6' , '#ff5f5f' , 15 , 203 ]
let s:R3 = [ '#e6e6e6' , '#121212' , 15 , 233 ]

let g:airline#themes#airlineish#palette = {}
let g:airline#themes#airlineish#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#airlineish#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#airlineish#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#airlineish#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IN1 = [ '#9e9e9e' , '#626262' , 247 , 241 ]
let s:IN2 = [ '#e6e6e6' , '#121212' , 15  , 233 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#airlineish#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 =  [ '#e6e6e6' , '#5f00af' , 15 , 55 ]
let s:CP2 =  [ '#e6e6e6' , '#875fd7' , 15 , 98 ]
let s:CP3 =  [ '#5f00af' , '#e6e6e6' , 55 , 15 ]

let g:airline#themes#airlineish#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

" Tabline
let g:airline#themes#airlineish#palette.tabline = {
      \ 'airline_tab':     [ '#e6e6e6' , '#5f00af' ,  15 , 55  , '' ],
      \ 'airline_tabsel':  [ '#e6e6e6' , '#875fd7' ,  15 , 98  , '' ],
      \ 'airline_tabtype': [ '#e6e6e6' , '#875fd7' ,  15 , 98  , '' ],
      \ 'airline_tabfill': [ '#e6e6e6' , '#121212' ,  15 , 233 , '' ],
      \ 'airline_tabmod':  [ '#e6e6e6' , '#ff5f5f' ,  15 , 33  , '' ]
      \ }
