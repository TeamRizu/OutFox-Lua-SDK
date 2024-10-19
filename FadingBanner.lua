---@meta
---@diagnostic disable: redundant-parameter

---@class FadingBanner : ActorFrame
---@overload fun(self: FadingBanner): self
---@field [string] fun(self: FadingBanner)
FadingBanner = {}

--- Returns the index of the last banner loaded.
---@return integer
function FadingBanner:GetLatestIndex() end

--- Loads the card image from the specified Character.
---@param pCharacter Character
function FadingBanner:LoadCardFromCharacter(pCharacter) end

--- Loads the fallback course banner.
function FadingBanner:LoadCourseFallback() end

--- Loads the fallback banner.
function FadingBanner:LoadFallback() end

--- Loads a Banner from a specified Course.
---@param c Course
function FadingBanner:LoadFromCourse(c) end

--- Loads a Banner from a specified Song.
---@param s SongObject
function FadingBanner:LoadFromSong(s) end

--- Loads a Banner from a specified Song Group.
---@param s string
function FadingBanner:LoadFromSongGroup(s) end

--- Loads a Banner from a specified SortOrder.
---@param so SortOrder
function FadingBanner:LoadFromSortOrder(so) end

--- Loads an icon from the specified Character.
---@param pCharacter Character
function FadingBanner:LoadIconFromCharacter(pCharacter) end

--- Loads the Random banner.
function FadingBanner:LoadRandom() end

--- Loads the Roulette banner.
function FadingBanner:LoadRoulette() end

--- Scale the FadingBanner to width `fWidth` and height `fHeight` clipping if
--- the dimensions do not match.
--- <br>
--- Alias of `FadingBanner.scaletoclipped()`.
---@param fWidth number
---@param fHeight number
function FadingBanner:ScaleToClipped(fWidth, fHeight) end

--- Scale the FadingBanner to width `fWidth` and height `fHeight` clipping if
--- the dimensions do not match.
---@param fWidth number
---@param fHeight number
function FadingBanner:scaletoclipped(fWidth, fHeight) end
