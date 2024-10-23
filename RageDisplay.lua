---@meta

---@class RageDisplay
DISPLAY = {}

--- Return the cumulative FPS.
---@return integer
function DISPLAY:GetCumFPS() end

--- Return the height of the display.
---@return integer
function DISPLAY:GetDisplayHeight() end

--- Return an array-like `userdata` of type `DisplaySpecs`, which describes the displays
--- configured on the user's machine.
---@return DisplaySpecs
function DISPLAY:GetDisplaySpecs() end

--- Return the width of the display.
---@return integer
function DISPLAY:GetDisplayWidth() end

--- Return the number of frames per second.
---@return integer
function DISPLAY:GetFPS() end

--- Return the current renderer in use.
---@return string
function DISPLAY:GetRenderer() end

--- Return the VPF.
---@return integer
function DISPLAY:GetVPF() end

--- Return `true` if the current renderer/window implementation supports a fullscreen borderless-window mode, `false` otherwise.
---@return boolean
function DISPLAY:SupportsFullscreenBorderlessWindow() end

--- Return `true` if the current renderer supports render-to-texture, `false` otherwise.
---@return boolean
function DISPLAY:SupportsRenderToTexture() end
