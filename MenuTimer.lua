---@meta
---@diagnostic disable: redundant-parameter

---@class MenuTimer : ActorFrame
---@overload fun(self: MenuTimer): self
---@field [string] fun(self: MenuTimer)
MenuTimer = {}

--- Stops the MenuTimer by setting it to 99.99 and pausing.
function MenuTimer:disable() end

--- Returns the current MenuTimer's value.
---@return number
function MenuTimer:GetSeconds() end

--- Pauses the MenuTimer, stopping it from counting down.
function MenuTimer:pause() end

--- Sets the MenuTimer's value to `fSeconds`.
---@param fSeconds number
function MenuTimer:SetSeconds(fSeconds) end

--- Sets the MenuTimer's value to fSeconds.
--- Compatibility alias for `MenuTimer.SetSeconds`.
---@param fSeconds number
function MenuTimer:setseconds(fSeconds) end

--- Sets the MenuTimer's silent setting to `bSilent`.
---@param bSilent boolean
function MenuTimer:silent(bSilent) end

--- Starts up the timer.
function MenuTimer:start() end

--- Sets the MenuTimer's stealth setting to `bStealth`. If `true`, the timer will
--- be invisible and silent.
---@param bStealth boolean
function MenuTimer:stealth(bStealth) end

--- Stops the MenuTimer by setting it to 0 and pausing.
function MenuTimer:stop() end
