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

		-- Semantic token types (linked to treesitter groups)
		["@lsp.type.boolean"] = "@boolean",
		["@lsp.type.builtinType"] = "@type.builtin",
		["@lsp.type.class"] = "@type",
		["@lsp.type.comment"] = "@comment",
		["@lsp.type.decorator"] = "@function",
		["@lsp.type.enum"] = "@type",
		["@lsp.type.enumMember"] = "@constant",
		["@lsp.type.escapeSequence"] = "@string.escape",
		["@lsp.type.formatSpecifier"] = "@punctuation.special",
		["@lsp.type.function"] = "@function",
		["@lsp.type.interface"] = "@type",
		["@lsp.type.keyword"] = "@keyword",
		["@lsp.type.macro"] = "@function.macro",
		["@lsp.type.method"] = "@function.method",
		["@lsp.type.namespace"] = "@module",
		["@lsp.type.number"] = "@number",
		["@lsp.type.operator"] = "@operator",
		["@lsp.type.parameter"] = "@variable.parameter",
		["@lsp.type.property"] = "@property",
		["@lsp.type.selfKeyword"] = "@variable.builtin",
		["@lsp.type.struct"] = "@type",
		["@lsp.type.type"] = "@type",
		["@lsp.type.typeAlias"] = "@type.definition",
		["@lsp.type.typeParameter"] = "@type",
		["@lsp.type.unresolvedReference"] = { fg = p.ui_red },
		["@lsp.type.variable"] = "@variable",

		-- Semantic token modifiers
		["@lsp.mod.deprecated"] = { strikethrough = true },

		-- Semantic token type + modifier combinations
		["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
		["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
		["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
		["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
		["@lsp.typemod.function.global"] = "@function.builtin",
		["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
		["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
		["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
		["@lsp.typemod.method.reference"] = "@function",
		["@lsp.typemod.method.trait"] = "@function",
		["@lsp.typemod.operator.injected"] = "@operator",
		["@lsp.typemod.selfKeyword.defaultLibrary"] = "@keyword",
		["@lsp.typemod.string.injected"] = "@string",
		["@lsp.typemod.type.defaultLibrary"] = "@type.builtin",
		["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
		["@lsp.typemod.variable.injected"] = "@variable",
		["@lsp.typemod.variable.readonly"] = "@constant",

		-- Added / Removed (used by diff, git signs, etc.)
		Added = { fg = p.git_add },
		Removed = { fg = p.git_delete },
		Changed = { fg = p.git_change },
	}
end
