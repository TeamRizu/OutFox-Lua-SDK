---@meta

---@class HighScore
HighScore = {}

--- Returns the date and time the high score was achieved.
---@return string
function HighScore:GetDate() end

--- Returns the Grade of this high score.
---@return Grade
function HighScore:GetGrade() end

--- Return the number of HoldNoteScores that match `hns`.
---@param hns HoldNoteScore
---@return integer
function HighScore:GetHoldNoteScore(hns) end

--- Returns the Max Combo of this high score.
---@return integer
function HighScore:GetMaxCombo() end

--- Returns the modifiers used for this HighScore.
---@return string
function HighScore:GetModifiers() end

--- Returns the name associated with the high score.
---@return string
function HighScore:GetName() end

--- Returns the Peak Combo Award for this high score.
---@return PeakComboAward
function HighScore:GetPeakComboAward() end

--- Returns the percentage of dance points associated with the high score.
---@return number
function HighScore:GetPercentDP() end

--- Returns the RadarValues for this HighScore.
---@return RadarValues
function HighScore:GetRadarValues() end

--- Returns the score associated with the high score.
---@return integer
function HighScore:GetScore() end

--- Retrns the Stage Award for this high score.
---@return StageAward
function HighScore:GetStageAward() end

--- Returns the number of seconds survived associated with the high score.
---@return number
function HighScore:GetSurvivalSeconds() end

--- Return the number of TapNoteScores that match `tns`.
---@param tns TapNoteScore
---@return integer
function HighScore:GetTapNoteScore(tns) end

--- Returns `true` if this high score's name uses a fill-in marker.
---@return boolean
function HighScore:IsFillInMarker() end
