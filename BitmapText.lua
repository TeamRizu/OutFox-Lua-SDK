---@meta

---@class BitmapTextAttribute
---@field Length integer # How many characters should this attribute last for?
---@field Diffuse? RageColor # How should these characters be colored in?
---@field Diffuses? RageColor[] # A 4-entry table to color each corner of each glyph.
---@field Glow? RageColor 

---@class BitmapText : Actor
---@field Font? string Path to the font map to use.
---@field File? string Compatibility argument for Font.
---@field Text? string|number Text to generate upon creation.
---@field Name? string The name for the actor.
---@field [string] fun(self: BitmapText)
---@overload fun(self: BitmapText) : BitmapText
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: BitmapText)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: BitmapText)
---@field BeginCommand? fun(self: BitmapText)
---@operator call:BitmapText
---@diagnostic disable: redundant-parameter
BitmapText = {}

--- Add the attribute `attr` to the string at position `iPos`.
--- 
--- The attribute is a table that must contain Length, which
--- specifies how many (multi-byte) characters the attribute
--- is to apply.
--- 
--- If `Length=-1`, then the attribute applies
--- until another attribute overrides it.
--- <br>
--- ## Example:
--- ```lua
--- attr = { Length = 10; Diffuse = color("#AABBCC"); }
--- ```
--- <br>
---@param iPos integer
---@param attr BitmapTextAttribute
---@return self
function BitmapText:AddAttribute(iPos, attr) end

--- Clear all attributes associated with the BitmapText.
function BitmapText:ClearAttributes() end

--- Sets the diffuse and stroke color of the text in one command.
---@param diffuseColor RageColor
---@param strokeColor RageColor
---@return self
function BitmapText:DiffuseAndStroke(diffuseColor, strokeColor) end

--- Returns the text that is currently set.
---@return string
function BitmapText:GetText() end

--- Causes each character of text to be randomly distorted by distortion_percentage
--- of its size when the text is set. The distortion only changes when the text
--- changes.
---@param distortion_percentage number
function BitmapText:distort(distortion_percentage) end

--- Turns off distortion.
function BitmapText:undistort() end

--- Returns whether the diffuse colors in the attributes are multiplied by the general diffuse colors of the BitmapText.
---@return boolean
function BitmapText:get_mult_attrs_with_diffuse() end

--- if `mult_attrs_with_diffuse` is set to true, then the diffuse colors in the
--- attributes are multiplied by the general diffuse colors of the BitmapText.
---@param mult boolean
function BitmapText:set_mult_attrs_with_diffuse(mult) end

--- if `bJitter` is true, move each character of the string around by a small randomly-- amount.
---@param bJitter boolean
function BitmapText:jitter(bJitter) end

--- If `use_zoom` is true, this BitmapText will use the zoom that has been applied to
--- it when calculating to change its base zoom from maxheight or maxwidth. 
---@param use_zoom boolean
function BitmapText:max_dimension_use_zoom(use_zoom) end

--- Set the maximum height of the unzoomed text to `fHeight`.
--- If `fHeight` is 0, then there is no maximum height.
---@param fHeight number
---@return self
function BitmapText:maxheight(fHeight) end

--- Set the maximum width of the unzoomed text to `fWidth`.
--- If `fWidth` is 0, then there is no maximum width.
---@param fWidth number
---@return self
function BitmapText:maxwidth(fWidth) end

--- [02 Actor.lua] Removes any stroke color.
function BitmapText:NoStroke() end

--- [02 Actor.lua] Alias for setting Actor:SetTextureFiltering to false.
---@return self
---@see Actor.SetTextureFiltering
function BitmapText:PixelFont() end

---If true, set each character to the text in turn to the rainbow colors in the
--- metrics `BitmapText::RainbowColor#`.
--- ```ini
--- [BitmapText]
--- RainbowColor1=color("#f40f94")
--- ```
---@param bRainbowScroll boolean
function BitmapText:rainbowscroll(bRainbowScroll) end

--- Set the text to sText. This clears all attributes. <br><br>
--- If there are any missing glyphs in `sText`, you can use `sAltText` as an alternative
--- to be used.
--- If there are also missing glyphs in `sAltText`, then `sText` will be used instead.
---@param sText string|number
---@param sAltText? (string|number)
---@return self
function BitmapText:settext(sText, sAltText) end

--- [02 Actor.lua] Sets text using `string.format(sFormat, ...)`.
---@param sFormat string
---@return self
function BitmapText:settextf(sFormat, ...) end

--- [02 Actor.lua] Alias for <Link function='strokecolor' />.
---@param c RageColor
---@return self
function BitmapText:Stroke(c) end

--- Sets the stroke color to `c`.
---@param c RageColor
---@return self
function BitmapText:strokecolor(c) end

--- Returns the stroke color.
---@return RageColor
function BitmapText:getstrokecolor() end

--- If the text is glowing, specify if just the stroke layer, just the inner layer, or both are affected by the glow.
---@param tgm TextGlowMode
---@return self
function BitmapText:textglowmode(tgm) end

--- Loads a font from `sPath`, replacing the old glyphs currently loaded.
---@param sPath string
---@return self
function BitmapText:LoadFromFont(sPath) end

--- If `true`, make all text uppercase.
---@param b boolean
---@return self
function BitmapText:uppercase(b) end

--- Add `iSpacing` pixels of padding between lines of text.
---@param iSpacing number
---@return self
function BitmapText:vertspacing(iSpacing) end

--- Wrap the unzoomed text at `iWidth` pixels. If you <Link class='Actor' function='zoom' /> or <Link class='Actor' function='zoomx' /> by `x` and you want the text wrapped at `width`, then you should use `wrapwidthpixels(width/x)`.
---@param iWidth number
---@return self
function BitmapText:wrapwidthpixels(iWidth) end
