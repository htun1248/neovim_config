vim.opt.clipboard:append('unnamedplus') -- use system clipboard as default register

local options = {
  -- APPEARENCE about
  fileencoding = 'utf-8',
  encoding = 'utf-8',
  termguicolors = true,
  conceallevel = 0,
  number = true,
  relativenumber = false,
  numberwidth = 2, -- default is 4
  signcolumn = 'no',
  cursorline = false,
  wrap = true,
  cmdheight = 10,
  pumheight = 12,
  wildmenu = false,
  lazyredraw = true,
  showmode = false,
  splitbelow = true,
  splitright = true,

  -- INDENT about
  tabstop = 2, -- spaces for tabs
  shiftwidth = 2, -- 2 spaces for indent width
  softtabstop = 2,
  expandtab = true, -- expand tab to spaces
  breakindent = true,
  linebreak = false,
  smarttab = true,
  shiftround = true,
  cindent = true,
  autoindent = true, -- copy indent from current line when starting new line
  smartindent = true,

  -- EDIT about
  mouse = 'a',
  ignorecase = true, -- ignore case in searching
  smartcase = true, -- if you include mixed case in your search, assumes you want case-sensitive
  hlsearch = true,
  incsearch = true,
  showmatch = true,

  -- OTHER
  backup = false,
  swapfile = false,
  list = false,
  backspace = 'indent,eol,start',
  -- scrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
