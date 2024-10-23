---@meta

---@class ActorMultiTexture : Actor
ActorMultiTexture = {}

--- Adds a texture to the ActorMultiTexture. Returns the number of
--- texture units.
---@param tex RageTexture
---@return integer
function ActorMultiTexture:AddTexture(tex) end

--- Clears all the textures from the ActorMultiTexture.
---@return self
function ActorMultiTexture:ClearTextures() end

--- Sets the EffectMode on the ActorMultiTexture.
---@param em EffectMode
---@return self
function ActorMultiTexture:SetEffectMode(em) end

--- Sets the size of the ActorMultiTexture from the specified
--- texture.
---@param tex RageTexture
---@return self
function ActorMultiTexture:SetSizeFromTexture(tex) end

--- Sets the coordinates of the ActorMultiTexture.
---@param x1 float
---@param y1 float
---@param x2 float
---@param y2 float
---@return self
function ActorMultiTexture:SetTextureCoords(x1, y1, x2, y2) end

--- Sets a TextureMode on the specified index.
---@param iIndex integer
---@param tm TextureMode
---@return self
function ActorMultiTexture:SetTextureMode(iIndex, tm) end
