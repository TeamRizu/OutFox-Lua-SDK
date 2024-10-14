---@meta

---@class ProfileManager
PROFILEMAN = {}

--- Returns the Profile for the specified profile ID.
---@param sProfileID string
---@return Profile
function PROFILEMAN:GetLocalProfile(sProfileID) end

--- Returns a table of the local profile display names.
---@return string[]
function PROFILEMAN:GetLocalProfileDisplayNames() end

---@param iIndex integer
---@return Profile
function PROFILEMAN:GetLocalProfileFromIndex(iIndex) end

---@param iIndex integer
---@return string
function PROFILEMAN:GetLocalProfileIDFromIndex(iIndex) end

--- Returns a table of the local profile IDs.
---@return string[]
function PROFILEMAN:GetLocalProfileIDs() end

---@param sProfileID string
---@return string[]
function PROFILEMAN:GetLocalProfileIndexFromID(sProfileID) end

--- Returns the machine profile.
---@return Profile
function PROFILEMAN:GetMachineProfile() end

--- Retuns the amount of local profiles.
---@return integer
function PROFILEMAN:GetNumLocalProfiles() end

--- Returns the player name for player `pn`.
---@param pn PlayerNumber
---@return string
function PROFILEMAN:GetPlayerName(pn) end

--- Returns the profile for player `pn`.
---@param pn PlayerNumber
---@return Profile
function PROFILEMAN:GetProfile(pn) end

--- Returns the profile directory of the specified `ProfileSlot`.
---@param slot ProfileSlot
---@return boolean
function PROFILEMAN:GetProfileDir(slot) end

--- Returns the number of times Song s has been played with the specified ProfileSlot.
---@param s SongObject
---@param ps ProfileSlot
---@return boolean
function PROFILEMAN:GetSongNumTimesPlayed(s,ps) end

--- Returns the current stats prefix.
---@return boolean
function PROFILEMAN:GetStatsPrefix() end

--- Returns `true` if player `pn`'s profile is persistent.
---@param pn PlayerNumber
---@return boolean
function PROFILEMAN:IsPersistentProfile(pn) end

--- Returns `true` if Song `s` has never been played before (according to the machine profile).
---@param s SongObject
---@return boolean
function PROFILEMAN:IsSongNew(s) end

---@param id any
---@return string
function PROFILEMAN:LocalProfileIDToDir(id) end

--- Returns `true` if the profile from the memory card is new.
---@param pn PlayerNumber
---@return boolean
function PROFILEMAN:ProfileFromMemoryCardIsNew(pn) end

--- Returns `true` if `pn`'s Profile was loaded from a memory card.
---@param pn PlayerNumber
---@return boolean
function PROFILEMAN:ProfileWasLoadedFromMemoryCard(pn) end

--- Returns `true` if the last load of player `pn`'s profile was a LastGood copy of the profile.
---@param pn PlayerNumber
---@return boolean
function PROFILEMAN:LastLoadWasFromLastGood(pn) end

--- Returns `true` if the last load of player `pn`'s profile resulted in a tampered or corrupt profile.
---@param pn PlayerNumber
---@return boolean
function PROFILEMAN:LastLoadWasTamperedOrCorrupt(pn) end

--- Saves the local profile with the specified ID.
---@param ID string
---@return boolean
function PROFILEMAN:SaveLocalProfile(ID) end

--- Saves the machine profile.
---@return boolean
function PROFILEMAN:SaveMachineProfile() end

--- Saves the profile for player `pn`.
---@param pn PlayerNumber
---@return boolean
function PROFILEMAN:SaveProfile(pn) end

--- Sets the current stats prefix.  The stats prefix is prepended to the Stats.xml file when loading or saving a profile.
--- SetStatsPrefix will reload all profiles from the Stats.xml that has the given prefix.
---
--- In general, score entries are the only thing not preserved when changing the stats prefix.
--- 
--- Profile::HandleStatsPrefixChange in Profile.cpp lists the fields that are preserved.
---@param string string
---@return boolean
function PROFILEMAN:SetStatsPrefix(string) end