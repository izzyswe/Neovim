-- Enable termguicolors
vim.opt.termguicolors = true

-- Define colors
local colors = {
    background = "#24283b",
    foreground = "#c0caf5",
    selection_bg = "#364a82",
    selection_fg = "#c0caf5",
    cursor_color = "#c0caf5",
    cursor_text = "#1d202f",

    -- Palette colors
    black = "#1d202f",
    red = "#f7768e",
    green = "#9ece6a",
    yellow = "#e0af68",
    blue = "#7aa2f7",
    magenta = "#bb9af7",
    cyan = "#7dcfff",
    white = "#a9b1d6",
    bright_black = "#414868",
    bright_red = "#f7768e",
    bright_green = "#9ece6a",
    bright_yellow = "#e0af68",
    bright_blue = "#7aa2f7",
    bright_magenta = "#bb9af7",
    bright_cyan = "#7dcfff",
    bright_white = "#c0caf5",
}
--
-- -- Function to safely apply highlights
-- local function set_highlight(group, options)
--     vim.api.nvim_set_hl(0, group, options)
-- end
--
-- -- Apply highlight groups
-- set_highlight("Normal", { fg = colors.foreground, bg = colors.background })
-- set_highlight("Cursor", { fg = colors.cursor_text, bg = colors.cursor_color })
-- set_highlight("Visual", { fg = colors.selection_fg, bg = colors.selection_bg })
-- set_highlight("Comment", { fg = "#a5a6a8", italic = true })
-- set_highlight("Keyword", { fg = colors.blue, bold = true })
-- set_highlight("String", { fg = colors.green })
-- set_highlight("Function", { fg = colors.magenta })
-- set_highlight("Variable", { fg = colors.white })
-- set_highlight("Type", { fg = colors.yellow, bold = true })
-- set_highlight("Constant", { fg = colors.cyan })
-- set_highlight("Error", { fg = colors.red, bg = "NONE", bold = true })
-- set_highlight("WarningMsg", { fg = colors.yellow, bold = true })
-- set_highlight("StatusLine", { fg = colors.foreground, bg = colors.black })
-- set_highlight("SignColumn", { bg = colors.background })
-- set_highlight("LineNr", { fg = colors.bright_black })
-- set_highlight("CursorLine", { bg = "#30384f", fg = "NONE" })
-- set_highlight("CursorLineNr", { fg = colors.foreground, bold = true })
-- set_highlight("MatchParen", { fg = colors.red, bg = colors.selection_bg })
-- set_highlight("Pmenu", { fg = colors.foreground, bg = colors.black })
-- set_highlight("PmenuSel", { fg = colors.black, bg = colors.blue })
-- set_highlight("PmenuThumb", { bg = colors.blue })
-- set_highlight("PmenuSbar", { bg = colors.black })
-- set_highlight("VertSplit", { fg = colors.bright_black, bg = colors.black })

-- Scrimba Colour Theme

-- local scrimColour = {
--   background = "#1B1D22",
--   background_2 = "#1F211A",
--   foreground = "#c0caf5",
--   selection_bg = "#c0caf5",
--   selection_fg = "#364a82",
--
--   strings = "#7DA4B7",
--   keywords = "#cee6fd",
--   functions = "#FF9696",
--   variables = "#9CCBEB",
--   types = "#cee6fd",
--   test = "#FF9696"
--
-- }
--
--  -- Function to safely apply highlights
--  local function set_highlight(group, options)
--    vim.api.nvim_set_hl(0, group, options)
--  end
--
--
-- set_highlight("Normal", {fg= scrimColour.foreground, bg = scrimColour.background_2 })
-- set_highlight("Visual", { fg = colors.selection_fg, bg = colors.selection_bg })
-- set_highlight("Comment", { fg = "#9aa4ae", italic = true })
-- set_highlight("Keyword", { fg = scrimColour.keywords, bold = true })
-- set_highlight("String", { fg = scrimColour.strings })
-- set_highlight("Function", { fg = scrimColour.functions })
-- set_highlight("Variable", { fg = scrimColour.variables })
-- set_highlight("Type", { fg = scrimColour.test, bold = true })
-- set_highlight("Constant", { fg = colors.cyan })
-- set_highlight("Error", { fg = colors.red, bg = "NONE", bold = true })
-- set_highlight("WarningMsg", { fg = colors.yellow, bold = true })
-- set_highlight("StatusLine", { fg = colors.foreground, bg = colors.background_2 })


