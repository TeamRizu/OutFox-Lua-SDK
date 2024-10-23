---@meta

---@class SongPosition
SongPosition = {}

--- Returns the current beats per second.
---@return number
function SongPosition:GetCurBPS() end

--- Returns `true` if a Delay is active.
---@return boolean
function SongPosition:GetDelay() end

--- Returns `true` if a Freeze is active.
---@return boolean
function SongPosition:GetFreeze() end

---@return number
function SongPosition:GetMusicSeconds() end

---@return number
function SongPosition:GetMusicSecondsVisible() end

---@return number
function SongPosition:GetSongBeat() end

---@return number
function SongPosition:GetSongBeatNoOffset() end

---@return number
function SongPosition:GetSongBeatVisible() end

--- Returns the row where a warp appears.
---@return integer
function SongPosition:GetWarpBeginRow() end

--- Returns the warp destination length.
---@return number
function SongPosition:GetWarpDestination() end
