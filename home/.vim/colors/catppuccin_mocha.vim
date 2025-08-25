" Name: catppuccin_mocha.vim

set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='catppuccin_mocha'
set t_Co=256

let s:rosewater = "#F5E0DC"
let s:flamingo = "#F2CDCD"
let s:pink = "#F5C2E7"
let s:mauve = "#CBA6F7"
let s:red = "#F38BA8"
let s:maroon = "#EBA0AC"
let s:peach = "#FAB387"
let s:yellow = "#F9E2AF"
let s:green = "#A6E3A1"
let s:teal = "#94E2D5"
let s:sky = "#89DCEB"
let s:sapphire = "#74C7EC"
let s:blue = "#89B4FA"
let s:lavender = "#B4BEFE"

let s:text = "#CDD6F4"
let s:subtext1 = "#BAC2DE"
let s:subtext0 = "#A6ADC8"
let s:overlay2 = "#9399B2"
let s:overlay1 = "#7F849C"
let s:overlay0 = "#6C7086"
let s:surface2 = "#585B70"
let s:surface1 = "#45475A"
let s:surface0 = "#313244"

let s:base = "#1E1E2E"
let s:mantle = "#181825"
let s:crust = "#11111B"

let s:rosewater_256 = "224"
let s:flamingo_256 = "224"
let s:pink_256 = "218"
let s:mauve_256 = "183"
let s:red_256 = "211"
let s:maroon_256 = "217"
let s:peach_256 = "216"
let s:yellow_256 = "223"
let s:green_256 = "151"
let s:teal_256 = "116"
let s:sky_256 = "117"
let s:sapphire_256 = "117"
let s:blue_256 = "111"
let s:lavender_256 = "147"

let s:text_256 = "189"
let s:subtext1_256 = "146"
let s:subtext0_256 = "146"
let s:overlay2_256 = "103"
let s:overlay1_256 = "103"
let s:overlay0_256 = "60"
let s:surface2_256 = "59"
let s:surface1_256 = "17"
let s:surface0_256 = "16"

let s:base_256 = "16"
let s:mantle_256 = "16"
let s:crust_256 = "16"

function! s:hi(group, guisp, guifg, guibg, gui, cterm, ctermfg, ctermbg)
  let cmd = ""
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:gui != ""
    let cmd = cmd . " gui=" . a:gui
  endif
  if a:cterm != ""
    let cmd = cmd . " cterm=" . a:cterm
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction



