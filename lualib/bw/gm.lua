local skynet = require "skynet"
local sname = require "bw.sname"

local M = {}
function M.add_gmcmd(modname, gmcmd_path)
    skynet.call(sname.GM, "lua", "add_gmcmd", modname, gmcmd_path)
end

function M.run(...)
    return skynet.call(sname.GM, "lua", "run", ...)
end
return M
