{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<C-p>".action = "git_files";
      "<leader>ps".action = "live_grep";
      "<leader>pf".action = "find_files";
    };
  };
}
