-- LSP diagnostics, semantic tokens, and related highlight groups
return function(p, _)
	return {
		-- Diagnostics
		DiagnosticError = { fg = p.ui_red },
		DiagnosticWarn = { fg = p.ui_yellow },
		DiagnosticInfo = { fg = p.ui_blue },
		DiagnosticHint = { fg = p.ui_cyan },
		DiagnosticOk = { fg = p.ui_green },

		DiagnosticUnderlineError = { undercurl = true, sp = p.ui_red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = p.ui_yellow },
		DiagnosticUnderlineInfo = { undercurl = true, sp = p.ui_blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = p.ui_cyan },
		DiagnosticUnderlineOk = { undercurl = true, sp = p.ui_green },

		DiagnosticVirtualTextError = { fg = p.ui_red },
		DiagnosticVirtualTextWarn = { fg = p.ui_yellow },
		DiagnosticVirtualTextInfo = { fg = p.ui_blue },
		DiagnosticVirtualTextHint = { fg = p.ui_cyan },
		DiagnosticVirtualTextOk = { fg = p.ui_green },

		DiagnosticSignError = { fg = p.ui_red },
		DiagnosticSignWarn = { fg = p.ui_yellow },
		DiagnosticSignInfo = { fg = p.ui_blue },
		DiagnosticSignHint = { fg = p.ui_cyan },
		DiagnosticSignOk = { fg = p.ui_green },

		DiagnosticFloatingError = { fg = p.ui_red },
		DiagnosticFloatingWarn = { fg = p.ui_yellow },
		DiagnosticFloatingInfo = { fg = p.ui_blue },
		DiagnosticFloatingHint = { fg = p.ui_cyan },
		DiagnosticFloatingOk = { fg = p.ui_green },

		-- LSP references
		LspReferenceText = { bg = p.bg5 },
		LspReferenceRead = { bg = p.bg5 },
		LspReferenceWrite = { bg = p.bg5 },

		-- LSP signature
		LspSignatureActiveParameter = { fg = p.ui_orange, bold = true },

		-- LSP inlay hints
		LspInlayHint = { fg = p.fg1, italic = true },

		-- LSP codelens
		LspCodeLens = { fg = p.fg1 },
		LspCodeLensSeparator = { fg = p.fg0 },

		-- Semantic tokens (linked to treesitter groups where sensible)
		["@lsp.type.class"] = "@type",
		["@lsp.type.decorator"] = "@function",
		["@lsp.type.enum"] = "@type",
		["@lsp.type.enumMember"] = "@constant",
		["@lsp.type.function"] = "@function",
		["@lsp.type.interface"] = "@type",
		["@lsp.type.keyword"] = "@keyword",
		["@lsp.type.macro"] = "@function.macro",
		["@lsp.type.method"] = "@function.method",
		["@lsp.type.namespace"] = "@module",
		["@lsp.type.parameter"] = "@variable.parameter",
		["@lsp.type.property"] = "@property",
		["@lsp.type.struct"] = "@type",
		["@lsp.type.type"] = "@type",
		["@lsp.type.typeParameter"] = "@type",
		["@lsp.type.variable"] = "@variable",
		["@lsp.mod.deprecated"] = { strikethrough = true },

		-- Added / Removed (used by diff, git signs, etc.)
		Added = { fg = p.git_add },
		Removed = { fg = p.git_delete },
		Changed = { fg = p.git_change },
	}
end
