{
  plugins.lsp = {
    enable = true;

    keymaps = {
      diagnostic = {
        "[d" = "goto_next";
        "]d" = "goto_next";
        "<leader>vd" = "open_float";
      };

      lspBuf = {
        "gd" = "definition";
        "K" = "hover";
        "<leader>vws" = "workspace_symbol";
        "<leader>vca" = "code_action";
        "<leader>vrr" = "references";
        "<leader>vrn" = "rename";
        "<leader>f" = "format";
      };

      extra = [
        {
          mode = "i";
          key = "<C-h>";
          action = "function() vim.lsp.buf.signature_help() end";
        }
      ];
    };
  };
}
