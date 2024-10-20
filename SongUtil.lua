---@meta

---@class SongUtil
SongUtil = {}

--- Returns a table with the playable Steps for the present Song based on the present Game.
---@param so SongObject
---@return Steps[]
function SongUtil.GetPlayableSteps(so) end

--- Returns `true` if the song's steps (`st`) are playable.
---@param so SongObject
---@param st Steps
---@return boolean
function SongUtil.IsStepsPlayable(so, st) end

--- Returns `true` if the song's StepsType (`st`) are playable.
---@param so SongObject
---@param st StepsType
---@return boolean
function SongUtil.IsStepsTypePlayable(so, st) end
