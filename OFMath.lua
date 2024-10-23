---@meta

--- OutFox math namespace.
---@class OFMath
OFMath = {}

---Maps `n` from between `fLow1` and `fHigh1` to between `fLow2` and `fHigh2`.
---@param m number
---@param fLow1 number
---@param fHigh1 number
---@param fLow2 number
---@param fHigh2 number
---@return number
function OFMath.map(m, fLow1, fHigh1, fLow2, fHigh2) end

--- An alias for `OFMath.map`.
---@param m number
---@param fLow1 number
---@param fHigh1 number
---@param fLow2 number
---@param fHigh2 number
---@return number
---@see OFMath.map
function OFMath.scale(m, fLow1, fHigh1, fLow2, fHigh2) end

--- Limits `n` to be between `fLow` and `fHigh`.
---@param n number
---@param fLow number
---@param fHigh number
---@return number
function OFMath.clamp(n, fLow, fHigh) end

--- Converts the given radians into degrees.
---@param radians number
---@return number
function OFMath.degrees(radians) end
--- Converts the given degrees into radians.
---@param degrees number
---@return number
function OFMath.radians(degrees) end
--- Returns the square root of `x`.
---@param x number
---@return number
function OFMath.sqrt(x) end
--- Returns the inverse square root of `x`.
---@param x number
---@return number
function OFMath.invsqrt(x) end
--- Returns `(1 / x)`. Often called the reciprocal or the inverse.
---@param x number
---@return number
function OFMath.oneoverx(x) end

--- Returns `base` to the power of `exp`.
---@param base number
---@param exp number
---@return number
function OFMath.pow(base,exp) end

--- Returns the arc sine of `radians`.
---@param radians number
---@return number
function OFMath.asine(radians) end

--- Returns the arc hyperbolic sine of `radians`.
---@param radians number
---@return number
function OFMath.ahsine(radians) end

--- Returns the hyperbolic sine of `radians`.
---@param radians number
---@return number
function OFMath.hsine(radians) end

--- Returns the sine of `radians`.
---@param radians number
---@return number
function OFMath.sine(radians) end

--- OFMath.sine but using degreees instead of radians.
---@param degrees number
---@return number
function OFMath.sinedeg(degrees) end

--- Returns the arc cosine of `radians`.
---@param radians number
---@return number
function OFMath.acosine(radians) end

--- Returns the arc hyperbolic cosine of `radians`.
---@param radians number
---@return number
function OFMath.ahcosine(radians) end

--- Returns the hyperbolic cosine of `radians`.
---@param radians number
---@return number
function OFMath.hcosine(radians) end

--- Returns the cosine of `radians`.
---@param radians number
---@return number
function OFMath.cosine(radians) end

--- OFMath.cosine but using degreees instead of radians.
---@param degrees number
---@return number
function OFMath.cosinedeg(degrees) end

--- Returns the arc tangent of `radians`.
---@param radians number
---@return number
function OFMath.atangent(radians) end

--- Returns the arc hyperbolic tangent of `radians`.
---@param radians number
---@return number
function OFMath.ahtangent(radians) end

--- Returns the hyperbolic tangent of `radians`.
---@param radians number
---@return number
function OFMath.htangent(radians) end

--- Returns the tangent of `radians`.
---@param radians number
---@return number
function OFMath.tangent(radians) end

--- OFMath.tangent but using degreees instead of radians.
---@param degrees number
---@return number
function OFMath.tangentdeg(degrees) end

--- Returns a random float between `fLow` and `fHigh`.<br>
--- - If given no parameters, returns a random float between 0 inclusive and 1 exclusive.
---@param fLow number
---@param fHigh number
---@return number
function OFMath.randomfloat(fLow, fHigh) end

--- Returns a random number between 0 inclusive and 65535 exclusive.
---@return number
function OFMath.randomshort() end

--- Returns a random number between 0 inclusive and 9223372036854775807 exclusive.
---@return number
function OFMath.randomlong() end

--- Returns a random number between `iLow` and `iHigh`.<br>
--- - If given one parameter, returns a random number between 0 and `iLow - 1`.<br>
--- - If given no parameters, returns a random float between 0 inclusive and 2147483647 exclusive.
---@param iLow integer
---@param iHigh integer
---@return integer
function OFMath.randomint(iLow, iHigh) end

--- Returns a random number between 0 and `iNumber - 1`.<br>
---@param iNumber integer
---@return integer
function OFMath.randomint1arg(iNumber) end
