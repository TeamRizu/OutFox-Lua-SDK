---@meta
---@diagnostic disable: redundant-parameter

---@class HoldJudgment : ActorFrame
---@overload fun(self: HoldJudgment): self
---@field [string] fun(self: HoldJudgment)
HoldJudgment = {}

--- Loads the HoldJudgment for the specified MultiPlayer.
---@param mp MultiPlayer
function HoldJudgment:LoadFromMultiPlayer(mp) end
