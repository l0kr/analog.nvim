local Color, colors, Group, groups, styles = require('colorbuddy').setup()

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new('background',  '#21242D')
Color.new('red',         '#FC003E')
Color.new('green',       '#23ce6b')
Color.new('yellow',      '#fabc3c')
Color.new('white',      '#ffffff')
Color.new('black',      '#000000')
Color.new('blue',      '#20a4f3')
Color.new('orange',      '#fabc3c')
Color.new('dust',      '#70877f')
Color.new('grey',      '#b0b1b0')
--Color.new('violet',      '7a28cb')

-- Define highlights in terms of `colors` and `groups`
Group.new('Identifier', colors.white:dark(), colors.background , styles.bold)
Group.new('Function', colors.dust, colors.background , styles.italic)
Group.new('String', colors.orange, colors.background , styles.italic)
Group.new('luaFunctionCall' , groups.Function    , groups.Function   , groups.Function)
 
-- Define highlights in relative terms of other colors
Group.new('Error', colors.black, colors.white , styles.bold)
Group.new('Special', colors.red , colors.background , styles.bold)
Group.new('text.danger', colors.red , colors.background , styles.bold)
Group.new('text.warning', colors.red , colors.background , styles.bold)
Group.new('ErrorMsg', colors.black , colors.white , styles.bold)
Group.new('DiagnosticVirtualTextError', colors.black:light() , colors.red:dark() , styles.bold)
--Group.new('DiagnosticVirtualTextError', colors.red , colors.background:light() , styles.bold)
--Group.new('DiagnosticVirtualTextError', colors.red , colors.background , styles.bold)
--LspInlayHint   xxx guifg=#545c7e guibg=#1d202d

Group.new('LspInlayHint', colors.dust, colors.background)
Group.new('Type', colors.white, colors.background)
Group.new('Structure', colors.white, colors.background)
Group.new('Keyword', colors.white, colors.background, styles.bold)
Group.new('Operator', colors.grey, colors.background, styles.bold)
--Group.new('Preproc', colors.orange, colors.background, styles.bold)
