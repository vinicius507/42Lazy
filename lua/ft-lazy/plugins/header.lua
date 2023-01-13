-- ************************************************************************** --
--                                                                            --
--                                                        :::      ::::::::   --
--   header.lua                                         :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: vgoncalv <vgoncalv@student.42sp.org.br>    +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2023/01/13 18:38:33 by vgoncalv          #+#    #+#             --
--   Updated: 2023/01/13 18:40:56 by vgoncalv         ###   ########.fr       --
--                                                                            --
-- ************************************************************************** --

return {
	"vinicius507/header42.nvim",
	cmd = "Stdheader",
	event = { "BufNewFile", "BufReadPre" },
	opts = function(_, opts)
		local config = require("ft-lazy.config").header

		opts.login = config.login
		opts.email = config.email
	end,
}
