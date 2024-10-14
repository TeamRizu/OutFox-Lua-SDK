---@meta

--- This Actor represents a playable sound. There are four attributes that can be set on load.
--- * `SupportPan` - Let the sound pan from side to side.
--- * `SupportRateChanging` - Let the sound change rate and pitch.
--- * `IsAction` - If true, the sound is an action sound, and will be muted if the MuteActions preference is turned on.
--- * `Precache` - If false, the sound won't be cached.
---@class ActorSound : Actor
---@field File? string # Defines the sound to load
---@field SupportPan? boolean # Let the sound pan from side to side.
---@field SupportRateChanging? boolean # Let the sound change rate and pitch.
---@field IsAction? boolean # If true, the sound is an action sound, and will be muted if the MuteActions preference is turned on.
---@field Precache? boolean # If false, the sound won't be cached.
---@field [string] fun(self: ActorSound)
---@overload fun(self: ActorSound) : ActorSound
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: ActorSound)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: ActorSound)
---@field BeginCommand? fun(self: ActorSound)
---@operator call:ActorSound
---@diagnostic disable: redundant-parameter
ActorSound = {}

--- Returns the RageSound that can be played by this Actor.
---@return RageSound
function ActorSound:get() end

--- Returns whether the sound is an action.
---@return boolean
function ActorSound:get_is_action() end

--- Loads the sound at `sPath`.
---@param sPath string
---@return self
function ActorSound:load(sPath) end

--- Pauses or unpauses the sound based on `bPause`.
---@param bPause boolean
---@return self
function ActorSound:pause(bPause) end

--- Plays the sound.
---@return self
function ActorSound:play() end

--- [02 Sound.lua] Plays the sound on the given player's side. You must set `SupportPan = true` on load.
---@param pn PlayerNumber
---@return self
function ActorSound:playforplayer(pn) end

--- Sets whether the sound is an action.
---@param is_action boolean
---@return self
function ActorSound:set_is_action(is_action) end

--- Stops the sound.
---@return self
function ActorSound:stop() end
