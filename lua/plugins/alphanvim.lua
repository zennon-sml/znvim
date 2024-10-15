return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },  -- optional for icons
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    -- Set a custom header (ASCII art or text)
    dashboard.section.header.val = {
      "Hey, you. You’re finally awake. You were trying to cross the border, right?",
            " ",
            "                  ███████████    ███████    ██████████  ",
            "                  ░█░░░░░░███   ███░░░░░███ ░░███░░░░███ ",
            "                   ░     ███░   ███     ░░███ ░███   ░░███",
            "                        ███    ░███      ░███ ░███    ░███",
            "                       ███     ░███      ░███ ░███    ░███",
            "                     ████     █░░███     ███  ░███    ███ ",
            "                   ███████████ ░░░███████░   ██████████  ",
            "                   ░░░░░░░░░░░    ░░░░░░░    ░░░░░░░░░░",
}

    alpha.setup(dashboard.opts)
  end
}

