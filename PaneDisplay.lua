---@meta
---@diagnostic disable: redundant-parameter

---@class PaneDisplay : ActorFrame
---@overload fun(self: PaneDisplay): self
---@field [string] fun(self: PaneDisplay)
PaneDisplay = {}

--- Sets the PaneDisplay from the GameState.
function PaneDisplay:SetFromGameState() end
