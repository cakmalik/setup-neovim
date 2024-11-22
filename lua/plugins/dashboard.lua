return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    -- Header ASCII Art
    dashboard.section.header.val = {
      "██████╗     ██╗    ███████╗    ███╗   ███╗    ██╗    ██╗         ██╗          █████╗     ██╗  ██╗",
      "██╔══██╗    ██║    ██╔════╝    ████╗ ████║    ██║    ██║         ██║         ██╔══██╗    ██║  ██║",
      " ██████╔     ██║    ███████╗    ██╔████╔██║    ██║    ██║         ██║         ███████║    ███████║",
      "██╔══██╗    ██║    ╚════██║    ██║╚██╔╝██║    ██║    ██║         ██║         ██╔══██║    ██╔══██║",
      "██████╔╝    ██║    ███████║    ██║ ╚═╝ ██║    ██║    ███████╗    ███████╗    ██║  ██║    ██║  ██║",
      "╚═════╝     ╚═╝    ╚══════╝    ╚═╝     ╚═╝    ╚═╝    ╚══════╝    ╚══════╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝",
    }

    -- Buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("s", "  Settings", ":e $MYVIMRC<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Footer
    local function footer()
      return "🚀 Semangat Ayah | Happy Coding :)"
    end
    dashboard.section.footer.val = footer()

    -- Return full layout with centered design
    return {
      layout = {
        { type = "padding", val = 6 }, -- Increase the top padding to center
        dashboard.section.header,
        { type = "padding", val = 2 }, -- Add a little space below the header
        dashboard.section.buttons,
        { type = "padding", val = 2 }, -- Add a little space above the footer
        dashboard.section.footer,
        { type = "padding", val = 6 }, -- Increase the bottom padding to center
      },
      opts = {
        margin = 5, -- Add margin to ensure the content isn't too close to the screen edges
      },
    }
  end,
  config = function(_, opts)
    local alpha = require("alpha")
    alpha.setup(opts)
  end,
}
