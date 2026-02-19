-- Editor UI highlight groups
return function(p, opts)
	local transparent = opts.transparent
	local bg = transparent and p.none or p.bg3

	return {
		-- Core editor
		Normal = { fg = p.fg6, bg = bg },
		NormalNC = { fg = p.fg6, bg = bg },
		NormalFloat = { fg = p.fg6, bg = transparent and p.none or p.bg2 },
		FloatBorder = { fg = p.fg0, bg = transparent and p.none or p.bg2 },
		FloatTitle = { fg = p.ui_blue, bg = transparent and p.none or p.bg2, bold = true },

		-- Cursor
		Cursor = { fg = p.bg3, bg = p.fg6 },
		lCursor = "Cursor",
		CursorIM = "Cursor",
		CursorLine = { bg = transparent and p.none or p.bg4 },
		CursorColumn = "CursorLine",
		TermCursor = { fg = p.bg3, bg = p.fg6 },

		-- Line numbers
		LineNr = { fg = p.fg0 },
		CursorLineNr = { fg = p.fg5, bold = true },
		SignColumn = { fg = p.fg0, bg = p.none },
		FoldColumn = { fg = p.fg0, bg = p.none },
		Folded = { fg = p.fg3, bg = transparent and p.none or p.bg4 },

		-- Status line
		StatusLine = { fg = p.fg5, bg = p.bg1 },
		StatusLineNC = { fg = p.fg1, bg = p.bg1 },

		-- Tab line
		TabLine = { fg = p.fg3, bg = p.bg1 },
		TabLineSel = { fg = p.fg6, bg = p.bg3 },
		TabLineFill = { bg = p.bg0 },

		-- Window separators
		WinSeparator = { fg = p.bg1, bg = p.none },
		VertSplit = "WinSeparator",

		-- Popup menu
		Pmenu = { fg = p.fg5, bg = transparent and p.none or p.bg2 },
		PmenuSel = { fg = p.none, bg = p.bg6 },
		PmenuSbar = { bg = p.bg2 },
		PmenuThumb = { bg = p.fg0 },

		-- Search / visual
		Search = { fg = p.none, bg = p.bg6 },
		IncSearch = { fg = p.bg3, bg = p.ui_orange },
		CurSearch = { fg = p.bg3, bg = p.ui_yellow },
		Substitute = "IncSearch",
		Visual = { bg = p.bg6 },
		VisualNOS = "Visual",

		-- Messages
		ModeMsg = { fg = p.fg5, bold = true },
		MsgArea = { fg = p.fg5 },
		MoreMsg = { fg = p.ui_blue },
		ErrorMsg = { fg = p.ui_red },
		WarningMsg = { fg = p.ui_yellow },
		Question = { fg = p.ui_blue },
		Title = { fg = p.ui_blue, bold = true },

		-- Misc UI
		ColorColumn = { bg = p.bg4 },
		Conceal = { fg = p.fg1 },
		Directory = { fg = p.ui_blue },
		EndOfBuffer = { fg = transparent and p.none or p.bg3 },
		NonText = { fg = p.fg0 },
		SpecialKey = { fg = p.fg0 },
		Whitespace = { fg = p.fg0 },
		WildMenu = { fg = p.bg3, bg = p.ui_blue },
		WinBar = { fg = p.fg4, bg = p.none },
		WinBarNC = { fg = p.fg1, bg = p.none },
		MatchParen = { fg = p.ui_yellow, bold = true },

		-- Diff
		DiffAdd = { bg = p.diff_add },
		DiffChange = { bg = p.diff_change },
		DiffDelete = { bg = p.diff_delete },
		DiffText = { bg = p.diff_text },

		-- Spell
		SpellBad = { undercurl = true, sp = p.ui_red },
		SpellCap = { undercurl = true, sp = p.ui_yellow },
		SpellLocal = { undercurl = true, sp = p.ui_blue },
		SpellRare = { undercurl = true, sp = p.ui_purple },

		-- Terminal / misc
		Terminal = { fg = p.fg6, bg = transparent and p.none or p.bg3 },
		WhichKeyFloat = { bg = transparent and p.none or p.bg2 },
	}
end
