local M = {}

M.opts = {
  length = 80,
  margin = 5,
  default_map = true,
  auto_update = true,
  user = "username",
  mail = "your@mail.com",
  school = true,

  asciiart = {
    ":::::::::::    ::::::::: ",
    "    :+:        :+:    :+:",
    "    +:+        +:+    +:+",
    "    +#+        +#++:++#+ ",
    "    +#+        +#+       ",
    "#+# #+#   #+#  #+#       ",
    " #####    ###  ###       ",
  },
  asciiart42 = {
    "        :::      ::::::::",
    "      :+:      :+:    :+:",
    "    +:+ +:+         +:+  ",
    "  +#+  +:+       +#+     ",
    "+#+#+#+#+#+   +#+        ",
    "     #+#    #+#          ",
    "    ###   ########.fr    ",
  },
  git = {
    enabled = false,
    bin = "git",
    user_global = true,
    email_global = true,
  },
}

---Applies the user options to the default table.
---@param opts table: settings
M.set = function(opts)
  M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
  -- Auto-detect school email
  if M.opts.mail and string.find(M.opts.mail, "42") then
    M.opts.school = true
  else
    M.opts.school = false
  end
end

return M
