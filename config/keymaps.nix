{
  keymaps = [
    { key = "<leader>pv"; action = "<CMD>Explore<CR>"; options.silent = true; }
    { mode = "v"; key = "J"; action = ":m '>+1<CR>gv=gv"; }
    { mode = "v"; key = "K"; action = ":m '<-2<CR>gv=gv"; }
    { mode = "n"; key = "J"; action = "mzJ`z"; }
    { mode = "n"; key = "<C-d>"; action = "<C-d>zz"; }
    { mode = "n"; key = "<C-u>"; action = "<C-u>zz"; }
    { key = "<leader>p"; action = "[[\"_dP]]"; }
    { mode = ["n" "v"]; key = "<leader>y"; action = "[[\"+y]]"; }
    { mode = "n"; key = "<leader>Y"; action = "[[\"+Y]]"; }
    { mode = ["n" "v"]; key = "<leader>d"; action = "[[\"_d]]"; }
  ];
}