-- -- Enable termguicolors
-- vim.opt.termguicolors = true
--
-- -- Define colors based directly on your Replit screenshots
-- local colors = {
--     -- Replit UI Elements
--     background = "#1b1b22",
--     outline = "#031526",
--     foreground = "#f0f1d1",
--     primary = "#336ee6",
--     positive = "#8bf9d4",
--     negative = "#d77575",
--
--     -- Replit Code Syntax Theme Colors
--     -- Using the names from your Replit screenshot for clarity
--     replit_variable_names = "#9ccbeb",
--     replit_function_references = "#9CCBEB",
--     replit_keywords = "#ff9696",
--     replit_property_names = "#95c2df",
--     replit_property_definitions = "#ff9696", -- Matches keywords
--     replit_function_properties = "#cee9fd",
--     replit_tag_names = "#e9e19b",
--     replit_type_names = "#cee6fd",
--     replit_class_names = "#3bbda7",
--     replit_attribute_names = "#c7e2ff", -- Corrected from screenshot: c7e2ff
--     replit_atomic_keywords = "#3cc3b0",
--     replit_comments = "#f0f1d1",
--     replit_strings = "#7da4b7",
--     replit_numbers = "#28a7e4",
--     replit_booleans = "#ff9696",
--     replit_regular_expressions = "#fd9230",
--     replit_operators = "#004182",
--     replit_square_brackets = "#bfbfbf",
--     replit_angle_brackets = "#5c5f66",
--
--     -- Derived colors for Neovim-specific elements based on the Replit palette
--     selection_bg = "#031526", -- Replit's 'outline'
--     selection_fg = "#f0f1d1", -- Replit's 'foreground'
--     cursor_color = "#f0f1d1", -- Replit's 'foreground'
--     cursor_text = "#1b1b22",  -- Replit's 'background'
--
--     -- For consistency with the guide structure, mapping general color names to Replit palette
--     black = "#1b1b22", -- Replit's background
--     red = "#d77575", -- Replit's negative
--     green = "#8bf9d4", -- Replit's positive
--     yellow = "#ead257", -- Replit's function_references
--     blue = "#336ee6", -- Replit's primary
--     magenta = "#bb9af7", -- A generic magenta, as Replit doesn't list one explicitly.
--     cyan = "#cee6fd", -- Replit's type_names
--     white = "#f0f1d1", -- Replit's foreground
--     bright_black = "#5c5f66", -- Replit's Angle Brackets as a darker grey
--     bright_red = "#d77575", -- Replit's negative
--     bright_green = "#8bf9d4", -- Replit's positive
--     bright_yellow = "#ead257", -- Replit's function_references
--     bright_blue = "#336ee6", -- Replit's primary
--     bright_magenta = "#bb9af7", -- A generic magenta.
--     bright_cyan = "#7dcfff", -- A generic cyan.
--     bright_white = "#f0f1d1", -- Replit's foreground
-- }
--
-- -- Function to safely apply highlights
-- local function set_highlight(group, options)
--     vim.api.nvim_set_hl(0, group, options)
-- end
--
-- -- Apply highlight groups, directly replacing colors based on your guide and Replit hex codes
-- set_highlight("Normal", { fg = colors.foreground, bg = colors.background })
-- set_highlight("Cursor", { fg = colors.cursor_text, bg = colors.cursor_color })
-- set_highlight("Visual", { fg = colors.selection_fg, bg = colors.selection_bg })
--
-- set_highlight("Comment", { fg = colors.replit_comments, italic = true })
-- set_highlight("Keyword", { fg = colors.replit_keywords, bold = true })
-- set_highlight("String", { fg = colors.replit_strings })
-- set_highlight("Function", { fg = colors.replit_function_references })
-- set_highlight("Variable", { fg = colors.replit_variable_names })
-- set_highlight("Type", { fg = colors.replit_type_names, bold = true })
-- set_highlight("Constant", { fg = colors.replit_atomic_keywords })
-- set_highlight("Error", { fg = colors.negative, bg = "NONE", bold = true })
-- set_highlight("WarningMsg", { fg = colors.replit_regular_expressions, bold = true })
--
-- set_highlight("StatusLine", { fg = colors.foreground, bg = colors.outline })
-- set_highlight("SignColumn", { bg = colors.background })
-- set_highlight("LineNr", { fg = colors.replit_comments })
-- set_highlight("CursorLine", { bg = colors.outline, fg = "NONE" })
-- set_highlight("CursorLineNr", { fg = colors.foreground, bold = true })
-- set_highlight("MatchParen", { fg = colors.primary, bg = colors.selection_bg })
-- set_highlight("Pmenu", { fg = colors.foreground, bg = colors.background })
-- set_highlight("PmenuSel", { fg = colors.background, bg = colors.primary })
-- set_highlight("PmenuThumb", { bg = colors.primary })
-- set_highlight("PmenuSbar", { bg = colors.outline })
-- set_highlight("VertSplit", { fg = colors.outline, bg = colors.background })
--
-- No Treesitter specific groups added, strictly adhering to the guide's scope.
