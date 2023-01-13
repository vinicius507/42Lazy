-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: vgoncalv <vgoncalv@student.42sp.org.br>    +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2023/01/13 18:38:23 by vgoncalv          #+#    #+#             --
--   Updated: 2023/01/13 18:38:24 by vgoncalv         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

local M = {}

---@param opts? FtLazyConfig
function M.setup(opts)
	require("ft-lazy.config").setup(opts)
end

return M
