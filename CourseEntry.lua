---@meta

---@class CourseEntry
CourseEntry = {}

--- Returns the Song that this CourseEntry corresponds to.
---@return SongObject
function CourseEntry:GetSong() end

--- Returns the number of lives gained after completing the song.
---@return integer
function CourseEntry:GetGainLives() end

--- Returns the number of seconds gained after completing the song.
---@return number
function CourseEntry:GetGainSeconds() end

--- Returns any stage (non-timed) modifiers.
---@return string
function CourseEntry:GetNormalModifiers() end

--- Returns the number of modifier changes in this CourseEntry.
---@return integer
function CourseEntry:GetNumModChanges() end

--- Returns a comma-delimited string representing various facts about the CourseEntry.
---@return string
function CourseEntry:GetTextDescription() end

--- Returns <code>true</code> if this CourseEntry is a fixed song.
---@return boolean
function CourseEntry:IsFixedSong() end

--- Returns <code>true</code> if this CourseEntry is secret.
---@return boolean
function CourseEntry:IsSecret() end