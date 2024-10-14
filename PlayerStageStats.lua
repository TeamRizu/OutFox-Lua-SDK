---@meta

---@class PlayerStageStats
PlayerStageStats = {}

--- Fails the player.
function PlayerStageStats:FailPlayer() end

--- Returns `true` if a full combo (TNS_W3 and up) was obtained.
---@return boolean
function PlayerStageStats:FullCombo() end

--- Returns `true` if a full combo (`tns` and up) was obtained.
---@param tns TapNoteScore
---@return boolean
function PlayerStageStats:FullComboOfScore(tns) end

--- Returns the number of Dance Points obtained by the player.
---@return integer
function PlayerStageStats:GetActualDancePoints() end

--- Returns how long the player has been alive.
---@return number
function PlayerStageStats:GetAliveSeconds() end

--- Returns the best tap note score for a full combo.
---@return TapNoteScore
function PlayerStageStats:GetBestFullComboTapNoteScore() end

--- Returns the number of calories burned.
---@return number
function PlayerStageStats:GetCaloriesBurned() end

--- Returns a table of the amount of judgments each column got.
---@return number[][]
function PlayerStageStats:GetColumnScores() end

--- Returns a table containing the offset data for each judgment. Each offset table follows this format: {time, offset, TapNoteScore, isFake}
---@return number[][]
function PlayerStageStats:GetOffsetData() end

--- Returns a table of all the combos.  Each entry in the table is a table containing the StartSecond, SizeSeconds, Count, Rollover, StageCount, and IsZero information for that combo.
---@return number[][]
function PlayerStageStats:GetComboList() end

--- Returns the current possible maximum score.
---@return integer
function PlayerStageStats:GetCurMaxScore() end

--- Returns the player's current combo.
---@return integer
function PlayerStageStats:GetCurrentCombo() end

--- Returns the player's current life from 0..1.
---@return number
function PlayerStageStats:GetCurrentLife() end

--- Returns the player's current miss combo.
---@return integer
function PlayerStageStats:GetCurrentMissCombo() end

--- Returns the number of Dance Points possible to be obtained by the player.
---@return integer
function PlayerStageStats:GetCurrentPossibleDancePoints() end

--- Returns the player's current score multiplier.
---@return integer
function PlayerStageStats:GetCurrentScoreMultiplier() end

--- Returns `true` if the player failed.
---@return boolean
function PlayerStageStats:GetFailed() end

--- Returns the player's grade.
---@return Grade
function PlayerStageStats:GetGrade() end

--- Returns the player's HighScore.
---@return HighScore
function PlayerStageStats:GetHighScore() end

--- Returns the number of judgments for a specified HoldNoteScore.
---@param hns HoldNoteScore
---@return integer
function PlayerStageStats:GetHoldNoteScores(hns) end

--- Sets the number of HoldNoteScores for `hns` to `iNewAmt`.
---@param tns HoldNoteScore
---@param iNewAmt integer
---@return integer
function PlayerStageStats:SetHoldNoteScores(tns, iNewAmt) end

--- Returns the player's actual score on the lesson.
---@return integer
function PlayerStageStats:GetLessonScoreActual() end

--- Returns the score needed to pass the lesson.
---@return integer
function PlayerStageStats:GetLessonScoreNeeded() end

--- Returns table of samples of the life record from 0 to last_second.
--- 
--- 'samples' determines the size of the table.  'samples' defaults to 100
--- if not specified.
---@param last_second number
---@param samples integer
---@return number[]
function PlayerStageStats:GetLifeRecord(last_second, samples) end

--- Returns table of samples of the TapNoteScore record from 0 to last_second.
--- 
--- 'samples' determines the size of the table.  'samples' defaults to 100
--- if not specified.
---@param last_second number
---@param samples integer
---@return TapNoteScore[]
function PlayerStageStats:GetTapNoteScoreRecord(last_second, samples) end

--- Returns the player's life remaining seconds.
---@return number
function PlayerStageStats:GetLifeRemainingSeconds() end

---@return integer
function PlayerStageStats:GetMachineHighScoreIndex() end

---@return integer
function PlayerStageStats:GetNumControllerSteps() end

---@return PeakComboAward
function PlayerStageStats:GetPeakComboAward() end

---@return integer
function PlayerStageStats:GetPersonalHighScoreIndex() end

---@return Steps[]
function PlayerStageStats:GetPlayedSteps() end

---@return number
function PlayerStageStats:GetPercentageOfTaps(tns) end

---@return number
function PlayerStageStats:GetPercentDancePoints() end

---@return integer
function PlayerStageStats:GetPossibleDancePoints() end

---@return Steps[]
function PlayerStageStats:GetPossibleSteps() end

---@return RadarValues
function PlayerStageStats:GetRadarActual() end

---@return RadarValues
function PlayerStageStats:GetRadarPossible() end

--- Returns a RadarValues object representing the player's current performance.
--- 
--- Unlike PlayerStageStats:GetRadarActual(), this object provides the values in
--- real time. However, Main radar calculations (such as Voltage, Stream, etc.) are not performed here,
--- as these are just for displaying the current values of said categories.
---@return RadarValues
function PlayerStageStats:GetRadarCurrent() end

--- Returns the score.
---@return integer
function PlayerStageStats:GetScore() end

--- Returns the number of songs passed.
---@return integer
function PlayerStageStats:GetSongsPassed() end

--- Returns the number of songs played.
---@return integer
function PlayerStageStats:GetSongsPlayed() end

--- Returns the stage award for this performance.
---@return StageAward
function PlayerStageStats:GetStageAward() end

--- Returns how long the player survived in seconds.
---@return number
function PlayerStageStats:GetSurvivalSeconds() end

--- Returns the number of judgments for a specified TapNoteScore.
---@return integer
function PlayerStageStats:GetTapNoteScores(tns) end

--- Returns the worst achieved TapNoteScore achieved by the player.
---@return TapNoteScore
function PlayerStageStats:GetWorstTapNoteScore() end

--- Sets the number of TapNoteScores for `tns` to `iNewAmt`.
---@return integer
function PlayerStageStats:SetTapNoteScores(tns, iNewAmt) end

--- Returns the max combo for this performance.
---@return integer
function PlayerStageStats:MaxCombo() end

--- Returns `true` if the player was disqualified from ranking.
---@return boolean
function PlayerStageStats:IsDisqualified() end

--- Sets the current maximum score.
function PlayerStageStats:SetCurMaxScore(iScore) end

--- Sets the Dance Point limits of the current stage.
---
--- Setting a parameter to `nil` will result in the parameter not affecting the given limit.
---
--- For example, having actual as `nil` will mean ActualDancePoints is unaffected.
---
--- If the ActualDancePoints is greater than PossibleDancePoints, ActualDancePoints will be clamped to PossibleDancePoints's value.
---@param actual integer
---@param possible integer
function PlayerStageStats:SetDancePointLimits(actual, possible) end

--- Similar to PlayerStageStats.SetDancePointLimits, but this function won't perform the clamping.
-- This means percentages of over 100% are possible.
---@param actual integer
---@param possible integer
function PlayerStageStats:SetDancePoint(actual, possible) end

---@param iScore integer
function PlayerStageStats:SetScore(iScore) end