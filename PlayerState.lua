---@meta

---@class PlayerState = {}
PlayerState = {}

--- Applies the player options of ModsLevel_Preferred to the other ModsLevels.
function PlayerState:ApplyPreferredOptionsToOtherLevels() end

--- Returns the current PlayerOptions for this PlayerState.
---@return PlayerOptions
function PlayerState:GetCurrentPlayerOptions() end

--- Returns the HealthState for this PlayerState.
---@return HealthState
function PlayerState:GetHealthState() end

--- Returns the multiplayer number for this PlayerState.
---@return MultiPlayer
function PlayerState:GetMultiPlayerNumber() end

--- Returns the PlayerController for this PlayerState.
---@return PlayerController
function PlayerState:GetPlayerController() end

--- Returns the Player number for this PlayerState.
---@return PlayerNumber
function PlayerState:GetPlayerNumber() end

--- Returns a PlayerOptions object for the specified ModsLevel.
---@param ml ModsLevel
---@return PlayerOptions
function PlayerState:GetPlayerOptions(ml) end

--- Returns a string of player options for the specified ModsLevel.
--- (Was GetPlayerOptions before sm-ssc v1.2.3)
---@param ml ModsLevel
---@return string
function PlayerState:GetPlayerOptionsString(ml) end

--- Returns a table of strings, containing the player options for the specified ModsLevel.
---@param ml ModsLevel
---@return string[]
function PlayerState:GetPlayerOptionsArray(ml) end

--- Returns the SongPosition for this PlayerState.
---@return SongPosition
function PlayerState:GetSongPosition() end

--- Returns the current Super Meter level for this PlayerState.
---@return number
function PlayerState:GetSuperMeterLevel() end

--- Sets the player options to `sPlayerOptions` for the specified ModsLevel.
--- @param ml ModsLevel
--- @param sPlayerOptions string
function PlayerState:SetPlayerOptions(ml, sPlayerOptions) end
