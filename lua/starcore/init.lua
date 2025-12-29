local M = {}

function M.setup(opts)
	opts = opts or {}

	require("starcore.colors").load()

	pcall(require, "telescope")
	if package.loaded["telescope"] then
		require("starcode.integrations.telescope").setup()
	end
end

return M
