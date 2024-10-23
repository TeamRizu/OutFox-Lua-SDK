---@meta
---@diagnostic disable: redundant-parameter

---@class PercentageDisplay : ActorFrame
---@overload fun(self: PercentageDisplay): self
---@field [string] fun(self: PercentageDisplay)
PercentageDisplay = {}

--- Sets the PercentageDisplay from the specified PlayerState and PlayerStageStats.
---@param pPlayerState PlayerState
---@param pPlayerStageStats PlayerStageStats
function PercentageDisplay:LoadFromStats(pPlayerState, pPlayerStageStats) end
