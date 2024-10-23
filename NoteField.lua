---@meta
---@diagnostic disable: redundant-parameter

---@class NoteField : Actor
---@overload fun(self: NoteField) : self
---@field [string] fun(self: NoteField)
NoteField = {}

--- Tells the notefield to hide the given regions of notes. This only visibly hides
--- notes, and they still have to be hit.
--- <br>
--- This adds onto a list of regions to hide. Use `NoteField.clear_hidden_regions()`
--- to clear the list.
--- <br>
--- The parameter format is `{{start_beat, end_beat, col},...}`. col is an optional
--- parameter. When omitted, the section is hidden for all columns.
---@param regions table
---@return self
function NoteField:add_hidden_regions(regions) end

--- Tells the notefield to manipulate the visible note colors according to the given
--- table. The parameter format is `{{start_beat, mult},...}`.
--- <br>
--- A mult of 2 will show the segment as if the BPM was doubled, while 0.5 will show
--- the segment as if the BPM was halved. 0 will freeze the notecolors to what it
--- ends up being at that beat after previous segments have occured.
--- <br>
--- This adds onto a list of notetypemult segments. Use
--- `NoteField.clear_note_type_mults()` to clear the list.
--- <br>
--- The first call to add_note_type_mults requires an entry where `start_beat` is 0.
---@param notetypemults table
---@return self
function NoteField:add_note_type_mults(notetypemults) end

--- Adds a per-note modifier to the notefield's chart. If intensity is not given,
--- 100% is assumed. Does not have a snake case function alias.
---@param beat number
---@param column integer
---@param modname string
---@param intensity number
---@return self
function NoteField:AddNoteMod(beat, column, modname, intensity) end

--- Enables or disables the PlayerOptions approach system, allowing for a NoteField's
--- `ModsLevel_Song` PlayerOptions to affect the current modifiers. Has a performance
--- impact when enabled. Does nothing on a Player's NoteField. Does not have a snake
--- case function alias.
---@param bApproachMods boolean
---@return self
function NoteField:ApproachMods(bApproachMods) end

--- Sets the NoteField to be on AutoPlay based on `bAutoPlay`. Does nothing on a Player's
--- NoteField. Does not have a snake case function alias.
---@param bAutoPaly boolean
---@return self
function NoteField:AutoPlay(bAutoPaly) end

--- Regenerates the notefield to play the new chart from `chartData`. If `Noteskin` is
--- provided, it will regenerate with the new noteskin assigned.
---@param chartData Steps
---@param Noteskin string
---@return self
function NoteField:ChangeReload(chartData, Noteskin) end

--- Clears the hidden regions list for the given column. Omitting the column parameter
--- clears the hidden regions list for all columns.
---@param column? integer
---@return self
function NoteField:clear_hidden_regions(column) end

--- Clears the notetypemult list for the notefield.
---@return self
function NoteField:clear_note_type_mults() end

--- Makes the NoteField act as if a hold note was hit in the column, with the given score
--- and bright setting. The callback for `did_hold_note` will not be called.
---@param column integer
---@param tns TapNoteScore
---@param bright boolean
---@return self
function NoteField:did_hold_note(column, tns, bright) end

--- Makes the NoteField act as if a tap note was hit in the column, with the given score
--- and bright setting. The callback for `did_tap_note` will not be called.
---@param column integer
---@param tns TapNoteScore
---@param bright boolean
---@return self
function NoteField:did_tap_note(column, tns, bright) end

--- Returns a table of the actors for the columns. This means that each column is an actor,
--- so you can move it around or animate it like an actor. See the NoteColumnRenderer class
--- for a list of special functions for the column's actor.
---@return NoteColumnRenderer[]
function NoteField:get_column_actors() end

--- Alias for `NoteField.get_column_actors()`.
---@return NoteColumnRenderer[]
function NoteField:GetColumnActors() end

--- Returns the PlayerOptions for the given `ModsLevel`. When used on a Def.NoteField, only
--- 'ModsLevel_Current' will have any visible effect. Does not have a snake case function
--- alias.
---@param ml ModsLevel
---@return PlayerOptions
function NoteField:GetPlayerOptions(ml) end

--- Returns the PlayerState used by the NoteField. Useful when working with Def.NoteField
--- and the `ArrowEffects` namespace. Does not have a snake case function alias.
---@param ml ModsLevel
---@return PlayerOptions
function NoteField:GetPlayerState(ml) end

