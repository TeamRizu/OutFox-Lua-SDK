---@meta
---@diagnostic disable: redundant-parameter

---@class GradeDisplay : ActorFrame
---@overload fun(self: GradeDisplay): self
---@field [string] fun(self: GradeDisplay)
GradeDisplay = {}

--- Loads the GradeDisplay commands from the Metrics in group `sMetricsGroup`.
---@param sMetricsGroup string
function GradeDisplay:Load(sMetricsGroup) end

--- Sets the GradeDisplay to show Grade `g`.
---@param g Grade
function GradeDisplay:SetGrade(g) end
