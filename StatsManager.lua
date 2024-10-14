---@meta

---@class StatsManager
STATSMAN = {}

--- Returns the accumulated played StageStats.
---@return StageStats
function STATSMAN:GetAccumPlayedStageStats() end

--- Returns the best final grade.
---@return Grade
function STATSMAN:GetBestFinalGrade() end

--- Returns the best grade.
---@return Grade
function STATSMAN:GetBestGrade() end

--- Returns the current StageStats.
---@return StageStats
function STATSMAN:GetCurStageStats() end

---@return StageStats
function STATSMAN:GetFinalEvalStageStats() end

--- Returns player `pn`'s final grade.
---@param pn PlayerNumber
function STATSMAN:GetFinalGrade(pn) end

--- Get the StageStats from `iAgo` rounds ago.
---@param iAgo integer
---@return StageStats
function STATSMAN:GetPlayedStageStats(iAgo) end

--- Returns the number of stages played.
---@return integer
function STATSMAN:GetStagesPlayed() end

--- Returns the worst grade.
---@return Grade
function STATSMAN:GetWorstGrade() end

--- Resets the stats.
function STATSMAN:Reset() end