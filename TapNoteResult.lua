---@meta

---@class TapNoteResult
TapNoteResult = {}

--- Returns true if the Tap Note was judged with a result that would stop it from drawing.
---@return boolean
function TapNoteResult:GetHidden() end

--- Returns the TapNoteOffset of the Tap Note.
---@return number
function TapNoteResult:GetTapNoteOffset() end

--- Returns the `TapNoteScore` of the Tap Note.
---@return TapNoteScore
function TapNoteResult:GetTapNoteScore() end
