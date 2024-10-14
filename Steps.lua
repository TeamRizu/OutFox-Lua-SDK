---@meta

---@class Steps
Steps = {}

--- Returns a table with the note density throughout the Steps.
---@return integer[]
function Steps:GenerateDensityDataForSteps() end

--- Retruns a table with the amount of measures that each stream takes up
--- in the Steps.
---@param iMinNotes integer
---@return integer[]
function Steps:GenerateStreamMeasures(iMinNotes) end

---Returns the author that made that particular Steps pattern.
---@return string
function Steps:GetAuthorCredit() end

--- Returns the path to the Steps' banner file.
---@return string
function Steps:GetBannerFile() end

--- Returns the length of a chart in seconds, which my be different from
--- the length of a song.
---@return number
function Steps:GetChartLength() end

--- Returns the Steps chart name.
---@return string
function Steps:GetChartName() end

--- Returns the Chart Style for these steps.
---@return string
function Steps:GetChartStyle() end

--- Returns the Steps description.
---@return string
function Steps:GetDescription() end

--- Returns the Steps difficulty.
---@return Difficulty
function Steps:GetDifficulty() end

--- Returns a table with the minimum and maximum values from the DisplayBPM.
---@return number[]
function Steps:GetDisplayBpms() end

--- Returns the DisplayBPM type.
---@return DisplayBPM
function Steps:GetDisplayBPMType() end

--- Returns the Steps filename from the cache.
---@return string
function Steps:GetFilename() end

--- Returns a table with the note density data in the format:
--- {iNoteCount, iMeasureCount}
---@param iMinNotes integer
---@return integer[][]
function Steps:GetGeneralDensityData(iMinNotes) end

--- Returns a hash of the steps.
---@return number
function Steps:GetHash() end

--- Returns the maximum NPS in the steps.
---@return integer
function Steps:GetMaxNPS() end

--- Returns the numerical difficulty of the Steps.
---@return integer
function Steps:GetMeter() end

--- Returns a table that contains the notedata of the Steps.
--- Behavior and format is similar to Player:GetNoteData.
---@param fStartBeat number
---@param fEndBeat number
---@return number[][]
function Steps:GetNoteData(fStartBeat, fEndBeat) end

--- Returns the number of density measures in the Steps.
---@return integer
function Steps:GetNumDensityMeasures() end

---@return boolean
function Steps:HasAttacks() end

---@return boolean
function Steps:HsaSignificantTimingChanges() end

--- Returns the complete list of RadarValues for the player.
--- Use RadarValues:GetValue() to grab a specific value.
---@param pn PlayerNumber
---@return RadarValues
function Steps:GetRadarValues(pn) end

---@return StepsType
function Steps:GetStepsType() end

---@return TimingData
function Steps:GetTimingData() end

---@return boolean
function Steps:IsAnEdit() end

---@return boolean
function Steps:IsAPlayerEdit() end

---@return boolean
function Steps:IsAutogen() end

---@return boolean
function Steps:IsDisplayBpmConstant() end

---@return boolean
function Steps:IsDisplayBpmRandom() end

---@return boolean
function Steps:IsDisplayBpmSecret() end

---@return number
function Steps:PredictMeter() end

----------------------

---@class RadarValues
RadarValues = {}

--- Returns the value of `rc` from Steps:GetRadarValues.
---@param rc RadarCategory
---@return integer
function RadarValues:GetValue(rc) end