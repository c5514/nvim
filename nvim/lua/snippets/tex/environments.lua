local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node
local rep = require("luasnip.extras").rep
local ai = require("luasnip.nodes.absolute_indexer")
local d = ls.dynamic_node
local r = ls.restore_node
local util = require("luasnip.util.util")
local node_util = require("luasnip.nodes.util")
local tex = {}
tex.in_mathzone = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex.in_text = function()
	return not vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local line_begin = require("luasnip.extras.expand_conditions").line_begin
-- personal util
local function isempty(s) --util
	return s == nil or s == ''
end

-- label util
local generate_label = function(args, parent, _, user_arg1, user_arg2)
	if user_arg2 ~= "xargs" then
		delims = { "\\label{", "}" } -- chooses surrounding environment based on arg2 - tcolorboxes use xargs
	else
		delims = { "[", "]" }
	end
	if isempty(user_arg1) then -- creates a general label
		return sn(nil, fmta([[
        \label{<>}
        ]], { i(1) }))
	else -- creates a specialized label
		return sn(nil, fmta([[
        <><>:<><>
        ]], { t(delims[1]), t(user_arg1), i(1), t(delims[2]) }))
	end
end
local rec_ls
rec_ls = function()
	return sn(nil, {
		c(1, {
			t({ "" }),
			sn(nil, { t({ "", "\t\\item " }), i(1), d(2, rec_ls, {}) }),
		}),
	});
end

local function find_dynamic_node(node)
	while not node.dynamicNode do
		node = node.parent
	end
	return node.dynamicNode
end

local external_update_id = 0
function _G.dynamic_node_external_update(func_indx)
	local current_node = ls.session.current_nodes[vim.api.nvim_get_current_buf()]
	local dynamic_node = find_dynamic_node(current_node)

	external_update_id = external_update_id + 1
	current_node.external_update_id = external_update_id
	local current_node_key = current_node.key

	local insert_pre_call = vim.fn.mode() == "i"
	local cursor_pos_end_relative = util.pos_sub(
		util.get_cursor_0ind(),
		current_node.mark:get_endpoint(1)
	)

	node_util.leave_nodes_between(dynamic_node.snip, current_node)

	local func = dynamic_node.user_args[func_indx]
	if func then
		func(dynamic_node.parent.snippet)
	end
	dynamic_node.last_args = nil
	dynamic_node:update()

	local target_node = dynamic_node:find_node(function(test_node)
		return (test_node.external_update_id == external_update_id) or
			(current_node_key ~= nil and test_node.key == current_node_key)
	end)

	if target_node then
		node_util.enter_nodes_between(dynamic_node, target_node)

		if insert_pre_call then
			util.set_cursor_0ind(
				util.pos_add(
					target_node.mark:get_endpoint(1),
					cursor_pos_end_relative
				)
			)
		else
			node_util.select_node(target_node)
		end
		ls.session.current_nodes[vim.api.nvim_get_current_buf()] = target_node
	else
		ls.session.current_nodes[vim.api.nvim_get_current_buf()] = dynamic_node.snip:jump_into(1)
	end
end

local function column_count_from_string(descr)
	return #(descr:gsub("[^clm]", ""))
end

