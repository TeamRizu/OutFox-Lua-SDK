---@meta
---@diagnostic disable: redundant-parameter

---@class LifeMeter : ActorFrame
---@overload fun(self: LifeMeter): self
---@field [string] fun(self: LifeMeter)
LifeMeter = {}

--- Returns the amount of life left in the LifeMeter as a float in the range 0..1.
---@return number
function LifeMeter:GetLife() end

--- Returns `true` if failing.
---@return boolean
function LifeMeter:IsFailing() end

--- Returns `true` if the LifeMeter is "hot".
---@return boolean
function LifeMeter:IsHot() end

--- Returns `true` if in danger.
---@return boolean
function LifeMeter:IsInDanger() end
