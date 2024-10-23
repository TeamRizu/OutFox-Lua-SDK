---@meta
---@diagnostic disable: redundant-parameter

---@class GraphDisplay : ActorFrame
---@overload fun(self: GraphDisplay): self
---@field [string] fun(self: GraphDisplay)
GraphDisplay = {}

--- Loads the GraphDisplay commands from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
function GraphDisplay:Load(sMetricsGroup) end

--- Sets the values of the GraphDisplay using the specified StageStats and
--- PlayerStageStats.
---@param s StageStats
---@param pss PlayerStageStats
function GraphDisplay:Set(s, pss) end
