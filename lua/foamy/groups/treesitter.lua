-- Treesitter highlight groups (:help treesitter-highlight-groups)
return function(p, opts)
	return {
		-- Identifiers
		["@variable"] = { fg = p.fg6 },
		["@variable.builtin"] = { fg = p.cyan },
		["@variable.parameter"] = { fg = p.orange },
		["@variable.member"] = { fg = p.red },

		-- Constants
		["@constant"] = { fg = p.yellow },
		["@constant.builtin"] = { fg = p.orange },
		["@constant.macro"] = { fg = p.yellow },

		-- Modules
		["@module"] = { fg = p.yellow },
		["@module.builtin"] = { fg = p.cyan },

		-- Strings
		["@string"] = { fg = p.green },
		["@string.documentation"] = { fg = p.green },
		["@string.regex"] = { fg = p.orange },
		["@string.escape"] = { fg = p.cyan },
		["@string.special"] = { fg = p.orange },
		["@string.special.url"] = { fg = p.cyan, underline = true },

		-- Characters / numbers
		["@character"] = { fg = p.green },
		["@character.special"] = { fg = p.orange },
		["@number"] = { fg = p.orange },
		["@number.float"] = { fg = p.orange },
		["@boolean"] = { fg = p.orange },

		-- Types
		["@type"] = { fg = p.yellow },
		["@type.builtin"] = { fg = p.yellow },
		["@type.definition"] = { fg = p.yellow },
		["@type.qualifier"] = { fg = p.purple, italic = opts.italic_keywords },

		-- Attributes / properties
		["@attribute"] = { fg = p.yellow },
		["@property"] = { fg = p.red },

		-- Functions
		["@function"] = { fg = p.blue },
		["@function.builtin"] = { fg = p.blue },
		["@function.call"] = { fg = p.blue },
		["@function.macro"] = { fg = p.cyan },
		["@function.method"] = { fg = p.blue },
		["@function.method.call"] = { fg = p.blue },

		-- Constructor
		["@constructor"] = { fg = p.yellow },

		-- Operators / punctuation
		["@operator"] = { fg = p.fg6 },
		["@punctuation.bracket"] = { fg = p.fg6 },
		["@punctuation.delimiter"] = { fg = p.fg6 },
		["@punctuation.special"] = { fg = p.blue },

		-- Keywords
		["@keyword"] = { fg = p.purple, italic = opts.italic_keywords },
		["@keyword.conditional"] = { fg = p.purple, italic = opts.italic_keywords },
		["@keyword.coroutine"] = { fg = p.purple, italic = opts.italic_keywords },
		["@keyword.debug"] = { fg = p.ui_red },
		["@keyword.directive"] = { fg = p.yellow },
		["@keyword.exception"] = { fg = p.purple },
		["@keyword.function"] = { fg = p.purple, italic = opts.italic_keywords },
		["@keyword.import"] = { fg = p.purple },
		["@keyword.operator"] = { fg = p.purple },
		["@keyword.repeat"] = { fg = p.purple, italic = opts.italic_keywords },
		["@keyword.return"] = { fg = p.purple },
		["@keyword.storage"] = { fg = p.yellow },
		["@keyword.type"] = { fg = p.yellow },

		-- Labels / tags
		["@label"] = { fg = p.purple },
		["@tag"] = { fg = p.red },
		["@tag.attribute"] = { fg = p.orange },
		["@tag.delimiter"] = { fg = p.fg2 },
		["@tag.builtin"] = { fg = p.red },

		-- Comments
		["@comment"] = { fg = p.fg3, italic = opts.italic_comments },
		["@comment.documentation"] = { fg = p.fg3, italic = opts.italic_comments },
		["@comment.todo"] = { fg = p.ui_yellow, bold = true },
		["@comment.note"] = { fg = p.ui_blue, bold = true },
		["@comment.warning"] = { fg = p.ui_yellow, bold = true },
		["@comment.error"] = { fg = p.ui_red, bold = true },

		-- Markup
		["@markup.heading"] = { fg = p.blue, bold = true },
		["@markup.heading.1"] = { fg = p.blue, bold = true },
		["@markup.heading.2"] = { fg = p.blue, bold = true },
		["@markup.heading.3"] = { fg = p.blue, bold = true },
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { underline = true },
		["@markup.link"] = { fg = p.cyan },
		["@markup.link.url"] = { fg = p.cyan, underline = true },
		["@markup.link.label"] = { fg = p.blue },
		["@markup.raw"] = { fg = p.green },
		["@markup.raw.block"] = { fg = p.green },
		["@markup.raw.markdown_inline"] = { fg = p.green, bg = p.bg4 },
		["@markup.list"] = { fg = p.blue },
		["@markup.math"] = { fg = p.orange },

		-- Misc
		["@diff.plus"] = { fg = p.git_add },
		["@diff.minus"] = { fg = p.git_delete },
		["@diff.delta"] = { fg = p.git_change },
	}
end
