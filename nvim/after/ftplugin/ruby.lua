local util = require("util")

util.nnoremap("<leader>bp", "orequire 'pry'; binding.pry<ESC>")
util.nnoremap("<leader>br", ":g/binding.pry/d<CR>")

function _G.load_rails_projections()
  if vim.fn.exists("g:rails_projections") then
    vim.g["rails_projections"] = vim.fn["projections#load_projections"]("rails")
    vim.cmd([[
			autocmd User ProjectionistActivate :call projections#set_projections('rails')
		]])
  end
end

vim.cmd([[autocmd User Rails :lua load_rails_projections()]])
