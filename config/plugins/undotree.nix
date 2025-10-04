{
  plugins.undotree.enable = true;
  keymaps = [
    { key = "<leader>u"; action = "<CMD>UndotreeToggle<CR>"; options.silent = true; }
  ];
}
