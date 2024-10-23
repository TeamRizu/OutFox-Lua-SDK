---@meta

---@class UnlockEntry
UnlockEntry = {}

--- Sets the UnlockEntry's ID to `m_sEntryID`.
---@param m_sEntryID string
function UnlockEntry:code(m_sEntryID) end

--- Sets the UnlockEntry's course to `sCourseName`. (Ex. `course,"Driven"`)
--- @param sCourseName string
function UnlockEntry:course(sCourseName) end

--- Returns the code for this unlock.
---@return string
function UnlockEntry:GetCode() end

--- Returns the Course for this unlock.
---@return Course
function UnlockEntry:GetCourse() end

--- Returns the unlock description.
---@return string
function UnlockEntry:GetDescription() end

--- Returns the UnlockRequirement.
---@return UnlockRequirement
function UnlockEntry:GetRequirement() end

--- Returns `true` if the UnlockEntry requires you to pass Challenge steps.
---@return boolean
function UnlockEntry:GetRequirePassChallengeSteps() end

--- Returns `true` if the UnlockEntry requires you to pass Hard steps.
---@return boolean
function UnlockEntry:GetRequirePassHardSteps() end

--- Returns the Song related to the UnlockEntry.
---@return SongObject
function UnlockEntry:GetSong() end

--- Get all of the steps locked based on StepsType.
---@return Steps
function UnlockEntry:GetStepByStepsType() end

--- Get all of the steps locked based on difficulty.
---@return Steps[]
function UnlockEntry:GetStepOfAllTypes() end

--- Returns the UnlockRewardType for this entry.
---@return UnlockRewardType
function UnlockEntry:GetUnlockRewardType() end

--- Returns `true` if the UnlockEntry is locked.
---@return boolean
function UnlockEntry:IsLocked() end

--- Sets the UnlockEntry's modifier to `sModifier`.
---@param sModifier string
function UnlockEntry:mod(sModifier) end

--- Sets the requirement for this unlock to `m_fRequirement`.
---@param ur UnlockRequirement
---@param m_fRequirement number
function UnlockEntry:require(ur, m_fRequirement) end

--- Makes the UnlockEntry require passing Challenge steps.
function UnlockEntry:requirepasschallengesteps() end

--- Makes the UnlockEntry require passing Hard steps.
function UnlockEntry:requirepasshardsteps() end

--- Makes the UnlockEntry hide in Roulette.
function UnlockEntry:roulette() end

--- Sets the UnlockEntry's song to `sSongName`. `sSongName` also requires the group.
--- (Ex. `song,"In The Groove 2/Pandemonium"`)
---@param sSongName string
function UnlockEntry:song(sSongName) end

--- Sets the UnlockEntry to unlock a specified song's steps.
--- (Ex. `steps,"In The Groove 2/Pandemonium","expert"`)
---@param sSong string
---@param sSteps string
function UnlockEntry:steps(sSong, sSteps) end

--- Sets the UnlockEntry to unlock a specified song's stepstype.
---@param sSong string
---@param sSteps string
---@param sStepsType string
function UnlockEntry:steps_type(sSong, sSteps, sStepsType) end
