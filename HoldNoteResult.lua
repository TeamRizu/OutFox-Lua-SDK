---@meta

---@class HoldNoteResult
HoldNoteResult = {}

--- Returns true if the note was initiated.
---@return boolean
function HoldNoteResult:GetActive() end

--- Returns the number of checkpoints hit.
---@return integer
function HoldNoteResult:GetCheckpointsHit() end

--- Returns the number of checkpoints missed.
---@return integer
function HoldNoteResult:GetCheckpointsMissed() end

--- Returns true if the note was initiated and is being held.
---@return boolean
function HoldNoteResult:GetHeld() end

--- Returns the `HoldNoteScore` of the Hold Note.
---@return HoldNoteScore
function HoldNoteResult:GetHoldNoteScore() end

--- Returns the last beat the Hold Note was held.
---@return number
function HoldNoteResult:GetLastHeldBeat() end

--- Returns the life of the Hold Note.
---@return number
function HoldNoteResult:GetLife() end

--- Returns the amount of time the hold has overlapped the target.
---@return number
function HoldNoteResult:GetOverlappedTime() end
