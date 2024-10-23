---@meta

--- You must call `create_bezier` to create a RageBezier2D to use any of these functions.
--- When you are done with the object, destroy it with its `destroy` function to avoid a
--- memory leak.
--- <br>
--- A RageBezier2D is two RageQuadratics, one for the x coordinate and one for the y.
--- <br>
--- This class is provided as a tool for designers working with bezier tweens who need a
--- tool that displays the tween curve visually.
--- <br>
--- If you use `Actor:tween(time, "TweenType_Bezier", {xa, ya, xb, yb, xc, yc, xd, yd})`
--- to tween an actor, the actor creates a RageBezier2D internally and calls
--- `evaluate_y_from_x` each frame to set where it is in the tween.
---@class RageBezier2D
RageBezier2D = {}

--- Destroys the RageBezier2D. Do not attempt to use it after it has been destroyed.
function RageBezier2D:destroy() end

--- Evaluates the bezier curve at the given t and returns the x and y values. This is
--- equivalent to using `get_x` and `get_y` to fetch the quadratic parts and calling
--- evaluate on them directly.
---@param t number
---@return number, number
function RageBezier2D:evaluate(t) end

--- Takes the x given and converts it to a t value, then evaluates the y quadratic
--- with the t value and returns the result.
---@param x number
---@return number
function RageBezier2D:evaluate_y_from_x(x) end

--- Returns the RageQuadratic used for the x component.
---@return RageQuadratic
function RageBezier2D:get_x() end

--- Returns the RageQuadratic used for the y component.
---@return RageQuadratic
function RageBezier2D:get_y() end

--- Sets the values used by the two quadratics. This is equivalent to using `get_x`
--- and `get_y` to get the quadratics and setting them directly. Note that the
--- components for the x quadratic and the y quadratic are interleaved.
---@param xa number
---@param ya number
---@param xb number
---@param yb number
---@param xc number
---@param yc number
---@param xd number
---@param yd number
function RageBezier2D:set_from_bezier(xa, ya, xb, yb, xc, yc, xd, yd) end
