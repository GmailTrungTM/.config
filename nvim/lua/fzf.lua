print("FZF")
vim.cmd[[
let g:fzf_action = {
	\'ctrl-t': 'tab split',
	\'ctrl-s': 'split',
	\'ctrl-v': 'vsplit'
	\}
]]
