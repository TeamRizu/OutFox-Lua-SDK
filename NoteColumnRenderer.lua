---@meta

--- All functions in this class have camel case equivalents, use whichever naming style you prefer.
--- <br>
--- Position, rotation, and zoom each have separate spline handlers to allow them to have separate
--- independent behavior.
--- <br>
--- It is important to note that the spline handlers are inside the tween state, so whenever you
--- start a new tween on the actor, you need to refetch the spline handlers.
---@class NoteColumnRenderer
NoteColumnRenderer = {}

--- Returns the handler for the position spline.
---@return NCSplineHandler
function NoteColumnRenderer:get_pos_handler() end

--- Returns the handler for the rotation spline.
--- The rotation applied by the rotation spline is in radians.
--- For convenience, the spatial extent of the rotation spline defaults to 2pi.
---@return NCSplineHandler
function NoteColumnRenderer:get_rot_handler() end

--- Returns the handler for the zoom spline.
---@return NCSplineHandler
function NoteColumnRenderer:get_zoom_handler() end
