---@meta

---@class AnnouncerManager
ANNOUNCER = {}

--- Returns true if Announcer `sAnnouncer` exists.
---@param sAnnouncer string
---@return boolean
function ANNOUNCER:DoesAnnouncerExist(sAnnouncer) end

--- Returns a table of installed announcers.
---@return string[]
function ANNOUNCER:GetAnnouncerNames() end

--- Returns the current announcer's name.
---@return string
function ANNOUNCER:GetCurrentAnnouncer() end

--- Sets the announcer to `sNewAnnouncer`.
---@param sNewAnnouncer string
function ANNOUNCER:SetCurrentAnnouncer(sNewAnnouncer) end