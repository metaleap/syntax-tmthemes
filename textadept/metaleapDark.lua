-- theme for the marvellous (non-Electron & non-Python & foss & BSD-compatible) `textadept` editor

local buffer = buffer
local p, pi = buffer.property, buffer.property_int

p['color.ml_nope'] = 0x00ff00
p['color.ml_err'] = 0x0000ff

p['color.ml_back'] = 0x484C4F -- '#4F4C48'
p['color.ml_fore'] = 0xb0b4b7 -- '#b7b4b0'

p['color.ml_caret'] = 0x5090E0 -- '#E09050'
p['color.ml_guide'] = 0x373d42 -- '#423d37'
p['color.ml_highlight1'] = 0x806040 -- '#406080'
p['color.ml_highlight2'] = 0x204080 -- '#804020'
p['color.ml_highlight3'] = 0xf5f0f3 -- '#F3F0F5'
p['color.ml_highlight4'] = 0x504840 -- '#404850'
p['color.ml_highlight5'] = 0x2040a0 -- '#A04020'
p['color.ml_highlightLine1'] = 0x35393c -- '#3c3935'
p['color.ml_highlightLine2'] = 0x404447 -- '#474440'
p['color.ml_highlightSelection'] = 0x304020 -- '#204030'
p['color.ml_selection'] = 0x604020 -- '#204060'

p['color.ml_ui_dark1'] = 0x383c3f -- '#3f3c38'
p['color.ml_ui_dark2'] = 0x282c2f -- '#2f2c28'
p['color.ml_ui_blue'] = 0x7b5b3b -- '#3b5b7b'
p['color.ml_ui_header'] = 0x084880 -- '#804808'
p['color.ml_ui_listitemselinactive'] = 0x31363b -- '#3b3631'
p['color.ml_ui_infoforelite'] = 0xedf4f7 -- '#f7f4ed'
p['color.ml_ui_infoforedark'] = 0x504020 -- '#204050'
p['color.ml_ui_infoback'] = 0xd0c0a0 -- '#a0c0d0'
p['color.ml_ui_paneltitle'] = 0xab8b6b -- '#6b8bab'

p['color.ml_blue1'] = 0xdfac8b -- '#8bacdf'
p['color.ml_blue2'] = 0xa09060 -- '#6090A0'
p['color.ml_blue3'] = 0xbfcd98 -- '#98cdbf'
p['color.ml_ored1'] = 0x98c8e8 -- '#e8c898'
p['color.ml_ored2'] = 0x86b6d6 -- '#d6b686'
p['color.ml_ored3'] = 0x5898d0 -- '#D09858'
p['color.ml_ored4'] = 0x3060c0 -- '#C06030'
p['color.ml_ored5'] = 0xa0c0d0 -- '#d0c0a0'
p['color.ml_ored6'] = 0x80a0d0 -- '#D0A080'
p['color.ml_gtur1'] = 0xa0a898 -- '#98A8A0'
p['color.ml_gred1'] = 0x7b8b9b -- '#9b8b7b'
p['color.ml_gred2'] = 0x41464b -- '#4b4641'
p['color.ml_gred3'] = 0x71787c -- '#7c7871'
p['color.ml_gred4'] = 0x393f44 -- '#443f39'
p['color.ml_pink1'] = 0xa880c0 -- '#c080a8'
p['color.ml_green1'] = 0x98b090 -- '#90b098'
p['color.ml_turq1'] = 0x809030 -- '#309080'
p['color.ml_turq2'] = 0xc0b080 -- '#80B0C0'

-- Predefined styles.
p['style.default'] = 'font:$(font),size:$(fontsize),fore:$(color.ml_fore),back:$(color.ml_back)'
p['style.linenumber'] = 'fore:$(color.ml_gred3),back:$(color.ml_back),size:11'
p['style.controlchar'] = 'fore:$(color.ml_nope),back:$(color.ml_err)'
p['style.indentguide'] = 'fore:$(color.ml_gred3)'
p['style.calltip'] = 'fore:$(color.ml_ui_infoforedark),back:$(color.ml_ui_infoback)'
p['style.folddisplaytext'] = 'fore:$(color.ml_nope)'

