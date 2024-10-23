---@meta
--- This file declares the GAMESTATE object, which is one of the main classes in the game.
require 'SongObject'

---@class GAMESTATE GAMESTATE
GAMESTATE = {}

---Adds another stage to the specified player.
---@param pn PlayerNumber
function GAMESTATE:AddStageToPlayer(pn) end
---Applies the specified modifiers for the specified player's preferred modifier set.
---@param pn PlayerNumber
---@param mods string
function GAMESTATE:ApplyPreferredModifiers(pn,mods) end
---Applies the song options of ModsLevel_Preferred to the other ModsLevels.
function GAMESTATE:ApplyPreferredSongOptionsToOtherLevels() end
---Applies the specified modifiers for the specified player for the current stage.
---@param pn PlayerNumber
---@param mods string
function GAMESTATE:ApplyStageModifiers(pn,mods) end
---Returns true if any player has performed a feat worthy of ranking.
---@return boolean
function GAMESTATE:AnyPlayerHasRankingFeats() end
---Apply the GameCommand represented by sCommand for pn, if given.
---@param sCommand string
---@param pn? PlayerNumber
function GAMESTATE:ApplyGameCommand(sCommand,pn) end
---Checks various things to determine whether the game will crash when gameplay starts.
---Returns false and a string if gameplay cannot be entered safely.
---Might not work on all cases, but will catch things like a player not having steps or noh
---current style. Mainly exists for people with a custom ScreenSelectMusic replacement.
---@return boolean
---@return string
function GAMESTATE:CanSafelyEnterGameplay() end
---Removes any stage modifiers that are illegal for course play.
function GAMESTATE:ClearStageModifiersIllegalForCourse() end
---Returns true if the player's options will disqualify them for ranking.
---@param pn PlayerNumber
---@return boolean
function GAMESTATE:CurrentOptionsDisqualifyPlayer(pn) end
---Deletes keysounds loaded from the current song.
function GAMESTATE:DeleteKeysounds() end
---Returns true if enough credits have been inserted to join.
---@return boolean
function GAMESTATE:EnoughCreditsToJoin() end
--- fishpolk.mid
---@return boolean
function GAMESTATE:DopeFish() end
---Returns the enviroment table.
---@return table
function GAMESTATE:Env() end
---@param i number
function GAMESTATE:GetAutoGenFarg(i) end
---Returns the current Character for the specified player.
---@param pn PlayerNumber
---@return Character
function GAMESTATE:GetCharacter(pn) end
---Returns the current CoinMode.
---@return CoinMode
function GAMESTATE:GetCoinMode() end
---Return the number of inserted but unused coins. This number is decremented
---when players join.
---@return integer
function GAMESTATE:GetCoins() end
---Return the number of coins needed to join based on the current coin
---and premium modes as well as the number of people joined, if that
---matters for the premium mode.
function GAMESTATE:GetCoinsNeededToJoin() end
---The Songs in a Course are numbered sequentially starting from 0.
---Return the number of the current Song.
---@return integer
function GAMESTATE:GetCourseSongIndex() end
---Return the current number of seconds that have passed in the current song.
function GAMESTATE:GetCurMusicSeconds() end
---Return the current Course.
---@return Course
function GAMESTATE:GetCurrentCourse() end
---Return the current Game.
---@return Game
function GAMESTATE:GetCurrentGame() end

---@return SongObject|nil
function GAMESTATE:GetCurrentSong() end
---Return the current Stage.
---@return Stage
function GAMESTATE:GetCurrentStage() end

---Returns the current stage index (starts at 0).
---@return integer
function GAMESTATE:GetCurrentStageIndex() end

---Return the current steps for the specified Player.
---@param pn PlayerNumber
---@return Steps
function GAMESTATE:GetCurrentSteps(pn) end

--- Return a variable number of arguments based on the Steps being played by all players.
---
--- For each distinct Steps played by the players, in increasing PlayerNumber order,
--- the difficulty and description of the Steps is returned as strings.
--- 
--- For example:
--- local credits = {GAMESTATE:GetCurrentStepsCredits()}
--- Will make a table of the difficulties and descriptions.
function GAMESTATE:GetCurrentStepsCredits() end

--- Return the current Style.
---@param pn? PlayerNumber
---@return Style|nil
function GAMESTATE:GetCurrentStyle(pn) end

