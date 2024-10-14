---@meta

---@class StatePropertySprite
---@field Frame integer
---@field Delay number
---@field [table] number[]

---@class Sprite : Actor
---@field Texture? string Texture path to load. Uses a relative path.
---@overload fun(self: Sprite) : Sprite
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: Sprite)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: Sprite)
---@field BeginCommand? fun(self: Sprite)
---@operator call:Sprite
---@diagnostic disable: redundant-parameter
Sprite = {}

--- Returns the length of the animation in seconds.
---@return number
function Sprite:GetAnimationLengthSeconds() end

--- Gets whether the Sprite should call the decode function for its texture during updates.
---@return boolean
function Sprite:GetDecodeMovie() end

--- Return the number of states this Sprite has.
---@return integer
function Sprite:GetNumStates() end

--- Returns the Sprite's current state (frame number in a multi-frame sprite).
---@return integer
function Sprite:GetState() end

--- Returns the Sprite's texture.
---@return RageTexture
function Sprite:GetTexture() end

--- [02 Sprite.lua] Returns a `Frames` table consisting of `iNumFrames` frames lasting for a total of `fSeconds` seconds. `Offset` is an optional parameter that offsets the frames used by the given amount. This function is not a member function and should be used as `Frames = Sprite.LinearFrames( 5, 2.6 )`.
---@param iNumFrames integer
---@param fSeconds number
---@param Offset integer
---@return table
function Sprite:LinearFrames(iNumFrames, fSeconds, Offset) end

--- If `sPath` is `nil`, then unload the texture. Otherwise, load the texture at path `sPath`.
---@param sPath string
---@return self
function Sprite:Load(sPath) end

--- Load the song background texture at `sPath`.
---@param sPath string
---@return self
function Sprite:LoadBackground(sPath) end

--- Load the song banner texture at `sPath`.
---@param sPath string
---@return self
function Sprite:LoadBanner(sPath) end

--- Loads the image of type `sType` from the cache based on `sPath`.
---
--- Internal types: "Banner", "Background", "CDTitle", "Jacket", "CDImage" and "Disc".
---@param sType string
---@param sPath string
---@return self
function Sprite:LoadFromCached(sType, sPath) end


--- [02 Sprite.lua] Loads the background from the current Song or the first Trail entry.
---@return self
function Sprite:LoadFromCurrentSongBackground() end

--- [02 Sprite.lua] Load the texture for `song`'s background.
---@param song SongObject
---@return self
function Sprite:LoadFromSongBackground(song) end

--- [02 Sprite.lua] Load the texture for `song`'s banner.
---@param song SongObject
---@return self
function Sprite:LoadFromSongBanner(song) end

--- Sets the custom image rectangle. (Works in image pixel space.)
---@param fLeft number
---@param fTop number
---@param fRight number
---@param fBottom number
---@return self
function Sprite:SetCustomImageRect(fLeft, fTop, fRight, fBottom) end

--- Sets custom offsets for the corners of the Sprite.  Coordinates are paired,
--- corner order is upper left, lower left, lower right, upper right.
---@param ulx number
---@param uly number
---@param llx number
---@param lly number
---@param lrx number
---@param lry number
---@param urx number
---@param ury number
---@return self
function Sprite:SetCustomPosCoords(ulx, uly, llx, lly, lrx, lry, urx, ury) end

--- Turns off the custom pos coords for the sprite.
---@return self
function Sprite:StopUsingCustomPosCoords() end

--- Sets whether the Sprite should call the decode function for its texture during updates.
---@return self
function Sprite:SetDecodeMovie(decode) end

--- Set the <Link class='ENUM' function='EffectMode' /> to `mode`.
---@return self
function Sprite:SetEffectMode(mode) end

--- Sets the number of seconds into the animation to `fSeconds`.
---@return self
function Sprite:SetSecondsIntoAnimation(fSeconds) end

