---@meta
---@diagnostic disable: redundant-parameter

---@class MeterDisplay : ActorFrame
---@overload fun(self: MeterDisplay): self
---@field [string] fun(self: MeterDisplay)
MeterDisplay = {}

--- Sets the width of the MeterDisplay to `fWidth`.
---@param fWidth number
function MeterDisplay:SetStreamWidth(fWidth) end
