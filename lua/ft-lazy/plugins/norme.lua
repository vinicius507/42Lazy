-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   norme.lua                                          :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: vgoncalv <vgoncalv@student.42sp.org.br>    +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2023/01/13 18:38:37 by vgoncalv          #+#    #+#             --
--   Updated: 2023/01/13 18:39:12 by vgoncalv         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

return {
	"vinicius507/norme.nvim",
	ft = { "c", "cpp" },
	cmd = {
		"NormeEnable",
		"NormeDisable",
		"NormeToggle",
	},
	opts = function(_, opts)
		local config = require("ft-lazy.config").norme

		opts.cmd = config.cmd
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"jose-elias-alvarez/null-ls.nvim",
	},
}