--- Sets the mods on the NoteField. A shortcut for grabbing the Current PlayerOptions and
--- using `PlayerOptions.FromString()`. Does not have a snake case function alias.
---@param sMods string
---@return self
function NoteField:ModsFromString(sMods) end

--- Enables the beat bars to show up on a player. The bars are a series of lines that
--- indicate the Measure, quarter, half and whole beat.
--- <br>
--- It's default value is taken from the ShowBeatBars metric in [NoteField].
---@param m_EnableBeatBars boolean
---@return self
function NoteField:set_beat_bars(m_EnableBeatBars) end

--- Enables stop lines on the player's BPM change bars. These lines are generated when there's
--- upcoming changes in BPM to the player in yellow. Requires `NoteField.set_beat_bars()` to
--- be enabled in order to be seen.
---@param m_EnableBPMBars boolean
---@return self
function NoteField:set_bpm_bars(m_EnableBPMBars) end

--- Sets the function that the NoteField will call whenever a tap note is hit. The callback
--- function is passed the column, the TapNoteScore, and whether the explosion will be bright.
--- <br>
--- The callback function can return changed values for the NoteField to use instead of the
--- ones that were passed. Pass nil instead of a function to clear the callback.
---@param callback function
---@return self
function NoteField:set_did_tap_note_callback(callback) end

--- Sets the function that the NoteField will call whenever a hold note is hit. The callback
--- function is passed the column, the HoldNoteScore, and whether the explosion will be bright.
--- <br>
--- The callback function can return changed values for the NoteField to use instead of the
--- ones that were passed. Pass nil instead of a function to clear the callback.
---@param callback function
---@return self
function NoteField:set_did_hold_note_callback(callback) end

--- When set to true, hold rendering becomes mainly based off of beats. Speed mods and Reverse
--- will result in holds stretching or squishing. Boomerang stops hiding holds on the down pass.
--- <br>
--- This also has a similar effect to `NoteField.set_holds_use_nonstandard_y_pos()`.
---@param usebeats boolean
---@return self
function NoteField:set_hold_length_uses_beats(usebeats) end

--- When set to true, holds in a NoteField orient themselves to match their direction of travel.
--- May result in frame drops due to angle calculation.
---@param orientholds boolean
---@return self
function NoteField:set_holds_orient_to_travel_dir(orientholds) end

--- When set to true, holds in a NoteField are able to properly follow nonstandard y position
--- paths. This affects y position modifiers like BeatY and SpiralY.
---@param usenonstandard boolean
---@return self
function NoteField:set_holds_use_nonstandard_y_pos(usenonstandard) end

--- Makes the NoteField act as if a press occurred in the column. The callback for set_pressed
--- will not be called.
---@param column integer
---@return self
function NoteField:set_pressed(column) end

--- Sets the function that the NoteField will call whenever a press occurs. The callback function
--- is passed the column for the press. The callback function can return changed values for the
--- NoteField to use instead of the ones that were passed. Pass nil instead of a function to clear
--- the callback.
---@param callback fun(column: integer)
---@return self
function NoteField:set_set_pressed_callback(callback) end

--- Sets the function that the NoteField will call whenever a step occurs. The callback function
--- is passed the column and the TapNoteScore for the step. The callback function can return changed
--- values for the NoteField to use instead of the ones that were passed. Pass nil instead of a
--- function to clear the callback.
---@param callback fun(column: integer, tns: TapNoteScore)
---@return self
function NoteField:set_step_callback(callback) end

--- Enables stop lines on the player's beat bars. These lines are generated when there are upcoming
--- stops for the player in red. Requires NoteField.set_beat_bars() to be enabled in order to be seen.
---@param m_EnableStopBars boolean
---@return self
function NoteField:set_stop_bars(m_EnableStopBars) end

--- Sets the notes on a NoteField similarly to `Player.SetNoteDataFromLua()`. Does nothing on a Player's
--- NoteField. Does not have a snake case function alias. If you plan to use SetCurrentBeat or
--- SetCurrentMusicSeconds alongside this, call this function after using any of those two functions.
---@param NoteData table
---@return self
function NoteField:SetNoteDataFromLua(NoteData) end

--- Makes the NoteField act as if a step occurred in the column with the given score. The callback for
--- Step will not be called.
---@param column integer
---@param tns TapNoteScore
---@return self
function NoteField:step(column, tns) end

--- Enables or disables the fade applied on notes when a note is near the vertical bottom of the NoteField.
--- Useful when dealing with ModSplines or other Y position modifiers. Does not have a snake case function
--- alias.
---@param bUseFade boolean
---@return self
function NoteField:UseNoteFieldFade(bUseFade) end
