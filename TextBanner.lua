---@meta
---@diagnostic disable: redundant-parameter

---@class TextBanner : ActorFrame
---@overload fun(self: TextBanner): self
---@field [string] fun(self: TextBanner)
TextBanner = {}

--- Loads the TextBanner from the specified metrics group.
---@param sMetricsGroup string
function TextBanner:Load(sMetricsGroup) end

--- Loads the TextBanner's child elements from a `Song`.
---@param s SongObject
function TextBanner:SetFromSong(s) end

--- Loads the TextBanner's child elements from strings.
---@param sDisplayTitle string
---@param sTranslitTitle string
---@param sDisplaySubTitle string
---@param sTranslitSubTitle string
---@param sDisplayArtist string
---@param sTranslitArtist string
function TextBanner:SetFromString(sDisplayTitle, sTranslitTitle, sDisplaySubTitle, sTranslitSubTitle, sDisplayArtist, sTranslitArtist) end
