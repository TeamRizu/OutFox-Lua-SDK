---@meta
---@diagnostic disable: redundant-parameter

---@class RollingNumbers : BitmapText
---@overload fun(self: RollingNumbers): self
---@field [string] fun(self: RollingNumbers)
RollingNumbers = {}

--- Loads the metrics for this RollingNumbers from `sGroupName`.
---@param sGroupName string
function RollingNumbers:Load(sGroupName) end

--- Sets the target number to `f`.
---@param f number
function RollingNumbers:targetnumber(f) end
