return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
      "mfussenegger/nvim-dap-python",
      "rcarriga/nvim-dap-ui",
      "williamboman/mason.nvim",
      "williamboman/mason-nvim-dap.nvim",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "custom.dap"
    end,
  },
}
