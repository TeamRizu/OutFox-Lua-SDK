---@meta

---@class DeviceInputArgs
---@field device string
---@field button string
---@field level number
---@field z number
---@field down number
---@field ago number
---@field is_joystick boolean
---@field is_mouse boolean

---@class InputCallback
---@field DeviceInput DeviceInputArgs
---@field controller string
---@field button string
---@field type string
---@field GameButton string
---@field PlayerNumber PlayerNumber
---@field MultiPlayer string

---@class Screen
---@diagnostic disable: param-type-mismatch
---@type (self|ActorFrame)
Screen = {}

--- This adds the lua function "callback" to the list of functions the screen will pass input to.  Whenever an input event occurs, callback will be passed a table with the details of the event.  callback must return a bool to indicate whether the event was handled.  If callback returns true, the event will not be passed any further.
---
--- This should not be used to provide text input because that would not handle localization or different keyboard layouts.
---
--- The screen and the callbacks will both be passed input events, so be aware of what input the current screen responds to and consider the effects.
--- Details of the table containing the event data:
--- 
--- ```lua
--- {
---     DeviceInput= { -- The raw details of the event.
---         device= string, -- The type of device.  The first half of the string will be "Device_", the second half will be from InputDeviceNames in RageInputDevice.cpp.
---         button= string, -- The button that was pressed.  the first half of the string will be "DeviceButton_", the second half will be from InitNames in RageInputDevice.cpp.
---         level= float, -- A floating point value for analog input.
---         z= float, -- Mousewheel input.
---         down= bool, -- Whether the button is down.  This is level with a threshold and debouncing applied.
---         ago= float, -- How long ago this input occurred, in seconds.
---         is_joystick= bool, -- True if the device is a joystick.
---         is_mouse= bool -- True if the device is a mouse.
---     }, -- This ends the list of things inside the DeviceInput part of the table.
---     controller= string, -- The game controller this event was mapped to.  "GameController_1" or "GameController_2", or nil if the event wasn't mapped to either controller.
---     button= string, -- The semi-raw button that was pressed.  This is what the button was mapped to by the keymap settings, but without the conversions that occur when OnlyDedicatedMenuButtons is true.  Will be empty if the button was not mapped.
---     type= string, -- The type of event.  "InputEventType_FirstPress", "InputEventType_Repeat", or "InputEventType_Release".
---     GameButton= string, -- The cooked button that was pressed.  This is button with mapping that occurs when OnlyDedicatedMenuButtons is true applied.  This is nil for unmapped buttons.
---     PlayerNumber= PlayerNumber, -- The player that the controller is mapped to, or nil.
---     MultiPlayer= string, -- Unknown purpose.
--- }
--- ```
---@param callback fun(event: InputCallback)
function Screen:AddInputCallback(callback) end

--- Returns the name of the next Screen.
---@return string
function Screen:GetNextScreenName() end

--- Returns the name of the previous Screen.
---@return string
function Screen:GetPrevScreenName() end

--- Returns the ScreenType for this Screen.
---@return ScreenType
function Screen:GetScreenType() end

--- Locks input for `f` seconds.
---@param f number
function Screen:lockinput(f) end

--- [02 Other.lua] Gets a metric from the current Screen.
---@param sName string
function Screen:Metric(sName) end

--- Posts a message with the text `sScreenMsg` to the Screen after `fDelay` seconds.
---@param sName string
---@return self
function Screen:PostScreenMessage(sName) end

--- This removes the callback from the list.
---@param callback function
---@return self
function Screen:RemoveInputCallback(callback) end

--- Sets the NextScreen value to name.
---@param name string
---@return self
function Screen:SetNextScreenName(name) end

--- Sets the PrevScreen value to name.
---@param name string
---@return self
function Screen:SetPrevScreenName(name) end

--- [02 Other.lua] Gets a string from the current Screen in the current language.
---@return string
function Screen:String(sName) end
