return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function(_, opts)
    local logo = [[
    ▓█    █▀    █       █     █   ████▒  ▓█     █▀░
    ▓██ █▀     █ ▓█   ▓█    ▒█▒  █▒       ▓██ █▀░
    ▓██▀ ▀█   █   ▒█  ▓█    ▒█░  ████▒     ▓██   
    ▓██▒  ▐▌  ██▒▒▒▓  ▓█    ▓█   █▒       ▓██ ▀█░
    ▒██░   ▓  █    █  ▓███▒▒  █   ████▒  ▓█      █▀░
       ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░       ░ ▐░  ░▓  ░ ▒░   ░ ░
       ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░       ░ ░░   ▒ ░░  ░     ░
         ░   ░ ░    ░   ░ ░ ░ ▒          ░░   ▒ ░░      ░
             ░    ░  ░    ░ ░           ░   ░         ░
                                       ░ 
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    -- Pastikan config diinisialisasi jika nil
    opts.config = opts.config or {}
    opts.config.header = vim.split(logo, "\n")
  end,
}
