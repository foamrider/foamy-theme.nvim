-- Plugin-specific highlight groups
return function(p, opts)
	local transparent = opts.transparent
	local bg = transparent and p.none or p.bg3

	return {
		-- Git signs
		GitSignsAdd = { fg = p.git_add },
		GitSignsChange = { fg = p.git_change },
		GitSignsDelete = { fg = p.git_delete },
		GitSignsCurrentLineBlame = { fg = p.fg3 },

		-- NeoTree (compat)
		NeoTreeNormal = { fg = p.fg6, bg = transparent and p.none or p.bg2 },
		NeoTreeNormalNC = { fg = p.fg6, bg = transparent and p.none or p.bg2 },
		NeoTreeVertSplit = { fg = p.bg1, bg = p.none },
		NeoTreeWinSeparator = { fg = p.bg1, bg = p.none },
		NeoTreeEndOfBuffer = { fg = transparent and p.none or p.bg2 },
		NeoTreeFloatBorder = { fg = p.fg0, bg = p.none },
		NeoTreeFloatTitle = { fg = p.ui_blue, bg = p.none, bold = true },

		-- Snacks notifier
		NotifyINFOBody = { bg = p.none },
		NotifyERRORBody = { bg = p.none },
		NotifyWARNBody = { bg = p.none },
		NotifyTRACEBody = { bg = p.none },
		NotifyDEBUGBody = { bg = p.none },
		NotifyINFOTitle = { bg = p.none },
		NotifyERRORTitle = { bg = p.none },
		NotifyWARNTitle = { bg = p.none },
		NotifyTRACETitle = { bg = p.none },
		NotifyDEBUGTitle = { bg = p.none },
		NotifyINFOBorder = { bg = p.none },
		NotifyERRORBorder = { bg = p.none },
		NotifyWARNBorder = { bg = p.none },
		NotifyTRACEBorder = { bg = p.none },
		NotifyDEBUGBorder = { bg = p.none },

		-- Snacks picker
		SnacksPickerDir = { fg = p.fg3 },
		SnacksPickerPathHidden = { fg = p.fg2 },
		SnacksPickerPathIgnored = { fg = p.fg2 },
		SnacksPickerFile = { fg = p.fg5 },
		SnacksPickerTree = { fg = p.fg0 },

		-- Snacks indent
		SnacksIndent = { fg = "#2A3A4A" },
		SnacksIndentScope = { fg = p.ui_blue },

		-- Lazy.nvim
		LazyNormal = { fg = p.fg5, bg = transparent and p.none or p.bg2 },
		LazyButton = { fg = p.fg5, bg = p.bg4 },
		LazyButtonActive = { fg = p.bg3, bg = p.ui_blue },
		LazyH1 = { fg = p.bg3, bg = p.ui_blue, bold = true },
		LazySpecial = { fg = p.cyan, bold = true },

		-- Mason
		MasonNormal = { fg = p.fg5, bg = transparent and p.none or p.bg2 },

		-- Which-key
		WhichKey = { fg = p.purple },
		WhichKeyGroup = { fg = p.blue },
		WhichKeyDesc = { fg = p.fg5 },
		WhichKeyFloat = { bg = transparent and p.none or p.bg2 },
		WhichKeySeparator = { fg = p.fg0 },
		WhichKeyValue = { fg = p.fg3 },

		-- Indent-blankline / mini.indentscope
		IblIndent = { fg = "#2A3A4A" },
		IblScope = { fg = p.ui_blue },
		MiniIndentscopeSymbol = { fg = p.ui_blue },

		-- Blink.cmp
		BlinkCmpMenu = { fg = p.fg5, bg = transparent and p.none or p.bg2 },
		BlinkCmpMenuBorder = { fg = p.fg0, bg = transparent and p.none or p.bg2 },
		BlinkCmpMenuSelection = { bg = p.bg6 },
		BlinkCmpLabel = { fg = p.fg5 },
		BlinkCmpLabelMatch = { fg = p.ui_blue, bold = true },
		BlinkCmpKind = { fg = p.fg3 },
		BlinkCmpDoc = { fg = p.fg5, bg = transparent and p.none or p.bg2 },
		BlinkCmpDocBorder = { fg = p.fg0, bg = transparent and p.none or p.bg2 },
		BlinkCmpSignatureHelp = { fg = p.fg5, bg = transparent and p.none or p.bg2 },
		BlinkCmpSignatureHelpBorder = { fg = p.fg0, bg = transparent and p.none or p.bg2 },

		-- Todo-comments
		TodoBgFIX = { fg = p.bg3, bg = p.ui_red, bold = true },
		TodoBgHACK = { fg = p.bg3, bg = p.ui_yellow, bold = true },
		TodoBgNOTE = { fg = p.bg3, bg = p.ui_blue, bold = true },
		TodoBgPERF = { fg = p.bg3, bg = p.ui_purple, bold = true },
		TodoBgTODO = { fg = p.bg3, bg = p.ui_cyan, bold = true },
		TodoBgWARN = { fg = p.bg3, bg = p.ui_orange, bold = true },
		TodoFgFIX = { fg = p.ui_red },
		TodoFgHACK = { fg = p.ui_yellow },
		TodoFgNOTE = { fg = p.ui_blue },
		TodoFgPERF = { fg = p.ui_purple },
		TodoFgTODO = { fg = p.ui_cyan },
		TodoFgWARN = { fg = p.ui_orange },
	}
end
