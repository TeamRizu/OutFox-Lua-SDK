---@class Banner : Actor
---@field [string] fun(self: Banner)
---@overload fun(self: Banner) : Banner
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: Banner)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: Banner)
---@field BeginCommand? fun(self: Banner)
---@operator call:Banner
---@diagnostic disable: redundant-parameter
Banner = {}

--- Returns `true` if the Banner is currently scrolling.
---@return boolean
function Banner:GetScrolling() end

--- <!-- todo -->
---@return number
function Banner:GetPercentScrolling() end

--- Loads the background from an UnlockEntry.
---@param pUE UnlockEntry
---@return self
function Banner:LoadBackgroundFromUnlockEntry(pUE) end

--- Loads the banner from an UnlockEntry.
---@param pUE UnlockEntry
---@return self
function Banner:LoadBannerFromUnlockEntry(pUE) end

--- Loads the card image from the specified Character.
---@param pCharacter Character
---@return self
function Banner:LoadCardFromCharacter(pCharacter) end

--- Loads the banner from the cache based on `sPath` (typically <Link class='Song' function='GetBannerPath' /> or <Link class='Course' function='GetBannerPath' />).
---@param sPath string
---@return self
function Banner:LoadFromCachedBanner(sPath) end

--- Loads a Banner from a specified Course.
---@param c Course
---@return self
function Banner:LoadFromCourse(c) end

--- Loads a Banner from a specified Song.
---@param s SongObject
---@return self
function Banner:LoadFromSong(s) end

--- Loads a Banner from a specified Song Group.
---@param s string
---@return self
function Banner:LoadFromSongGroup(s) end

--- Loads a Banner from a specified SortOrder.
---@param so SortOrder
---@return self
function Banner:LoadFromSortOrder(so) end

--- Loads an icon from the specified Character.
---@param pCharacter Character
---@return self
function Banner:LoadIconFromCharacter(pCharacter) end

---@param fWidth number
---@param fHeight number
---@see Sprite.scaletoclipped
---@return self
function Banner:scaletoclipped(fWidth, fHeight) end

---@param fWidth number
---@param fHeight number
---@see Sprite.scaletoclipped
---@return self
function Banner:ScaleToClipped(fWidth, fHeight) end

---@param bScroll boolean
---@return self
function Banner:SetScrolling(bScroll) end