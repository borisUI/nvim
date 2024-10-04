if vim.g.vscode then 
  require("brs.vscode.keymaps")
else
  require("brs.core")
  require("brs.lazy")
end
