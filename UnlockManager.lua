---@meta

---@class UnlockManager
UNLOCKMAN = {}

--- Returns `true` if there are any unlocks to celebrate.
---@return boolean
function UNLOCKMAN:AnyUnlocksToCelebrate() end

--- Returns the associated EntryID.
---@param sName string
---@return string
function UNLOCKMAN:FindEntryID(sName) end

--- Returns the number of unlocked items.
---@return integer
function UNLOCKMAN:GetNumUnlocked() end

--- Returns the number of all unlock items, regardless of status.
---@return integer
function UNLOCKMAN:GetNumUnlocks() end

--- Returns the number of points for the machine profile based on
--- the specified UnlockRequirement.
---@param ur UnlockRequirement
---@return number
function UNLOCKMAN:GetPoints(ur) end

--- Returns the number of points for the specified profile based on
--- the specified UnlockRequirement.
---@param p Profile
---@param ur UnlockRequirement
---@return number
function UNLOCKMAN:GetPointsForProfile(p, ur) end

--- Returns the number of points until the next unlock.
---@param ur UnlockRequirement
---@return number
function UNLOCKMAN:GetPointsUntilNextUnlock(ur) end

--- Returns a table of songs unlocked by UnlockEntry `sEntryID`.
---@param sEntryID string
---@return SongObject[]
function UNLOCKMAN:GetSongsUnlockedByEntryID(sEntryID) end

--- Returns a table of steps unlocked by UnlockEntry `sEntryID`.
---@param sEntryID string
---@return Steps[]
function UNLOCKMAN:GetStepsUnlockedByEntryID(sEntryID) end

--- Returns the UnlockEntry at `iIndex`.
---@param iIndex integer
---@return UnlockEntry
function UNLOCKMAN:GetUnlockEntry(iIndex) end

--- Returns the UnlockEntry index to celebrate.
---@return integer
function UNLOCKMAN:GetUnlockEntryIndexToCelebrate() end

--- Determines if a song is locked by any means. The number returned
--- determines how the song is locked.
---@param pSong SongObject
---@return boolean
function UNLOCKMAN:IsSongLocked(pSong) end

--- 
---@param entryID string
function UNLOCKMAN:LockEntryID(entryID) end

--- 
---@param entryIndex integer
function UNLOCKMAN:LockEntryIndex(entryIndex) end

--- Sets the preferred Song/Course to the specified `sUnlockEntryID`.
---@param sUnlockEntryID string
function UNLOCKMAN:PreferUnlockEntryID(sUnlockEntryID) end

--- Unlocks an entry by ID.
---@param sUnlockEntryID string
function UNLOCKMAN:UnlockEntryID(sUnlockEntryID) end

--- Unlocks an entry by index.
---@param iUnlockEntryIndex integer
function UNLOCKMAN:UnlockEntryIndex(iUnlockEntryIndex) end
