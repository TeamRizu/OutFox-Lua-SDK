---@meta

---@class RageTexture
RageTexture = {}

--- Returns the source width.
---@return number
function RageTexture:GetSourceWidth() end

--- Returns the source height.
---@return number
function RageTexture:GetSourceHeight() end

--- Returns the texture width.
---@return number
function RageTexture:GetTextureWidth() end

--- Returns the texture height.
---@return number
function RageTexture:GetTextureHeight() end

--- Returns the image width.
---@return number
function RageTexture:GetImageWidth() end

--- Returns the image height.
---@return number
function RageTexture:GetImageHeight() end

--- Returns the number of frames in this texture.
---@return integer
function RageTexture:GetNumFrames() end

--- Returns the path to the texture's file.
---@return string
function RageTexture:GetPath() end

--- Return the texture coordinate rectangle as four floats in the order `left, top, right, bottom`.
---@return number,number,number,number
function RageTexture:GetTextureCoordRect() end

--- Sets the animation or movie looping to `bLoop`.
---@param bLoop boolean
function RageTexture:loop(bLoop) end

--- Sets the animation or movie position to `fPos`.
---@param fPos number
function RageTexture:position(fPos) end

--- Sets the animation or movie playback rate to `fRate`.
---@param fRate number
function RageTexture:rate(fRate) end

--- Reloads the texture.
function RageTexture:Reload() end


---@class RageTextureRenderTarget : RageTexture
RageTextureRenderTarget = {}

function RageTextureRenderTarget:BeginRenderingTo() end

function RageTextureRenderTarget:FinishRenderingTo() end
