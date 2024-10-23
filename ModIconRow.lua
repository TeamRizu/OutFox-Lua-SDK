---@meta
---@diagnostic disable: redundant-parameter

---@class ModIconRow : ActorFrame
---@overload fun(self: ModIconRow): self
---@field [string] fun(self: ModIconRow)
ModIconRow = {}

--- Loads the ModIconRow of Player `pn` from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
---@param pn PlayerNumber
function ModIconRow:Load(sMetricsGroup, pn) end
