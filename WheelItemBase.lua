---@meta
---@diagnostic disable: redundant-parameter

---@class WheelItemBase : ActorFrame
---@overload fun(self: WheelItemBase): self
---@field [string] fun(self: WheelItemBase)
WheelItemBase = {}

--- Returns the color of this wheel item.
---@return RageColor
function WheelItemBase:GetColor() end

--- Returns the text of this wheel item.
---@return string
function WheelItemBase:GetText() end

--- Returns the type of this wheel item.
---@return WheelItemDataType
function WheelItemBase:GetType() end

--- Returns whether the wheel item has been loaded yet. If this function returns `false`,
--- calling any other WheelItemBase function will result in an error.
--- <br>
--- A specific case where this is known to happen is commands that trigger on
--- CurrentSongChanged because the music wheel clears the current song before it finishes
--- loading if the current song is longer than the number of stages remaining.
---@return boolean
function WheelItemBase:IsLoaded() end
