return {
	'L3MON4D3/LuaSnip',
	version = 'v2.*',
	build = 'make install_jsregexp',
	config = function()
		local ls = require('luasnip')
		local extras = require('luasnip.extras')
		ls.setup({})

		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node
		local fmt = require('luasnip.extras.fmt').fmt
		local rep = extras.rep

		ls.add_snippets('typescriptreact', {
			s('rc', fmt(
				[[
				export const {} = () => {{
				  return {}
				}}
				]],
				{ i(1), i(2) }
			)),
			s('rcp', fmt(
				[[
				export interface {}Props {{}}

				export const {} = (props: {}Props) => {{
				  return {}
				}}
				]],
				{ rep(1), i(1), rep(1), i(2) }
			))
		})
	end
}
