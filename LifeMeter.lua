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


---@class LifeMeterBattery : LifeMeter
---@overload fun(self: LifeMeterBattery): self
---@field [string] fun(self: LifeMeterBattery)
LifeMeterBattery = {}

--- Changes the player's life by `iNumLives`. (Negative values subtract lives.)
---@param iNumLives integer
function LifeMeterBattery:ChangeLives(iNumLives) end

--- Returns the number of lives remaining.
---@return integer
function LifeMeterBattery:GetLivesLeft() end

--- Returns the number of total lives.
---@return integer
function LifeMeterBattery:GetTotalLives() end


---@class LifeMeterTime : LifeMeter
---@overload fun(self: LifeMeterTime): self
---@field [string] fun(self: LifeMeterTime)
LifeMeterTime = {}

--- Substracts `delta` from the player's current time. (Insert the opposite to
--- increase its value.)
function LifeMeterTime:ChangeTime(delta) end

--- Returns the current life of the player from 0 to 1.
---@return integer
function LifeMeterTime:GetLife() end

--- Returns the seconds equivalent of GetLife, by reporting how time is left for the player.
---@return number
function LifeMeterTime:GetLifeSeconds() end

--- Sets the time left for the player by `value`.
function LifeMeterTime:SetLife(value) end
