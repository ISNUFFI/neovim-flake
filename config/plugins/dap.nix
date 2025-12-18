{
  plugins = {
    dap-ui.enable = true;
    dap-virtual-text.enable = true;
    dap = {
      enable = true;
    };
    dap-go.enable = true;
  };

  keymaps = [
    { 
      mode = "n";
      key = "<leader>b";
      action.__raw = "require('dap').toggle_breakpoint";
    }
    { 
      mode = "n";
      key = "<leader>gb";
      action.__raw = "require('dap').run_to_cursor";
    }
    { 
      mode = "n";
      key = "<leader>?";
      action.__raw = ''
        function()
          require('dapui').eval(nil, { enter = true })
        end
      '';
    }
    { mode = "n"; key = "<F1>"; action.__raw = "require('dap').continue"; }
    { mode = "n"; key = "<F2>"; action.__raw = "require('dap').step_into"; }
    { mode = "n"; key = "<F3>"; action.__raw = "require('dap').step_over"; }
    { mode = "n"; key = "<F4>"; action.__raw = "require('dap').step_out"; }
    { mode = "n"; key = "<F5>"; action.__raw = "require('dap').step_back"; }
    { mode = "n"; key = "<F12>"; action.__raw = "require('dap').restart"; }
  ];

  extraConfigLua = ''
    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  '';
}
