---@meta

---@see Profile.GetHighScoreList # to get a HighScoreList object.
---@class HighScoreList
HighScoreList = {}

--- Returns a table of the high scores.
---@return HighScore[]
function HighScoreList:GetHighScores() end

--- Returns the highest score for name in the list.  Returns nil if there is no score for name in the list.
---@param name string
---@return HighScore
function HighScoreList:GetHighestScoreOfName(name) end

--- Returns the rank of the highest score for name in the list.  Returns 0 if there is no score for name in the list.  (returns 1 if name has the top score, 2 if name has the second place score, and so on)
---@param name string
---@return integer
function HighScoreList:GetRankOfName(name) end