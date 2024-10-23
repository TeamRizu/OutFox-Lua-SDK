---@meta
---@diagnostic disable: redundant-parameter

---@class StepsDisplay : ActorFrame
---@overload fun(self: StepsDisplay): self
---@field [string] fun(self: StepsDisplay)
StepsDisplay = {}

--- Loads the StepsDisplay commands from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
function StepsDisplay:Load(sMetricsGroup) end

--- Sets the StepsDisplay from the GameState using Player `pn`.
---@param pn PlayerNumber
function StepsDisplay:SetFromGameState(pn) end

--- Sets the StepsDisplay based on Steps `pSteps`.
---@param pSteps Steps
function StepsDisplay:SetFromSteps(pSteps) end

--- Sets the StepsDisplay based on Trail `pTrail`.
---@param pTrail Trail
function StepsDisplay:SetFromTrail(pTrail) end
