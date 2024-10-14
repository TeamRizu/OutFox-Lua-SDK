---@meta

---@class InputFilter
INPUTFILTER = {}

---@param sButton string
---@param pn PlayerNumber
function INPUTFILTER:GameButtonToKeyMapped(sButton, pn) end

--- Returns the mouse wheel value.
---@return number
function INPUTFILTER:GetMouseWheel() end

--- Returns the X position of the mouse.
---@return number
function INPUTFILTER:GetMouseX() end

--- Returns the Y position of the mouse.
---@return number
function INPUTFILTER:GetMouseY() end

function INPUTFILTER:ResetMaping() end

---@param GUID string
---@param Name string
---@param Controller integer
---@param XButton string
---@param Button integer
function INPUTFILTER:MapButton(GUID, Name, Controller, XButton, Button) end

function INPUTFILTER:SaveMapping() end

---@param device integer
function INPUTFILTER:OpenController(device) end