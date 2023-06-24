require('johnny.base')
require('johnny.highlights')
require('johnny.maps')
require('johnny.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('johnny.macos')
end
if is_win == 1 then
  require('johnny.windows')
end
if is_wsl == 1 then
  require('johnny.wsl')
end
