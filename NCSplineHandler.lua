---@meta

--- All functions in this class have camel case equivalents, use whichever naming style you prefer.
--- The spline handler holds info on how the spline is used by the engine.
--- Each get/set pair of functions in this class is for a different aspect of the spline's behavior.
---@class NCSplineHandler
NCSplineHandler = {}

--- Returns the beats per `t` value of the spline. If the beats per `t` is 4, then a note must be on
--- screen for 4 beats to traverse from one point on the spline to the next.
---@return number
function NCSplineHandler:get_beats_per_t() end

--- Returns the `t` value that receptors are evaluated at.
---@return number
function NCSplineHandler:get_receptor_t() end

--- Returns the spline for this handler.
---@return CubicSplineN
function NCSplineHandler:get_spline() end

--- Returns the mode the spline is set to.
--- <br>
--- "NoteColumnSplineMode_Disabled" means the spline will not affect the notes or receptors at all.
--- <br>
--- "NoteColumnSplineMode_Offset" means the spline will added to the effects from the mods.
--- <br>
--- "NoteColumnSplineMode_Position" means only the spline affect the notes and mods will be ignored.
--- (but only mods that affect the same aspect of the note as the spline will be disabled. So a
--- rotation spline won't disable Mini or Tiny, but a zoom spline will, and a zoom spline won't
--- disable Dizzy, Twirl, or Roll, but a rotation spline will.)
---@return NoteColumnSplineMode
function NCSplineHandler:get_spline_mode() end

--- Returns whether the current song beat is subtracted from a note's beat when calculating the `t`
--- value to use on the spline.
---@return boolean
function NCSplineHandler:get_subtract_song_beat() end

--- Sets the beats per `t` value for the spline.
function NCSplineHandler:set_beats_per_t(per) end

--- The `t` value that receptors are evaluated at.
function NCSplineHandler:set_receptor_t(t) end

--- Sets the current spline mode for this handler.
function NCSplineHandler:set_spline_mode(mode) end

--- Sets whether the current song beat is subtracted from a note's beat when calculating the `t`
--- value to use on the spline.
function NCSplineHandler:set_subtract_song_beat(s) end
