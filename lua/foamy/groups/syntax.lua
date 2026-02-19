-- Vim syntax highlight groups (:help group-name)
return function(p, opts)
	return {
		Comment = { fg = p.fg3, italic = opts.italic_comments },

		Constant = { fg = p.yellow },
		String = { fg = p.green },
		Character = { fg = p.green },
		Number = { fg = p.orange },
		Boolean = { fg = p.orange },
		Float = { fg = p.orange },

		Identifier = { fg = p.fg6 },
		Function = { fg = p.blue },

		Statement = { fg = p.purple, bold = opts.bold_statements },
		Conditional = { fg = p.purple, italic = opts.italic_keywords },
		Repeat = { fg = p.purple, italic = opts.italic_keywords },
		Label = { fg = p.purple },
		Operator = { fg = p.fg6 },
		Keyword = { fg = p.purple, italic = opts.italic_keywords },
		Exception = { fg = p.purple },

		PreProc = { fg = p.yellow },
		Include = { fg = p.purple },
		Define = { fg = p.purple },
		Macro = { fg = p.cyan },
		PreCondit = { fg = p.yellow },

		Type = { fg = p.yellow },
		StorageClass = { fg = p.yellow },
		Structure = { fg = p.yellow },
		Typedef = { fg = p.yellow },

		Special = { fg = p.blue },
		SpecialChar = { fg = p.orange },
		Tag = { fg = p.red },
		Delimiter = { fg = p.fg6 },
		SpecialComment = { fg = p.fg3, italic = true },
		Debug = { fg = p.ui_red },

		Underlined = { underline = true },
		Ignore = { fg = p.fg1 },
		Error = { fg = p.ui_red },
		Todo = { fg = p.ui_yellow, bold = true },

		-- HTML / Markup
		htmlTag = { fg = p.fg2 },
		htmlEndTag = { fg = p.fg2 },
		htmlTagName = { fg = p.red },
		htmlArg = { fg = p.orange },
		htmlBold = { bold = true },
		htmlItalic = { italic = true },

		-- Markdown
		markdownHeadingDelimiter = { fg = p.blue, bold = true },
		markdownH1 = { fg = p.blue, bold = true },
		markdownH2 = { fg = p.blue, bold = true },
		markdownH3 = { fg = p.blue, bold = true },
		markdownCode = { fg = p.green },
		markdownCodeBlock = { fg = p.green },
		markdownUrl = { fg = p.cyan, underline = true },
		markdownLinkText = { fg = p.blue },
	}
end
