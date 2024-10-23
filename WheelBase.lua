---@meta
---@diagnostic disable: redundant-parameter

---@class WheelBase : ActorFrame
---@overload fun(self: WheelBase): self
---@field [string] fun(self: WheelBase)
WheelBase = {}

--- Returns the wheel's current index.
---@return integer
function WheelBase:GetCurrentIndex() end

--- Returns the total number of items in the wheel.
---@return integer
function WheelBase:GetNumItems() end

--- Returns the WheelItemDataType of the selected item.
---@return WheelItemDataType
function WheelBase:GetSelectedType() end

--- Returns the WheelItem at index `iIndex`.
---@param iIndex integer
---@return WheelItemBase
function WheelBase:GetWheelItem(iIndex) end

--- Returns `true` if the wheel is locked.
---@return boolean
function WheelBase:IsLocked() end

--- Returns `true` if the wheel is settled/stopped moving.
---@return boolean
function WheelBase:IsSettled() end

--- Moves the wheel by `n`.
---@param n integer
function WheelBase:Move(n) end

--- Attempts to set the open section to `sSection`.
---@param sSection string
function WheelBase:SetOpenSection(sSection) end
