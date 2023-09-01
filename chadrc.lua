---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "everforest_light" },

  statusline = {
    theme = "vscode_colored",
  },

  hl_override = highlights.overrides,

  -- hl_override = {
  --   Comment = {
  --     italic = true,
  --   },
  --   NvDashAscii = {
  --     bg = "NONE",
  --     fg = "baby_pink",
  --   },
  -- },

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    header = {
      [[    ` : | | | |:  ||  :     `  :  |  |+|: | : : :|   .        `              . ]],
      [[        ` : | :|  ||  |:  :    `  |  | :| : | : |:   |  .                    : ]],
      [[           .' ':  ||  |:  |  '       ` || | : | |: : |   .  `           .   :. ]],
      [[                  `'  ||  |  ' |   *    ` : | | :| |*|  :   :               :| ]],
      [[          *    *       `  |  : :  |  .      ` ' :| | :| . : :         *   :.|| ]],
      [[               .`            | |  |  : .:|       ` | || | : |: |          | || ]],
      [[        '          .         + `  |  :  .: .         '| | : :| :    .   |:| || ]],
      [[           .                 .    ` *|  || :       `    | | :| | :      |:| |  ]],
      [[   .                .          .        || |.: *          | || : :     :|||    ]],
      [[          .            .   . *    .   .  ` |||.  +        + '| |||  .  ||`     ]],
      [[       .             *              .     +:`|!             . ||||  :.||`      ]],
      [[   +                      .                ..!|*          . | :`||+ |||`       ]],
      [[       .                         +      : |||`        .| :| | | |.| ||`     .  ]],
      [[         *     +   '               +  :|| |`     :.+. || || | |:`|| `          ]],
      [[                              .      .||` .    ..|| | |: '` `| | |`  +         ]],
      [[    .       +++                      ||        !|!: `       :| |               ]],
      [[                +         .      .    | .      `|||.:      .||    .      .    `]],
      [[            '                           `|.   .  `:|||   + ||'     `           ]],
      [[    __    +      *                         `'       `'|.    `:                 ]],
      [[  "'  `---"""----....____,..^---`^``----.,.___          `.    `.  .    ____,.,-]],
      [[      ___,--'""`---"'   ^  ^ ^        ^       """'---,..___ __,..---""'        ]],
      [[  --"'                           ^                         ``--..,__           ]],
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
