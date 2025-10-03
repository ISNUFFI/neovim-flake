{
  keymaps = [
    {
      key = "<leader>y";
      action = "\"+y";
      options = {
        silent = true;
      };
    }
    {
      key = "<leader>pv";
      action = ":Explore<cr>";
      options = {
        silent = true;
      };
    }
    {
      key = "<C-l>";
      action = ":nohl<cr>";
      options = {
        silent = true;
      };
    }
  ];
}
