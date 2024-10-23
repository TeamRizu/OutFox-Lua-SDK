---@meta

---@class SongOptions
SongOptions = {}

--- 
---@param b? boolean
---@return boolean
function SongOptions:AssistClap(b) end

--- 
---@param b? boolean
---@return boolean
function SongOptions:AssistMetronome(b) end

--- 
---@param ast? AutosyncType
---@return AutosyncType
function SongOptions:AutosyncSetting(ast) end

--- 
---@param mods string
function SongOptions:FromString(mods) end

--- A multiplier for the haste system. Limited to the range -1 to 1.
---@param h? number
---@param approach_speed? number
---@return number, number
function SongOptions:Haste(h, approach_speed) end

--- Limited to the range 0 < rate <= 3 because speeds greater than 3 are likely to crash.
---@param rate? number
---@param approach_speed? number
---@return number, number
function SongOptions:MusicRate(rate, approach_speed) end

--- 
---@param b? boolean
---@return boolean
function SongOptions:PitchRate(b) end

--- 
---@param b? boolean
---@return boolean
function SongOptions:RandomBGOnly(b) end

--- 
---@param b? boolean
---@return boolean
function SongOptions:SaveReplay(b) end

--- 
---@param b? boolean
---@return boolean
function SongOptions:SaveScore(b) end

--- 
---@param sfxt? SoundEffectType
---@return SoundEffectType
function SongOptions:SoundEffectSetting(sfxt) end

--- 
---@param b? boolean
---@return boolean
function SongOptions:StaticBackground(b) end
