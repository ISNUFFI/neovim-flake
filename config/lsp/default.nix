{
  imports = [
    ../plugins/lsp.nix
    ./servers/clangd.nix
    ./servers/gopls.nix
    ./servers/html.nix
    ./servers/templ.nix
    ./servers/nil.nix
    ./servers/pyright.nix
  ];
}