--- Sets the properties of the states of the sprite.
--- The properties table is identical to the "Frames" table that can be put in the sprite
--- when calling Def.Sprite.
---
--- ## Example
--- ```lua
--- {
---     {Frame= 0, Delay= .016, {0, 0}, {.25, .25}},
--- 	{Frame= 1, Delay= .016, {0, 0}, {.25, .25}},
--- 	{Frame= 2, Delay= .016, {0, 0}, {.25, .25}},
--- 	{Frame= 3, Delay= .016, {0, 0}, {.25, .25}},
--- }
--- ```
--- 
--- - Frame is optional, defaulting to 0.
--- - Delay is optional, defaulting to 0.
--- 
--- The two tables are optional upper left and lower right corners of the fraction of the frame to use.  The example makes the sprite only use the upper left corner of each frame.
--- 
--- ## Simpler example
--- ```lua
--- {
---     {Frame= 0, Delay= .016},
---     {Frame= 1, Delay= .016},
---     {Frame= 2, Delay= .016},
---     {Frame= 3, Delay= .016}
--- }
--- ```
--- This example makes the sprite use the whole of each frame.
---@param properties StatePropertySprite[]
function Sprite:SetStateProperties(properties) end

--- Set the texture to `texture`.
---@param texture RageTexture
---@return self
function Sprite:SetTexture(texture) end

---@param fX number
---@param fY number
function Sprite:addimagecoords(fX, fY) end

--- Allows the themer to set a custom texture rectangle that effects the way the texture is drawn.
---@param fLeft number
---@param fTop number
---@param fRight number
---@param fBottom number
---@return self
function Sprite:customtexturerect(fLeft, fTop, fRight, fBottom) end

--- Returns true if the sprite is using the effect clock for texcoordvelocity.
---@return boolean
function Sprite:get_use_effect_clock_for_texcoords() end

--- [02 Sprite.lua] Call <Link class='RageTexture' function='loop'>`RageTexture:loop`</Link>`( bLoop )` on the texture.
---@return self
function Sprite:loop(bLoop) end

--- [02 Sprite.lua] Call <Link class='RageTexture' function='position'>`RageTexture:position`</Link>`( fPos )` on the texture.
---@return self
function Sprite:position(fPos) end

--- [02 Sprite.lua] Call <Link class='RageTexture' function='rate'>`RageTexture:rate`</Link>`( fRate )` on the texture.
---@return self
function Sprite:rate(fRate) end

--- Scale the Sprite to width `fWidth` and height `fHeight` clipping if the dimensions do not match.
---@param fWidth number
---@param fHeight number
---@return self
function Sprite:scaletoclipped(fWidth, fHeight) end

--- Set the Sprite's state to `iNewState`.
---@param iNewState integer
---@return self
function Sprite:setstate(iNewState) end

--- If `use` is true, then the sprite will use the effect clock for texcoordvelocity.
---@param use boolean
---@return self
function Sprite:set_use_effect_clock_for_texcoords(use) end


---@param fX number
---@param fY number
---@return self
function Sprite:stretchtexcoords(fX,fY) end

--- Set the texture coordinate velocity which controls how the Sprite changes as it animates.
--- A velocity of 1 makes the texture scroll all the way once per second.
---@param fVelX number
---@param fVelY number
---@return self
function Sprite:texcoordvelocity(fVelX, fVelY) end

--- Crops the Sprite to `fWidth`x`fHeight`.
---@param fWidth number
---@param fHeight number
---@return self
function Sprite:CropTo(fWidth, fHeight) end

--- [01 alias.lua] Alias for CropTo.
---@param fWidth number
---@param fHeight number
---@return self
function Sprite:cropto(fWidth, fHeight) end

--- Sets all the state delays to `fRate`. Useful for Sprites that need to change by BPM (e.g. Tran from DDR 5th Mix, the cube from DS EuroMix 2).
---@param fRate number
---@return self
function Sprite:SetAllStateDelays(fRate) end