call s:hi("Normal", "NONE", s:text, s:base, "NONE", "NONE", s:text_256, "NONE")
call s:hi("Visual", "NONE", "NONE", s:surface1,"bold", "bold", "NONE", s:overlay0_256)
call s:hi("Conceal", "NONE", s:overlay1, "NONE", "NONE", "NONE", s:overlay1_256, "NONE")
call s:hi("ColorColumn", "NONE", "NONE", s:surface0, "NONE", "NONE", "NONE", s:surface0_256)
call s:hi("Cursor", "NONE", s:base, s:rosewater, "NONE", "NONE", s:base_256, s:rosewater_256)
call s:hi("lCursor", "NONE", s:base, s:rosewater, "NONE", "NONE", s:base_256, s:rosewater_256)
call s:hi("CursorIM", "NONE", s:base, s:rosewater, "NONE", "NONE", s:base_256, s:rosewater_256)
call s:hi("CursorColumn", "NONE", "NONE", s:mantle, "NONE", "NONE", "NONE", s:mantle_256)
call s:hi("CursorLine", "NONE", "NONE", s:surface0, "NONE", "NONE", "NONE", s:overlay0_256)
call s:hi("Directory", "NONE", s:blue, "NONE", "NONE", "NONE", s:blue_256, "NONE")
call s:hi("DiffAdd", "NONE", s:base, s:green, "NONE", "NONE", s:base_256, s:green_256)
call s:hi("DiffChange", "NONE", s:base, s:yellow, "NONE", "NONE", s:base_256, s:yellow_256)
call s:hi("DiffDelete", "NONE", s:base, s:red, "NONE", "NONE", s:base_256, s:red_256)
call s:hi("DiffText", "NONE", s:base, s:blue, "NONE", "NONE", s:base_256, s:blue_256)
call s:hi("EndOfBuffer", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE")
call s:hi("ErrorMsg", "NONE", s:red, "NONE", "bolditalic", "bold,italic", s:red_256, "NONE")
call s:hi("VertSplit", "NONE", s:crust, "NONE", "NONE", "NONE", s:crust_256, "NONE")
call s:hi("Folded", "NONE", s:blue, s:surface1, "NONE", "NONE", s:blue_256, s:surface1_256)
call s:hi("FoldColumn", "NONE", s:overlay0, s:base, "NONE", "NONE", s:overlay0_256, s:base_256)
call s:hi("SignColumn", "NONE", s:surface1, s:base, "NONE", "NONE", s:surface1_256, s:base_256)
call s:hi("IncSearch", "NONE", s:surface1, s:pink, "NONE", "NONE", s:surface1_256, s:pink_256)
call s:hi("CursorLineNR", "NONE", s:lavender, "NONE", "NONE", "NONE", s:lavender_256, "NONE")
call s:hi("LineNr", "NONE", s:surface1, "NONE", "NONE", "NONE", s:overlay0_256, "NONE")
call s:hi("MatchParen", "NONE", s:peach, "NONE", "bold", "bold", s:peach_256, "NONE")
call s:hi("ModeMsg", "NONE", s:text, "NONE", "bold", "bold", s:text_256, "NONE")
call s:hi("MoreMsg", "NONE", s:blue, "NONE", "NONE", "NONE", s:blue_256, "NONE")
call s:hi("NonText", "NONE", s:overlay0, "NONE", "NONE", "NONE", s:overlay0_256, "NONE")
call s:hi("Pmenu", "NONE", s:overlay2, s:surface0, "NONE", "NONE", s:overlay2_256, s:surface0_256)
call s:hi("PmenuSel", "NONE", s:text, s:surface1, "bold", "bold", s:text_256, s:surface1_256)
call s:hi("PmenuSbar", "NONE", "NONE", s:surface1, "NONE", "NONE", "NONE", s:surface1_256)
call s:hi("PmenuThumb", "NONE", "NONE", s:overlay0, "NONE", "NONE", "NONE", s:overlay0_256)
call s:hi("Question", "NONE", s:blue, "NONE", "NONE", "NONE", s:blue_256, "NONE")
call s:hi("QuickFixLine", "NONE", "NONE", s:surface1, "bold", "bold", "NONE", s:surface1_256)
call s:hi("Search", "NONE", s:pink, s:surface1, "bold", "bold", s:pink_256, s:surface1_256)
call s:hi("SpecialKey", "NONE", s:subtext0, "NONE", "NONE", "NONE", s:subtext0_256, "NONE")
call s:hi("SpellBad", "NONE", s:base, s:red, "NONE", "NONE", s:base_256, s:red_256)
call s:hi("SpellCap", "NONE", s:base, s:yellow, "NONE", "NONE", s:base_256, s:yellow_256)
call s:hi("SpellLocal", "NONE", s:base, s:blue, "NONE", "NONE", s:base_256, s:blue_256)
call s:hi("SpellRare", "NONE", s:base, s:green, "NONE", "NONE", s:base_256, s:green_256)
call s:hi("StatusLine", "NONE", s:text, s:mantle, "NONE", "NONE", s:text_256, s:mantle_256)
call s:hi("StatusLineNC", "NONE", s:surface1, s:mantle, "NONE", "NONE", s:surface1_256, s:mantle_256)
call s:hi("StatusLineTerm", "NONE", s:text, s:mantle, "NONE", "NONE", s:text_256, s:mantle_256)
call s:hi("StatusLineTermNC", "NONE", s:surface1, s:mantle, "NONE", "NONE", s:surface1_256, s:mantle_256)
call s:hi("TabLine", "NONE", s:surface1, s:mantle, "NONE", "NONE", s:surface1_256, s:mantle_256)
call s:hi("TabLineFill", "NONE", "NONE", s:mantle, "NONE", "NONE", "NONE", s:mantle_256)
call s:hi("TabLineSel", "NONE", s:green, s:surface1, "NONE", "NONE", s:green_256, s:surface1_256)
call s:hi("Title", "NONE", s:blue, "NONE", "bold", "bold", s:blue_256, "NONE")
call s:hi("VisualNOS", "NONE", "NONE", s:surface1, "bold", "bold", "NONE", s:surface1_256)
call s:hi("WarningMsg", "NONE", s:yellow, "NONE", "NONE", "NONE", s:yellow_256, "NONE")
call s:hi("WildMenu", "NONE", "NONE", s:overlay0, "NONE", "NONE", "NONE", s:overlay0_256)
call s:hi("Comment", "NONE", s:overlay0, "NONE", "NONE", "NONE", s:overlay0_256, "NONE")
call s:hi("Constant", "NONE", s:peach, "NONE", "NONE", "NONE", s:peach_256, "NONE")
call s:hi("Identifier", "NONE", s:flamingo, "NONE", "NONE", "NONE", s:flamingo_256, "NONE")
call s:hi("Statement", "NONE", s:mauve, "NONE", "NONE", "NONE", s:mauve_256, "NONE")
call s:hi("PreProc", "NONE", s:pink, "NONE", "NONE", "NONE", s:pink_256, "NONE")
call s:hi("Type", "NONE", s:blue, "NONE", "NONE", "NONE", s:blue_256, "NONE")
call s:hi("Special", "NONE", s:pink, "NONE", "NONE", "NONE", s:pink_256, "NONE")
call s:hi("Underlined", "NONE", s:text, s:base, "underline", "underline", s:text_256, s:base_256)
call s:hi("Error", "NONE", s:red, "NONE", "NONE", "NONE", s:red_256, "NONE")
call s:hi("Todo", "NONE", s:base, s:flamingo, "bold", "bold", s:base_256, s:flamingo_256)

call s:hi("String", "NONE", s:green, "NONE", "NONE", "NONE", s:green_256, "NONE")
call s:hi("Character", "NONE", s:teal, "NONE", "NONE", "NONE", s:teal_256, "NONE")
call s:hi("Number", "NONE", s:peach, "NONE", "NONE", "NONE", s:peach_256, "NONE")
call s:hi("Boolean", "NONE", s:peach, "NONE", "NONE", "NONE", s:peach_256, "NONE")
call s:hi("Float", "NONE", s:peach, "NONE", "NONE", "NONE", s:peach_256, "NONE")
call s:hi("Function", "NONE", s:blue, "NONE", "NONE", "NONE", s:blue_256, "NONE")
call s:hi("Conditional", "NONE", s:red, "NONE", "NONE", "NONE", s:red_256, "NONE")
call s:hi("Repeat", "NONE", s:red, "NONE", "NONE", "NONE", s:red_256, "NONE")
call s:hi("Label", "NONE", s:peach, "NONE", "NONE", "NONE", s:peach_256, "NONE")
call s:hi("Operator", "NONE", s:sky, "NONE", "NONE", "NONE", s:sky_256, "NONE")
call s:hi("Keyword", "NONE", s:pink, "NONE", "NONE", "NONE", s:pink_256, "NONE")
call s:hi("Include", "NONE", s:pink, "NONE", "NONE", "NONE", s:pink_256, "NONE")
call s:hi("StorageClass", "NONE", s:yellow, "NONE", "NONE", "NONE", s:yellow_256, "NONE")
call s:hi("Structure", "NONE", s:yellow, "NONE", "NONE", "NONE", s:yellow_256, "NONE")
call s:hi("Typedef", "NONE", s:yellow, "NONE", "NONE", "NONE", s:yellow_256, "NONE")
call s:hi("debugPC", "NONE", "NONE", s:crust, "NONE", "NONE", "NONE", s:crust_256)
call s:hi("debugBreakpoint", "NONE", s:overlay0, s:base, "NONE", "NONE", s:overlay0_256, s:base_256)

hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special
hi link Exception Error
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link Terminal Normal
hi link Ignore Comment

" Set terminal colors for playing well with plugins like fzf
let g:terminal_ansi_colors = [
  \ s:surface1, s:red, s:green, s:yellow, s:blue, s:pink, s:teal, s:subtext1,
  \ s:surface2, s:red, s:green, s:yellow, s:blue, s:pink, s:teal, s:subtext0
\ ]
