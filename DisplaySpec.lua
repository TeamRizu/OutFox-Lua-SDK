---@meta

--- An object describing a display: its supported and current video modes.
---@class DisplaySpec
DisplaySpec = {}

--- Return the currently active `DisplayMode` for this display, or `nil` if there is no such mode.
---@return DisplayMode
function DisplaySpec:GetCurrentMode() end

--- Return the unique identifier of the display.
---@return string
function DisplaySpec:GetId() end

--- Return the "human-readable" display name.
---@return string
function DisplaySpec:GetName() end

--- Return the `DisplayMode`s supported by this device.
---@return DisplayMode[]
function DisplaySpec:GetSupportedModes() end

--- Return `true` if this `DisplaySpec` is describing the "logical display" like an X screen or the
--- Win32 "Virtual screen", or `false` otherwise (if this describes a physical display).
---@return boolean
function DisplaySpec:IsVirtual() end
