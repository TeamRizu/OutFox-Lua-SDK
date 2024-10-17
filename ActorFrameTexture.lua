---@meta

--- An ActorFrame that renders its contents to a texture.
---@class ActorFrameTexture : ActorFrame
---@overload fun(self: ActorFrameTexture) : self
---@field [string] fun(self: ActorFrameTexture, params: table?)
ActorFrameTexture = {}

--- Creates the ActorFrameTexture.
---@return self
function ActorFrameTexture:Create() end

--- Enables/disables the Alpha Buffer.
---@param bEnable boolean
---@return self
function ActorFrameTexture:EnableAlphaBuffer(bEnable) end

--- Enables/disables the Depth Buffer.
---@param bEnable boolean
---@return self
function ActorFrameTexture:EnableDepthBuffer(bEnable) end

--- Enables/disables the use of RGBA16F with textures.
--- Considered deprecated.
---@param bEnable boolean
---@return self
function ActorFrameTexture:EnableFloat(bEnable) end

--- Enables/disables the Preserve Texture option.
---@param bEnable boolean
---@return self
function ActorFrameTexture:EnablePreserveTexture(bEnable) end

--- Returns the texture.
---@return RageTexture
function ActorFrameTexture:GetTexture() end

--- Sets the texture's name to `sName`.
---@param sName string
---@return self
function ActorFrameTexture:SetTextureName(sName) end