local tab = function(args, snip)
	local cols = column_count_from_string(args[1][1])
	if not snip.rows then
		snip.rows = 1
	end
	local nodes = {}
	local ins_indx = 1
	for j = 1, snip.rows do
		table.insert(nodes, r(ins_indx, tostring(j) .. "x1", i(1)))
		ins_indx = ins_indx + 1
		for k = 2, cols do
			table.insert(nodes, t " & ")
			table.insert(nodes, r(ins_indx, tostring(j) .. "x" .. tostring(k), i(1)))
			ins_indx = ins_indx + 1
		end
		table.insert(nodes, t { "\\\\", "" })
	end
	nodes[#nodes] = t ""
	return sn(nil, nodes)
end
-- local table_node
-- local rec_table
-- table_node = function(args)
-- 	local tabs = {}
-- 	local count
-- 	table = args[1][1]:gsub("%s", ""):gsub("|", "")
-- 	count = table:len()
-- 	for j = 1, count do
-- 		local iNode
-- 		iNode = i(j)
-- 		tabs[2 * j - 1] = iNode
-- 		if j ~= count then
-- 			tabs[2 * j] = t " & "
-- 		end
-- 	end
-- 	return sn(nil, tabs)
-- end
-- rec_table = function()
-- 	return sn(nil, {
-- 		c(1, {
-- 			t({ "" }),
-- 			sn(nil, { t { "\\\\", "" }, d(1, table_node, { ai[1] }), d(2, rec_table, { ai[1] }) })
-- 		}),
-- 	});
-- end



ls.add_snippets('tex', {
	s({ trig = "env", dscr = "Begin environment" },
		fmta(
			[[
        \begin{<>}
        	<>
        \end{<>}
      ]],
			{
				i(1, 'environment'),
				i(2),
				rep(1),
			}
		), { condition = line_begin }
	),
	s({ trig = "item", dscr = "Itemize environment" }, {
		t({ "\\begin{itemize}",
			"\t\\item " }), i(1), d(2, rec_ls, {}),
		t({ "", "\\end{itemize}" }), i(0)
	}, { condition = line_begin }),
	-- s({ trig = "itm", dscr = "Add item" }, t("\\item ")),
	s({ trig = "enum", dscr = "Enumerate environment" }, {
		t({ "\\begin{enumerate}",
			"\t\\item " }), i(1), d(2, rec_ls, {}),
		t({ "", "\\end{enumerate}" }), i(0)
	}, { condition = line_begin }),
	s({ trig = "cent", dscr = "Center environment" },
		fmta(
			[[
        \begin{center}
           <>
        \end{center}
      ]],
			{ i(1) }
		), { condition = line_begin }),
	s({ trig = "fig", dscr = "Figure environment" },
		fmta(
			[[
% ──────────────────────────────────────────────────────────────────────
\begin{figure}[<>]
	\centering
	\includegraphics[width=<> \linewidth]{<>}
	\caption{<>}
	\label{fig:<>}
\end{figure}
% ──────────────────────────────────────────────────────────────────────

      ]],
			{
				i(1, '!htpb'),
				i(2, '0.8'),
				i(3, 'name'),
				i(4, 'caption'),
				i(5, 'label')
			}
		), { condition = line_begin }),
	-- s("tab", {
	-- 	t "\\begin{tabular}{",
	-- 	i(1, "0"),
	-- 	t { "}", "" },
	-- 	d(2, table_node, { 1 }, {}),
	-- 	d(3, rec_table, { 1 }),
	-- 	t { "", "\\end{tabular}" }
	-- }),
	s("tab", fmt([[
		\begin{{tabular}}{{{}}}
		{}
		\end{{tabular}}
	]], { i(1, "c"), d(2, tab, { 1 }, {
		user_args = {
			function(snip) snip.rows = snip.rows + 1 end,
			function(snip) snip.rows = math.max(snip.rows - 1, 1) end
		}
	}) }), { condition = line_begin }),
	s({ trig = "sec", dscr = "Display '\\section{}'" },
		fmta([[\section{<>}<>
		<>]], { i(1), c(2, { t(""), d(1, generate_label, {}, { user_args = { "sec" } }) }), i(0) }), { condition = line_begin }),
	s({ trig = "ssec", dscr = "Display '\\subsection{}'" },
		fmta([[\subsection{<>}<>
		<>]], { i(1), c(2, { t(""), d(1, generate_label, {}, { user_args = { "ssec" } }) }), i(0) }),
		{ condition = line_begin }),
	s({ trig = "sssec", dscr = "Display '\\subsubsection{}'" },
		fmta([[\subsubsection{<>}<>
		<>]], { i(1), c(2, { t(""), d(1, generate_label, {}, { user_args = { "sssec" } }) }), i(0) }),
		{ condition = line_begin }),
	s({ trig = "sec*", dscr = "Display '\\section**{}'" },
		fmta([[\section*{<>}]], i(1)), { condition = line_begin }),
	s({ trig = "ssec*", dscr = "Display '\\subsection**{}'" },
		fmta([[\subsection*{<>}]], i(1)), { condition = line_begin }),
	s({ trig = "sssec*", dscr = "Display '\\subsubsection**{}'" },
		fmta([[\subsubsection*{<>}]], i(1)), { condition = line_begin }),

	s({ trig = "part", dscr = "Display '\\part{}'" },
		fmta([[\part{<>}<>
		<>]], { i(1), c(2, { t(""), d(1, generate_label, {}, { user_args = { "part" } }) }), i(0) }),
		{ condition = line_begin }),
	s({ trig = "chap", dscr = "Display '\\chapter{}'" },
		fmta([[\chapter{<>}<>
		<>]], { i(1), c(2, { t(""), d(1, generate_label, {}, { user_args = { "part" } }) }), i(0) }),
		{ condition = line_begin }),
})
