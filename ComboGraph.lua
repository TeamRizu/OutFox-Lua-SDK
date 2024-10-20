---@meta
---@diagnostic disable: redundant-parameter

---@class ComboGraph : ActorFrame
---@overload fun(self: ComboGraph): self
---@field [string] fun(self: ComboGraph)
ComboGraph = {}

--- Loads the ComboGraph commands from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
function ComboGraph:Load(sMetricsGroup) end

--- Sets the values of the ComboGraph using the specified StageStats and
--- PlayerStageStats.
---@param s StageStats
---@param pss PlayerStageStats
function ComboGraph:Set(s, pss) end
