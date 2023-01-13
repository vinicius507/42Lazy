-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   config.lua                                         :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: vgoncalv <vgoncalv@student.42sp.org.br>    +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2023/01/13 18:38:08 by vgoncalv          #+#    #+#             --
--   Updated: 2023/01/13 18:38:09 by vgoncalv         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

local M = {}

---@class FtLazyConfig
local defaults = {
	---@type NormeConfig
	norme = {},
	---@type FtHeaderConfig
	header = {},
}

---@type FtLazyConfig
local settings

---@param opts FtLazyConfig?
function M.setup(opts)
	settings = vim.tbl_deep_extend("force", defaults, opts or {})
end

setmetatable(M, {
	__index = function(_, key)
		if settings == nil then
			M:setup()
		end

		---@cast settings FtLazyConfig
		return settings[key]
	end,
})

---@cast M +FtLazyConfig
return M
