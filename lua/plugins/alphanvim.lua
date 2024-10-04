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

    -- Set menu options
    dashboard.section.buttons.val = {
      dashboard.button( "e", "📄  New file" , ":ene <BAR> startinsert<CR>"),
      dashboard.button( "f", "🔍  Find file", ":Telescope find_files<CR>"),
      dashboard.button( "r", "🕑  Recent"   , ":Telescope oldfiles<CR>"),
      dashboard.button( "q", "❌  Quit NVIM", ":qa<CR>"),
    }

    -- Apply the configuration
    alpha.setup(dashboard.config)
  end
}

