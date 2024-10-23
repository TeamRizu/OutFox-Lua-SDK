---@meta

---@class PlayerInfo
PlayerInfo = {}

--- Returns the `LifeMeter` of the PlayerInfo.
---@return LifeMeter
function PlayerInfo:GetLifeMeter() end

--- Returns the Steps located at `index` in the current steps queue.
---@return Steps
function PlayerInfo:GetStepsQueueWrapped(index) end
