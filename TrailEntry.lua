---@meta

---@class TrailEntry
TrailEntry = {}

--- Returns a string of modifiers used in this TrailEntry.
---@return string
function TrailEntry:GetNormalModifiers() end

--- Returns the Song used in this TrailEntry.
---@return SongObject
function TrailEntry:GetSong() end

--- Returns the Steps used in this directory.
---@return Steps
function TrailEntry:GetSteps() end

---@return boolean
function TrailEntry:IsSecret() end
