local M = {}

function M.setup(opts)
	opts = opts or {}

	require("starcore.colors").load()

	pcall(require, "telescope")
	if package.loaded["telescope"] then
		require("starcode.integrations.telescope").setup()
	end
  pcall(require, "which-key")
  if package.loaded["which-key"] then
    require("starcore.integrations.which-key").setup()
  end
end

return M
