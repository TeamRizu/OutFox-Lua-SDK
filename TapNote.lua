---@meta

---@class TapNote
TapNote = {}

--- Returns the Attack Duration of the Tap Note in seconds.
---@return number
function TapNote:GetAttackDuration() end

--- Returns the Attack Modifiers of the Tap Note.
---@return string
function TapNote:GetAttackModifiers() end

--- Returns the Hold Duration of the Tap Note in beats.
---@return number
function TapNote:GetHoldDuration() end

--- Returns the `HoldNoteResult` of the Tap Note.
---@return HoldNoteResult
function TapNote:GetHoldNoteResult() end

--- Returns the Keysound Index of the Tap Note.
---@return integer
function TapNote:GetKeysoundIndex() end

--- Returns the `PlayerNumber` of the Tap Note. Relevant for routine steps.
---@return PlayerNumber
function TapNote:GetPlayerNumber() end

--- Returns the `TapNoteResult` of the Tap Note.
---@return TapNoteResult
function TapNote:GetTapNoteResult() end

--- Returns the `TapNoteSource` of the Tap Note.
---@return TapNoteSource
function TapNote:GetTapNoteSource() end

--- Returns the `TapNoteSubType` of the Tap Note.
---@return TapNoteSubType
function TapNote:GetTapNoteSubType() end

--- Returns the `TapNoteType` of the Tap Note.
---@return TapNoteType
function TapNote:GetTapNoteType() end
