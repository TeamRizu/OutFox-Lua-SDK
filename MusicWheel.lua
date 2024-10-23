---@meta
---@diagnostic disable: redundant-parameter

---@class MusicWheel : WheelBase
---@overload fun(self: MusicWheel): self
---@field [string] fun(self: MusicWheel)
MusicWheel = {}

--- Changes the sort order of the wheel. Returns `true` if the order was changed.
---@param so SortOrder
---@return boolean
function MusicWheel:ChangeSort(so) end

--- 
---@return string[]
function MusicWheel:GetCurrentSections() end

--- Returns the name of the currently selected section.
---@return string
function MusicWheel:GetSelectedSection() end

--- Returns `true` if the MusicWheel is currently handling Roulette selection.
---@return boolean
function MusicWheel:IsRouletting() end

--- 
---@param direction integer
function MusicWheel:Move(direction) end

--- Selects a course. Returns `false` on failure.
---@param cCourse Course
---@return boolean
function MusicWheel:SelectCourse(cCourse) end

--- Selects a song. Returns `false` on failure.
---@param sSong SongObject
---@return boolean
function MusicWheel:SelectSong(sSong) end
