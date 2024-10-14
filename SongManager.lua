---@meta

---@class SongManager
SONGMAN = {}

--- Returns `true` if the specified course group exists.
function SONGMAN:DoesCourseGroupExist(sGroup) end

--- Returns `true` if the specified song group exists.
function SONGMAN:DoesSongGroupExist(sGroup) end

--- Returns a Course if one matching `sCourse` is found.
function SONGMAN:FindCourse(sCourse) end

--- Returns a Song if one matching `sSong` is found.
function SONGMAN:FindSong(sSong) end

--- Returns an array of all the installed courses.
function SONGMAN:GetAllCourses(bIncludeAutogen) end

--- Returns an array of all the installed songs.
function SONGMAN:GetAllSongs() end

--- Returns the course color of Course `c`.
---@param c Course
---@return RageColor
function SONGMAN:GetCourseColor(c) end

--- Returns the path to the specified course group's banner.
---@param sGroup string
---@return string
function SONGMAN:GetCourseGroupBannerPath(sGroup) end

--- Returns a table containing all of the course group names.
---@return string[]
function SONGMAN:GetCourseGroupNames() end

--- Returns a table with all of the courses in the specified group.
---@param sGroup string
---@param bIncludeAutogen boolean
---@return Course[]
function SONGMAN:GetCoursesInGroup(sGroup, bIncludeAutogen) end

--- Returns the extra stage info (Song, Steps) for the specified Style `s`. (If `bExtra2` is true, it will use the second Extra Stage data instead of the first. Again, Lua.xsd sucks)
---@param bExtra2 boolean
---@param s Style
---@return SongObject, Steps
function SONGMAN:GetExtraStageInfo(bExtra2, s) end

--- Returns the number of courses loaded via Additional folders.
---@return integer
function SONGMAN:GetNumAdditionalCourses() end

--- Returns the number of songs loaded via Additional folders.
---@return integer
function SONGMAN:GetNumAdditionalSongs() end

--- Returns the number of course groups.
---@return integer
function SONGMAN:GetNumCourseGroups() end

--- Returns the number of courses.
---@return integer
function SONGMAN:GetNumCourses() end

--- Returns the number of selectable and unlocked songs.
---@return integer
function SONGMAN:GetNumSelectableAndUnlockedSongs() end

--- Returns the number of song groups.
---@return integer
function SONGMAN:GetNumSongGroups() end

--- Returns the number of songs.
---@return integer
function SONGMAN:GetNumSongs() end

--- Returns the number of locked songs, regardless of reason for locking.
---@return integer
function SONGMAN:GetNumLockedSongs() end

--- Returns the number of unlocked songs.
---@return integer
function SONGMAN:GetNumUnlockedSongs() end

--- Returns a table of popular courses for the specified CourseType.
---@param ct CourseType
---@return Course[]
function SONGMAN:GetPopularCourses(ct) end

--- Returns a table of popular songs.
---@return SongObject[]
function SONGMAN:GetPopularSongs() end

--- Returns a table of courses as they'd appear in preferred sort.
---@param ct CourseType
---@param bIncludeAutogen boolean
---@return Course[]
function SONGMAN:GetPreferredSortCourses(ct, bIncludeAutogen) end

--- Returns a table of songs as they'd appear in preferred sort.
---@return SongObject[]
function SONGMAN:GetPreferredSortSongs() end

--- Returns a random course.
---@return Course
function SONGMAN:GetRandomCourse() end

--- Returns a random song.
---@return SongObject
function SONGMAN:GetRandomSong() end

--- Returns the song color of Song `s`.
---@param s SongObject
---@return RageColor
function SONGMAN:GetSongColor(s) end

--- Returns a Song given a set of Steps `st`.
---@param st Steps
---@return SongObject
function SONGMAN:GetSongFromSteps(st) end

--- Returns the path to the specified song group's banner.
---@param sGroup string
---@return string
function SONGMAN:GetSongGroupBannerPath(sGroup) end

--- Returns the song group color of `sGroupName`.
---@param sGroupName string
---@return RageColor
function SONGMAN:GetSongGroupColor(sGroupName) end

--- Returns a table containing all of the song group names.
---@return string[]
function SONGMAN:GetSongGroupNames() end

--- Returns the rank (popularity) of Song `s`.
---@param s SongObject
---@return integer
function SONGMAN:GetSongRank(s) end

--- Returns a table containing all of the songs in group `sGroupName`.
---@param sGroupName string
---@return SongObject[]
function SONGMAN:GetSongsInGroup(sGroupName) end

--- Returns the shortened group name (based on entries in Translations.xml).
---@param sGroupName string
---@return string
function SONGMAN:ShortenGroupName(sGroupName) end

--- Loads preferred courses from `{theme}/Other/SongManager sListName.txt`.
---@param sListName string
function SONGMAN:SetPreferredCourses(sListName) end

--- Loads preferred songs from `{theme}/Other/SongManager sListName.txt`.
---@param sListName string
function SONGMAN:SetPreferredSongs(sListName) end

--- Returns the preferred sort section name for the specified Song.
---@param s SongObject
---@return string
function SONGMAN:SongToPreferredSortSectionName(s) end

--- Returns `true` if the specified course was loaded from AdditionalCourses.
---@param c Course
---@return boolean
function SONGMAN:WasLoadedFromAdditionalCourses(c) end

--- Returns `true` if the specified song was loaded from AdditionalSongs.
---@param s SongObject
---@return boolean
function SONGMAN:WasLoadedFromAdditionalSongs(s) end