--- Return the current Trail for the specified player.
---@param pn PlayerNumber
function GAMESTATE:GetCurrentTrail(pn) end

--- Return a string representation of the default song options.
---@return string
function GAMESTATE:GetDefaultSongOptions() end

--- Returns the EarnedExtraStage value.
---@return EarnedExtraStage
function GAMESTATE:GetEarnedExtraStage() end

--- Returns the easiest difficulty of the currently selected steps by all players.
--- For example, if player 1 has selected Hard steps and player 2 has selected Medium
--- steps, Medium will be returned.
--- 
--- res is an optional parameter that reports a script error if a player hasn't chosen
--- steps.
---@param res boolean
---@return Difficulty
function GAMESTATE:GetEasiestStepsDifficulty(res) end

---@return integer
function GAMESTATE:GetEditCourseEntryIndex() end

--- Return the Edit local profile (during profile editing)
---@return Profile
function GAMESTATE:GetEditLocalProfile() end

--- Returns the ID of the Edit Local Profile (during profile editing)
---@return string
function GAMESTATE:GetEditLocalProfileID() end

--- Sets the ID of the Edit Local profile to be used for editing.
---@return string
function GAMESTATE:SetEditLocalProfileID(sID) end

--- Return the source Steps for the editor or nil if it does not exist.
---@return (Steps|nil)
function GAMESTATE:GetEditSourceSteps() end

--- Returns a table of enabled players.
---@return PlayerNumber[]
function GAMESTATE:GetEnabledPlayers() end

--- Returns the name of the currently expanded section.
---@return string
function GAMESTATE:GetExpandedSectionName() end

--- Return the random seed for the game.
---@return integer
function GAMESTATE:GetGameSeed() end

--- Returns true is the gameplay leda in is enabled.
--- False, gameplay begins immediately.
---@return boolean
function GAMESTATE:GetGameplayLeadIn() end

--- Returns the hardest difficulty of the currently selected steps by all players.
--- For example, if player 1 has selected Hard steps and player 2 has selected Medium
--- steps, Hard will be returned.
--- 
--- res is an optional parameter that reports a script error if a player hasn't chosen
--- steps.
---@param res boolean
---@return Difficulty
function GAMESTATE:GetHardestStepsDifficulty(res) end

--- Returns an array of PlayerNumber's corresponding to Human players.
---@return PlayerNumber[]
function GAMESTATE:GetHumanPlayers() end

--- Returns true if the player's notefield is centered.
---@param pn PlayerNumber
---@return boolean
function GAMESTATE:GetIsFieldCentered(pn) end

--- Returns true if the player's notefield is reversed.
---@param pn PlayerNumber
---@return boolean
function GAMESTATE:GetIsFieldReversed(pn) end

---@return number
function GAMESTATE:GetLastGameplayDuration() end

--- Returns the index of th enext song in the course.
---@return integer
function GAMESTATE:GetLoadingCourseSongIndex() end

--- Returns the master player number.
---@return PlayerNumber
function GAMESTATE:GetMasterPlayerNumber() end

--- Returns true if the game is multiplayer.
---@return boolean
function GAMESTATE:GetMultiplayer() end

--- Returns the PlayerState for the specified MultiPlayer.
---@param mp MultiPlayer
function GAMESTATE:GetMultiPlayerState(mp) end

--- Returns the number of active multiplayer NoteFields.
---@return integer
function GAMESTATE:GetNumMultiplayerNoteFields() end

--- Returns the number of players enabled.
---@return integer
function GAMESTATE:GetNumPlayersEnabled() end

--- Returns the number of sides joined.
---@return integer
function GAMESTATE:GetNumSidesJoined() end

--- Returns the number of stages for the current Song and its Steps or
--- the current course.
---@return integer
function GAMESTATE:GetNumStagesForCurrentSongAndStepsOrCourse() end

--- Returns the number of stages left for the player.
---@param pn PlayerNumber
---@return integer
function GAMESTATE:GetNumStagesLeft(pn) end

--- Returns the display name for the player.
---@param pn PlayerNumber
---@return string
function GAMESTATE:GetPlayerDisplayName(pn) end

--- Returns the player for the player.
---@param pn PlayerNumber
---@return PlayerState
function GAMESTATE:GetPlayerState(pn) end

--- Returns the current PlayMode.
---@return PlayMode
function GAMESTATE:GetPlayMode() end