-- Token styles.
p['style.class'] = 'fore:$(color.ml_ored1)'
p['style.comment'] = 'fore:$(color.ml_gred1)'
p['style.constant'] = 'fore:$(color.ml_ored4),italics'
p['style.embedded'] = '$(style.keyword),back:$(color.ml_ui_dark1)'
p['style.error'] = 'fore:$(color.ml_err)'
p['style.function'] = 'fore:$(color.ml_ored2)'
p['style.identifier'] = ''
p['style.keyword'] = 'fore:$(color.ml_blue1)'
p['style.label'] = 'fore:$(color.ml_blue2)'
p['style.number'] = 'fore:$(color.ml_pink1)'
p['style.operator'] = 'fore:$(color.ml_green1),bold'
p['style.preprocessor'] = 'fore:$(color.ml_nope)'
p['style.regex'] = 'fore:$(color.ml_nope)'
p['style.string'] = 'fore:$(color.ml_ored6)'
p['style.type'] = 'fore:$(color.ml_ored3)'
p['style.variable'] = 'fore:$(color.ml_ored5)'
p['style.whitespace'] = 'fore:$(color.ml_highlightLine1)'

-- Multiple Selection and Virtual Space
--buffer.additional_sel_fore =
--buffer.additional_sel_back =
--buffer.additional_caret_fore =

-- Caret and Selection Styles.
buffer:set_sel_fore(true, pi['color.ml_fore'])
buffer:set_sel_back(true, pi['color.ml_ui_blue'])
buffer.caret_fore = pi['color.ml_caret']
buffer.caret_line_back = pi['color.ml_highlightLine2']

-- Fold Margin.
buffer:set_fold_margin_colour(true, pi['color.ml_back'])
buffer:set_fold_margin_hi_colour(true, pi['color.ml_back'])

-- Markers.
local MARK_BOOKMARK = textadept.bookmarks.MARK_BOOKMARK
buffer.marker_fore[MARK_BOOKMARK] = pi['color.ml_highlight3']
buffer.marker_back[MARK_BOOKMARK] = pi['color.ml_highlight5']
--buffer.marker_fore[textadept.run.MARK_WARNING] = pi['color.ml_nope']
buffer.marker_back[textadept.run.MARK_WARNING] = pi['color.ml_nope']
--buffer.marker_fore[textadept.run.MARK_ERROR] = pi['color.ml_nope']
buffer.marker_back[textadept.run.MARK_ERROR] = pi['color.ml_nope']
for i = 25, 31 do -- fold margin markers
    buffer.marker_fore[i] = pi['color.ml_back']
    buffer.marker_back[i] = pi['color.ml_gred3']
    buffer.marker_back_selected[i] = pi['color.ml_nope']
end

-- Indicators.
buffer.indic_fore[ui.find.INDIC_FIND] = pi['color.ml_nope']
local INDIC_BRACEMATCH = textadept.editing.INDIC_BRACEMATCH
buffer.indic_fore[INDIC_BRACEMATCH] = pi['color.ml_gred1']
local INDIC_HIGHLIGHT = textadept.editing.INDIC_HIGHLIGHT
buffer.indic_fore[INDIC_HIGHLIGHT] = pi['color.ml_highlight5']
local INDIC_PLACEHOLDER = textadept.snippets.INDIC_PLACEHOLDER
buffer.indic_fore[INDIC_PLACEHOLDER] = pi['color.ml_nope']

-- Call tips.
buffer.call_tip_fore_hlt = pi['color.ml_ored4']

-- Long Lines.
buffer.edge_colour = pi['color.ml_gred4']
