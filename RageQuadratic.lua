---@meta

--- If you use `Actor:tween(time, "TweenType_Bezier", {a, b, c, d})` to tween an actor,
--- the actor used to create a RageQuadratic internally and called evaluate each frame
--- to set where it is in the tween.
---@class RageQuadratic
RageQuadratic = {}

--- Evaluates the quadratic at the given `t` value and returns the result.
---@param t number
---@return number
function RageQuadratic:evaluate(t) end

--- Returns the four values that form the quadratic equation. This function returns
--- multiple values, so you must do something like this to get them:
--- ```lua
--- a, b, c, d = quadratic:get_bezier()
--- ```
---@return number, number, number, number
function RageQuadratic:get_bezier() end

--- Equivalent to `evaluate(1)`, but faster.
---@return number
function RageQuadratic:get_bezier_end() end

--- Equivalent to `evaluate(0)`, but faster.
---@return number
function RageQuadratic:get_bezier_start() end

--- Returns the slope of the curve at the given `t` value.
---@param t number
---@return number
function RageQuadratic:get_slope(t) end

--- Sets the four values that form the quadratic equation.
---@param a number
---@param b number
---@param c number
---@param d number
function RageQuadratic:set_from_bezier(a, b, c, d) end

--- Sets the four values that form the quadratic equation, treating the arguments as
--- from a cubic equation instead of as from a bezier curve.
---@param a number
---@param b number
---@param c number
---@param d number
function RageQuadratic:set_from_cubic(a, b, c, d) end