--- Returns the preferred difficulty for the player.
---@param pn PlayerNumber
---@return Difficulty
function GAMESTATE:GetPreferredDifficulty(pn) end

--- Returns the preferred song.
---@return SongObject
function GAMESTATE:GetPreferredSong() end

--- Retruns the preferred song group.
---@return string
function GAMESTATE:GetPreferredSongGroup() end

--- Returns the current Premium.
---@return Premium
function GAMESTATE:GetPremium() end

--- Returns the smallest number of stages left for any human player.
---@return integer
function GAMESTATE:GetSmallestNumStagesLeftForAnyHumanPlayer() end

--- [01 alias.lua] Returns the current beat of the song.
---@return number
function GAMESTATE:GetSongBeat() end

--- [01 alias.lua] Returns the current beat of the song without an offset.
---@return number
function GAMESTATE:GetSongBeatNoOffset() end

--- [01 alias.lua] Returns the song's current beats per second.
---@return number
function GAMESTATE:GetSongBPS() end

--- [01 alias.lua] Returns `true` if a delay is active in the song.
---@return boolean
function GAMESTATE:GetSongDelay() end

--- [01 alias.lua] Returns `true` if the song is currently in a freeze.
---@return boolean
function GAMESTATE:GetSongFreeze() end

--- Returns the song options for the specified ModsLevel as a string.
---@param ml ModsLevel
---@return string
function GAMESTATE:GetSongOptions(ml) end

--- Returns the song options as a string.
---@return string
function GAMESTATE:GetSongOptionsString() end

--- Returns the ongs options for the specified ModsLevel as an object.
---@param ml ModsLevel
---@return SongOptions
function GAMESTATE:GetSongOptionsObject(ml) end

--- Returns how much of the song is through at beat `fBeat`.
---@param fBeat number
---@return number
function GAMESTATE:GetSongPercent(fBeat) end

--- Returns the current SongPosition.
---@return SongPosition
function GAMESTATE:GetSongPosition() end

--- Returns the current SortOrder.
---@return SortOrder
function GAMESTATE:GetSortOrder() end

--- Returns the StageResult for the player
---@param pn PlayerNumber
---@return StageResult
function GAMESTATE:GetStageResult(pn) end

--- Return the random seed for the current stage.
---@return integer
function GAMESTATE:GetStageSeed() end

--- Returns the field size for the player.
---@param pn PlayerNumber
---@return number
function GAMESTATE:GetStyleFieldSize(pn) end

--- Returns `true` if the workout goal is complete.
---@return boolean
function GAMESTATE:GetWorkoutGoalComplete() end

--- Returns `true` if an extra stage was earned.
---@return boolean
function GAMESTATE:HasEarnedExtraStage() end

--- Returns `true` if either player does not have a profile loaded,
--- and there is a loadable profile.
---@return boolean
function GAMESTATE:HaveProfileToLoad() end

--- Returns `true` if either player has a profile loaded that needs saving.
---@return boolean
function GAMESTATE:HaveProfileToSave() end

--- Returns `true` if we are specifically in the Step Editor's editing portion.
--- If in recording or playing mode, this will return `false`.
function GAMESTATE:InStepEditor() end

--- Inserts `iCoins` number of coins. `iCoins` can be negative or positive.
---@param iCoins integer
function GAMESTATE:InsertCoin(iCoins) end

--- Inserts one credit.
---@see GAMESTATE.InsertCoin # to remove a credit by inserting a negative amount of coins per credit.
function GAMESTATE:InsertCredit() end

--- Returns `true` if this is an extra stage.
---@return boolean
function GAMESTATE:IsAnExtraStage() end

--- Returns true if any human player is using a memory card.
---@return boolean
function GAMESTATE:IsAnyHumanPlayerUsingMemoryCard() end

--- Returns `true` if playing in Battle mode.
---@return boolean
function GAMESTATE:IsBattleMode() end

--- Returns `true` if playing in Course mode.
---@return boolean
function GAMESTATE:IsCourseMode() end

--- Returns `true` if in Demonstration or Jukebox mode.
---@return boolean
function GAMESTATE:IsDemonstration() end

--- Returns `true` if the match was a draw.
---@return boolean
function GAMESTATE:IsDraw() end

