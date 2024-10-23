---@meta

---Sound Manager.
---@class GameSoundManager
SOUND = {}

---Set the music volume to `fVolume` for `fDuration` seconds.
---@param fVolume number Volume to dim
---@param fDuration number How long to dim the audio.
function SOUND:DimMusic(fVolume, fDuration) end

---Gets the currently playing audio's path on GameSoundManager.
---Returns empty if nothing is playing.
---@returns string
function SOUND:GetMusicPath() end

---Return the sound balance for <code>pn</code>.
---@param pn PlayerNumber
---@returns number
function SOUND:GetPlayerBalance(pn) end

---Gets the current volume.
---@returns number
function SOUND:GetVolume() end

---Plays a sound from the current announcer.
function SOUND:PlayAnnouncer(sPath) end

---Play the sound at musicPath starting from musicStart for
---musicLength seconds one time. Both fadeIn and fadeOut can be customized as required.
---loop tells the sound manager to loop the music part.
---applyRate tells the sound manager to apply the current music rate.
---If alignBeat is true or nil, the length is automatically adjusted to cover an integer number of beats.
---if timing is provided, it will sync up the SoundManager's beat to the song's current timing.
---@param musicPath string
---@param musicLength number
---@param fadeIn number
---@param fadeOut number
---@param loop boolean
---@param applyRate boolean
---@param timing TimingData
function SOUND:PlayMusicPart(musicPath, musicLength, fadeIn, fadeOut, loop, applyRate, alignBeat, timing) end

---Play the sound at `sPath` one time. `is_action` is optional, if it is true, the sound is an action sound, and will be muted if the MuteActions preference is turned on.
---@param sPath string
---@param isAction boolean
function SOUND:PlayOnce(sPath, isAction) end

---Stops the music.
function SOUND:StopMusic() end

---When music is requested to change, the new music does not start immediately due to latency and buffering. This will return true if the newest music has not yet actually begun.
---@returns boolean
function SOUND:IsTimingDelayed() end

---Sets the music to the specified volume and optionally fades to that point if desired.
---@param fVolume number
---@param fFadeDuration number
function SOUND:Volume(fVolume, fFadeDuration) end
