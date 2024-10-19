---@meta
---@diagnostic disable: redundant-parameter

---@class GrooveRadar : ActorFrame
---@overload fun(self: GrooveRadar): self
---@field [string] fun(self: GrooveRadar)
GrooveRadar = {}

--- Sets the GrooveRadar values for Player `pn` to empty.
---@param pn PlayerNumber
function GrooveRadar:SetEmpty(pn) end

--- Sets the GrooveRadar values for Player `pn` from RadarValues `rv`.
---@param pn PlayerNumber
---@param rv RadarValues
function GrooveRadar:SetFromRadarValues(pn, rv) end

--- Sets the GrooveRadar values for Player `pn` to the specified
--- (floating point) values in the table.
---@param pn PlayerNumber
---@param vals table
function GrooveRadar:SetFromValues(pn, vals) end