--- Returns `true` if Event Mode is on, temporary or otherwise.
---@see GAMESTATE.SetTemporaryEventMode # to set a temporary event mode state.
---@return boolean
function GAMESTATE:IsEventMode() end

--- Retruns `true` if this is the first extra stage.
---@return boolean
function GAMESTATE:IsExtraStage() end

--- Returns `true` if this is the second extra stage.
---@return boolean
function GAMESTATE:IsExtraStage2() end

--- Returns `true` if the player has completed the current Goal.
---@param pn PlayerNumber
---@return boolean
function GAMESTATE:IsGoalComplete(pn) end

--- Returns the percentage for the player's current goal.<br>
--- - If no goal has been set, it will always return 0.
--- - If `UseAccumulated` is enabled, it will return the goal percentage
--- across all played stages throughout the session.<br>
--- This is useful for obtaining the percentage on regular play modes.
--- It is suggested to disable this when using a Goal on courses.
---@param pn PlayerNumber
---@param UseAccumulated boolean
---@return number
function GAMESTATE:GetGoalPercentComplete(pn, UseAccumulated) end

--- Returns `true` if the player is human.
---@param pn PlayerNumber
---@return boolean
function GAMESTATE:IsHumanPlayer(pn) end

--- Returns true if the player is enabled.
---@param pn PlayerNumber
---@return boolean
function GAMESTATE:IsPlayerEnabled(pn) end

--- Returns `true` if the player has joined the game.
---@param pn PlayerNumber
---@return boolean
function GAMESTATE:IsSideJoined(pn) end

--- Returns `true` if the player is the winner.
---@param pn PlayerNumber
---@return boolean
function GAMESTATE:IsWinner(pn) end

--- Joines player `pn`. Does not deduct coins.
---@param pn PlayerNumber
function GAMESTATE:JoinPlayer(pn) end

--- Similar to JoinPlayer, but checks whether the player is allowed to join and returns false if the player is not allowed to join.
--- Also deducts coins for joining.  A player can't join if PlayersCanJoin() returns false, or that side is already joined
--- (is true for both sides when in a style that is OnePlayerTwoSides), or there are not enough coins. 
---@param pn PlayerNumber
function GAMESTATE:JoinInput(pn) end

--- If profiles are not loaded, this will load the profiles for each player. It will load from memory cards if they are present,
--- and local profiles otherwise. <br>
--- It will load edits if `LoadEdits` is true, or by default if the argument is omitted.
---@param LoadEdits? boolean
function GAMESTATE:LoadProfiles(LoadEdits) end

--- Returns `true` if the player is using the modifier `sModifier`.
---@param pn PlayerNumber
---@param sModifier string
---@return boolean
function GAMESTATE:PlayerIsUsingModifier(pn, sModifier) end

--- Returns `true` if players can join the game.
---@return boolean
function GAMESTATE:PlayersCanJoin() end

function GAMESTATE:prepare_song_for_gameplay() end

--- Refreshes the NoteSkin data for the current game.
function GAMESTATE:RefreshNoteSkinData() end

--- Resets the GameState.
function GAMESTATE:Reset() end

--- Resets the specific Player's mods to the default settings.
---@param pn PlayerNumber
function GAMESTATE:ResetPlayerOptions(pn) end

--- Saves the bookkeeping and machine profile data.
function GAMESTATE:SaveLocalData() end

--- Saves the profiles.
function GAMESTATE:SaveProfiles() end

---@param i integer
---@param value number
function GAMESTATE:SetAutoGenFarg(i, value) end

--- Sets the current Character for the specified player.
---@param pn PlayerNumber
---@param sCharID string
---@see Character # to find the desired character's ID.
function GAMESTATE:SetCharacter(pn, sCharID) end

--- Sets the current Course to `course`.
---@param course Course
function GAMESTATE:SetCurrentCourse(course) end

--- Sets the current PlayMode to `mode`.
---@param mode PlayMode|string
function GAMESTATE:SetCurrentPlayMode(mode) end

--- Sets the current song to `song`.
---@param song SongObject|nil
function GAMESTATE:SetCurrentSong(song) end

--- Sets player `pn`'s current Steps to `steps`.
---@param pn PlayerNumber
---@param steps Steps|nil
function GAMESTATE:SetCurrentSteps(pn, steps) end

