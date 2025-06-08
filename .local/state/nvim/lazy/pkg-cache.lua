return {version=12,pkgs={{source="lazy",spec=function()
return {
  -- nui.nvim can be lazy loaded
  { "MunifTanjim/nui.nvim", lazy = true },
  {
    "folke/noice.nvim",
  },
}

end,file="lazy.lua",name="noice.nvim",dir="/data/data/com.termux/files/home/.local/share/nvim/lazy/noice.nvim",},{source="lazy",spec={"nvim-lua/plenary.nvim",lazy=true,},file="community",name="plenary.nvim",dir="/data/data/com.termux/files/home/.local/share/nvim/lazy/plenary.nvim",},},}