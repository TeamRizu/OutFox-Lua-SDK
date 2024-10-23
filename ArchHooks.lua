---@meta

---@class ArchHooks
HOOKS = {}

--- Returns true if the application presently has focus.
---@return boolean
function HOOKS:AppHasFocus() end

--- Returns the name of the architecture in use.
---@return string
function HOOKS:GetArchName() end
