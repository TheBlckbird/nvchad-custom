---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

local function dump(o)
  if type(o) == "table" then
    local s = "{ "
    for k, v in pairs(o) do
      if type(k) ~= "number" then
        k = '"' .. k .. '"'
      end
      s = s .. "[" .. k .. "] = " .. dump(v) .. ","
    end
    return s .. "} "
  else
    return tostring(o)
  end
end

local function tablelength(T)
  local count = 0
  for _ in pairs(T) do
    count = count + 1
  end
  return count
end

M.ui = {
  theme = "rosepine",
  theme_switch = { "rosepine", "nord", "everforest_light" },

  statusline = {
    theme = "vscode_colored",
  },

  tabufline = {
    overriden_modules = function(modules)
      modules[4] = (function()
        local config = require("core.utils").load_config()

        local function get_next_theme()
          for index, theme in pairs(M.ui.theme_switch) do
            if theme == vim.g.nvchad_theme then
              if index == tablelength(config.ui.theme_switch) then
                return config.ui.theme_switch[1]
              else
                return config.ui.theme_switch[index + 1]
              end

              break
            end
          end

          return config.ui.theme
        end

        function SwitchTheme()
          vim.g.nvchad_theme = get_next_theme()

          require("base46").load_all_highlights()
        end

        vim.cmd "function! TbSwitchTheme(a,b,c,d) \n lua SwitchTheme() \n endfunction"

        ------CloseAllBufsBtn------
        vim.cmd "function! TbCloseAllBufs(a,b,c,d) \n lua require('nvchad.tabufline').closeAllBufs() \n endfunction"
        local CloseAllBufsBtn = "%@TbCloseAllBufs@%#TbLineCloseAllBufsBtn#" .. " 󰅖 " .. "%X"
        ---------------------------

        return "%@TbSwitchTheme@%#TbLineSwitchThemeBtn#"
          .. " Next Theme: "
          .. get_next_theme()
          .. " "
          .. "%X"
          .. CloseAllBufsBtn
      end)()
    end,
  },

  hl_override = highlights.override,
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
