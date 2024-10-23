---@meta
---@diagnostic disable: redundant-parameter

---@class StepsDisplayList : ActorFrame
---@overload fun(self: StepsDisplayList): self
---@field [string] fun(self: StepsDisplayList)
StepsDisplayList = {}

--- Sets the StepsDisplayList from the GameState.
function StepsDisplayList:setfromgamestate() end
