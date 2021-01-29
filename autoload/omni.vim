let s:overrides = get(g:, "omni_color_overrides", {})

" white_mask_<number>: Color of a white mask overlayed on top of
" `s:colors.black`, where `number * 12` is the alpha value of the white mask

let s:colors = {
      \ "black": get(s:overrides, "black", { "gui": "#201b2d", "cterm": "235", "cterm16": "0" }),
      \ "red": get(s:overrides, "red", { "gui": "#ff79c6", "cterm": "204", "cterm16": "1" }),
      \ "green": get(s:overrides, "green", { "gui": "#67e480", "cterm": "114", "cterm16": "2" }),
      \ "yellow": get(s:overrides, "yellow", { "gui": "#e7de79", "cterm": "180", "cterm16": "3" }),
      \ "blue": get(s:overrides, "blue", { "gui": "#78d1e1", "cterm": "39", "cterm16": "4" }),
      \ "purple": get(s:overrides, "purple", { "gui": "#988bc7", "cterm": "170", "cterm16": "5" }),
      \ "cyan": get(s:overrides, "cyan", { "gui": "#a1efe4", "cterm": "38", "cterm16": "6" }),
      \ "white": get(s:overrides, "white", { "gui": "#e1e1e6", "cterm": "145", "cterm16": "7" }),
      \ "visual_grey": get(s:overrides, "visual_grey", { "gui": "#626483", "cterm": "237", "cterm16": "15" }),
      \ "dark_red": get(s:overrides, "dark_red", { "gui": "#ed4556", "cterm": "196", "cterm16": "9" }),
      \ "dark_yellow": get(s:overrides, "dark_yellow", { "gui": "#e7de79", "cterm": "173", "cterm16": "11" }),
      \ "comment_grey": get(s:overrides, "comment_grey", { "gui": "#5a4b81", "cterm": "59", "cterm16": "15" }),
      \ "light_red": get(s:overrides, "light_red", { "gui": "#ed4556", "cterm": "204", "cterm16": "1" }),
      \ "blue_purple": get(s:overrides, "blue_purple", { "gui": "#939ede", "cterm": "39", "cterm16": "4"}),
      \ "visual_black": get(s:overrides, "visual_black", { "gui": "NONE", "cterm": "NONE", "cterm16": "0" }),
      \ "gutter_fg_grey": get(s:overrides, "gutter_fg_grey", { "gui": "#4b5263", "cterm": "238", "cterm16": "15" }),
      \ "cursor_grey": get(s:overrides, "cursor_grey", { "gui": "#2c323c", "cterm": "236", "cterm16": "8" }),
      \ "menu_grey": get(s:overrides, "menu_grey", { "gui": "#3e4452", "cterm": "237", "cterm16": "8" }),
      \ "special_grey": get(s:overrides, "special_grey", { "gui": "#3b4048", "cterm": "238", "cterm16": "15" }),
      \ "vertsplit": get(s:overrides, "vertsplit", { "gui": "#181a1f", "cterm": "59", "cterm16": "15" }),
      \ "white_mask_1": get(s:overrides, "white_mask_1", { "gui": "#333747", "cterm": "237", "cterm16": "15" }),
      \ "white_mask_3": get(s:overrides, "white_mask_3", { "gui": "#474b59", "cterm": "238", "cterm16": "15" }),
      \ "white_mask_11": get(s:overrides, "white_mask_11", { "gui": "#989aa2", "cterm": "238", "cterm16": "15" })
      \}

function! omni#GetColors()
  return s:colors
endfunction