--- Sets current Style to the provided `style`.
---
--- Either a style object or a style string can be provided.
---
--- If current steps for either player are not valid in the new style,
--- they will be cleared.
---@param style Style|string
function GAMESTATE:SetCurrentStyle(style) end

--- Sets the current Trail for player `pn` to `trail`.
---@param pn PlayerNumber
---@param trail Trail
function GAMESTATE:SetCurrentTrail(pn, trail) end

--- Tells the engine that the theme explicitly set the fail type for the
--- players so that it won't override it with the easier settings for
--- beginner or easy.
function GAMESTATE:SetFailTypeExplicitelySet() end

--- Sets if the Jukebox should use modifiers.
---@param bUseMods boolean
function GAMESTATE:SetJukeboxUsesModifiers(bUseMods) end

---@param b boolean
function GAMESTATE:SetMultiplayer(b) end

--- Sets the number of multiplayer notefields to `iFields`.
---@param iFields integer
function GAMESTATE:SetNumMultiplayerNoteFields(iFields) end

--- Sets the preferred difficulty of Player `pn` to Difficulty `dc`.
---@param pn PlayerNumber
---@param dc Difficulty
function GAMESTATE:SetPreferredDifficulty(pn, dc) end

--- Sets the preferred Song to `song`.
---@param song SongObject
function GAMESTATE:SetPreferredSong(song) end

--- Sets the preferred song group to `sGroup`.
---@param sGroup string
function GAMESTATE:SetPreferredSongGroup(sGroup) end

--- Sets the Song Options from `so` using ModsLevel `m`.
---@param m ModsLevel
---@param so string
function GAMESTATE:SetSongOptions(m, so) end

---@param iStageSeed integer
function GAMESTATE:SetStageSeed(iStageSeed) end

--- Set the steps Edit Mode uses. There are three forms:
---
--- * `song` and `steps` are provided: Edits existing steps.
--- * `song`, `stepstype` and `difficulty` are provided: New steps are created to edit.
--- * All params are provided: Steps are copied to another difficulty to edit.
function GAMESTATE:SetStepsForEditMode(song, steps, stepstype, difficulty) end

--- Turns temporary Event Mode on or off, depending on `bOn`.
---@param bOn boolean
function GAMESTATE:SetTemporaryEventMode(bOn) end

--- Stores the ranking name for the player. Use this at the end of a round,
--- on a name entry screen or similar, to set the name for the high scores
--- the player has earned.
---@params pn PlayerNumber
---@params name string
function GAMESTATE:StoreRankingName(pn, name) end

-- Determins if Judgment W1 should be shown basd on the `AllowW1` preference.
---@return boolean
function GAMESTATE:ShowW1() end

---@param sGameMode string
function GAMESTATE:UpdateDiscordGameMode(sGameMode) end
---@param sProfile string
function GAMESTATE:UpdateDiscordProfile(sProfile) end
---@param sScreen string
---@param sStates string
---@param sStartTime string
function GAMESTATE:UpdateDiscordScreenInfo(sScreen, sStates, sStartTime) end

---@param sScreen string
---@param sStates string
---@param sStartTime string
function GAMESTATE:UpdateDiscordSongPlaying(sScreen, sStates, sStartTime) end

--- Unjoins player `pn`.
---@param pn PlayerNumber
function GAMESTATE:UnjoinPlayer(pn) end

--- Requests a profile change for player `pn` with the profile with the ID of `profileID`.
--- The profile ID can be obtained using the `PROFILEMAN:GetLocalProfileIDFromIndex` function,
--- based on the desired profile index.
--- 
--- Upon a successful request, a message called `ProfileChanged` is sent, with a parameter called `Player`,
--- which is the `PlayerNumber` that was updated.
---@param pn PlayerNumber
---@param profileID string
function GAMESTATE:ChangeProfileForPlayer(pn, profileID) end

--- Unloads player `pn`'s profile, and resets its contents to default values, resulting in a guest profile. 
---
--- Upon a successful request, a message called `ProfileChanged` is sent, with a parameter called `Player`,
--- which is the `PlayerNumber` that was updated.
---@param pn PlayerNumber
function GAMESTATE:MakePlayerGuest(pn) end

--- Returns the currently active dancing stage.
---@return CharacterStage
function GAMESTATE:GetStage() end

--- Sets the currently active dancing stage.
---@param sStageID string # The ID of the dancing stage to use.
function GAMESTATE:SetStage(sStageID) end
