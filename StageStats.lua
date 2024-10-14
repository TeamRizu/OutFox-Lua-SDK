---@meta

---@class StageStats
StageStats = {}

--- Returns `true` if everyone failed.
---@return boolean
function StageStats:AllFailed() end

--- Returns `true` if any player has given up on the song.
---@return boolean
function StageStats:GaveUp() end

--- Returns the `EarnedExtraStage` value.
---@see EarnedExtraStage
---@return EarnedExtraStage
function StageStats:GetEarnedExtraStage() end

--- Returns the number of seconds played.
---@return number
function StageStats:GetGameplaySeconds() end

--- Returns the PlayerStageStats of multiplayer `mp`.
---@return MultiPlayer
---@return PlayerStageStats
function StageStats:GetMultiPlayerStageStats(mp) end

---@return SongObject[]
function StageStats:GetPlayedSongs() end

--- Returns the PlayerStageStats of player `pn`.
---@param pn PlayerNumber
---@return PlayerStageStats
function StageStats:GetPlayerStageStats(pn) end

---@return SongObject[]
function StageStats:GetPossibleSongs() end

--- Returns the `Stage` value.
---@see Stage
---@return Stage
function StageStats:GetStage() end

--- Returns the stage index.
---@return integer
function StageStats:GetStageIndex() end

---@return number
function StageStats:GetStepsSeconds() end

--- Returns `true` if at least one person passed.
---@return boolean
function StageStats:OnePassed() end

--- Returns `true` if player `pn` has a high score.
---@param pn PlayerNumber
---@return boolean
function StageStats:PlayerHasHighScore(pn) end