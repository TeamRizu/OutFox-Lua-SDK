---@meta

---@class Trail
Trail = {}

--- Returns true if the song is in the Trail.
---@param s SongObject
---@return boolean
function Trail:ContainsSong(s) end

--- Returns an array with all the artists in the Trail.
--- The second table is the transliterated list of artists.
---@return string[] # Table of artists
---@return string[] # Transliterated list of artists.
function Trail:GetArtists() end

--- Returns the Trail's Difficulty.
---@return Difficulty
function Trail:GetDifficulty() end

--- Returns the length of this Trail in seconds.
---@return integer
function Trail:GetLengthSeconds() end

--- Returns a table of TrailEntry items.
---@return TrailEntry[]
function Trail:GetTrailEntries() end

---@return integer
function Trail:GetMeter() end

---@return RadarValues
function Trail:GetRadarValues() end

---@return StepsType
function Trail:GetStepsType() end

---@return integer
function Trail:GetTotalMeter() end

--- Returns the TrailEntry at index iEntry.
---@return TrailEntry
function Trail:GetTrailEntry(iEntry) end

---@return boolean
function Trail:IsSecret() end
