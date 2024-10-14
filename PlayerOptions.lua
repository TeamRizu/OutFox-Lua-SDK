---@meta

--- All these functions have an optional last argument:
--- If the last argument is the boolean value true, then instead of returning the
--- previous settings as normal, they will instead return the PlayerOptions object.
--- 
--- This allows you to chain them like this:
--- ```lua
--- player_options:Twirl(5, 1, true):Roll(5, true):Dizzy(true):Twirl()
--- ```
--- 
--- ### Special Note
--- Functions that take a bool as their arg must have true as the second arg to be used with chaining.
--- ```lua
--- player_options:Backwards(true, true):Beat(5) -- will chain
---
--- player_options:Backwards(true):Beat(5) -- will NOT chain
--- ```
--- 
--- Most options fall into one of four types:  float, int, bool, or enum.
---
--- Float type options have this interface:
--- ```lua
--- Option(value, approach_speed)
--- ```
--- If value is a float, sets the TimeSpacing modifier to value.
--- 
--- If `approach_speed` is a float, sets the speed of the transition to `approach_speed`.  Returns the previous values of both.
--- 
--- `approach_speed` is in units of n per second.  value will be approached at the rate of `approach_speed` per second.
--- 
--- Note that the value and the approach speed arguments are both independently optional.
--- 
--- ## Example
--- ```lua
--- a,b= options:Boost() -- Sets a to the current value and b to the current approach_speed.
---
--- a,b= options:Boost(5, .5) -- Stores the previous values in a and b, NOT to 5 and .5.  Sets the value to 5 and the approach speed to .5.
---
--- a,b= options:Boost(5) -- Sets a and b to the previous values, NOT to 5 and .5.  Sets the value to 5 and leaves the approach speed at whatever it was.
--- ```
--- Setting the approach speed only matters when modifying the PlayerOptions from `ModsLevel_Song`.
--- 
--- - Int type options are similar to float in that they return and take a number, but they do not have an approach speed.
--- - Bool type options have an almost identical interface, the difference is that they can not have an approach speed.
--- - Enum type options are almost identical to bool type.  They take and return an enum value.
--- 
--- ***For brevity, the functions are only given a description if the option requires careful handling or does not follow the float or bool interfaces.***
---@class PlayerOptions
PlayerOptions = {}

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:AllHopos(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:AllTaps(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Alternate(value, approach_speed, chainCommand) end

--- If the player has an AMod set, returns the value of that AMod and its associated approach speed.  Returns nil otherwise.
--- 
--- If the optional first argument is passed, sets the AMod to the value and disables any CMod or XMod, MMod or CAMod that is set.
--- 
--- If the optional second argument is passed, sets the speed at which the transition occurs.
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AMod(value, approach_speed, chainCommand) end

--- When set to true, modifier approach rates take the current BPM of the player's chart into account (stops and delays will pause modifier approaching).
--- 
--- This does not affect SongOptions modifiers.
---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:ApproachType(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:AttackMines(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AttenuateX(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AttenuateXOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AttenuateY(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AttenuateYOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AttenuateZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AttenuateZOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Asymptote(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AsymptoteOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AsymptoteScale(value, approach_speed, chainCommand) end

--- AverageScrollBPM is one of the variables for controlling the speed mod.
--- 
--- Use CMod, XMod, MMod, AMod or CAMod to set the speed mod unless you have a good reason not to.
--- 
--- It is the setting for the AMod.
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:AverageScrollBPM(value, approach_speed, chainCommand) end

---@param num integer
---@return integer
---@param chainCommand? boolean
function PlayerOptions:BatteryLives(num, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Backwards(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Beat(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatMult(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatPeriod(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatMultCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatOffsetCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatPeriodCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatY(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatYMult(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatYOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatYPeriod(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatYCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatYMultCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatYOffsetCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatYPeriodCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatZMult(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatZOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatZPeriod(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatZCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatZMultCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatZOffsetCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BeatZPeriodCol(column, value, approach_speed, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Big(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Blink(value, approach_speed, chainCommand) end

---@return number|self, number
---@param color ColorType
---@param value number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:BlinkColor(color, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Blind(value, approach_speed, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:BMRize(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Boomerang(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Boost(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BoostCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Bounce(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BouncePeriod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BounceOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BounceZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BounceZPeriod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BounceZOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Brake(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BrakeCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Bumpy(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Bumpyn(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyPeriod(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyPeriodCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyX(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyXCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyXOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyXOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyXPeriod(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyXPeriodCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyY(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyYCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyYOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyYOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyYPeriod(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:BumpyYPeriodCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CAMod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Centered(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CenteredPath(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CenteredPathCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CMod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Confusion(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionOffsetn(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionX(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionXOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionXOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionXOffsetn(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionY(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionYOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionYOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ConfusionYOffsetn(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CAverageScrollBPM(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CosClip(value, approach_speed, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Cosecant(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Cover(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Cross(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicX(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicXOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicXCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicXOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicY(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicYOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicYCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicYOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicZOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicZCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:CubicZOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Dark(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DarkCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Darkn(value, approach_speed, chainCommand) end

---@param column integer
---@param point integer
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@return RageColor|self
---@param chainCommand? boolean
function PlayerOptions:DiffuseGradientColor(column, point, red, green, blue, alpha, chainCommand) end

---@param column integer
---@param point integer
---@param position number
---@return number|self
---@param chainCommand? boolean
function PlayerOptions:DiffuseGradientPoint(column, point, position, chainCommand) end

---@param column integer
---@param iNumPoints integer
---@return integer
---@param chainCommand? boolean
function PlayerOptions:DiffuseNumGradientPoints(column, iNumPoints, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Digital(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DigitalOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DigitalPeriod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DigitalSteps(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DigitalZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DigitalZOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DigitalZPeriod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DigitalZSteps(value, approach_speed, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:DisableMines(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Dizzy(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DizzyCol(column, value, approach_speed, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:DizzyHolds(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Distant(value, approach_speed, chainCommand) end

---@param type DrainType
---@return DrainType
---@param chainCommand? boolean
function PlayerOptions:DrainSetting(type, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrawSize(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrawSizeBack(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Drunk(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkPeriod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkSpacing(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkSpeed(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkOffsetCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkPeriodCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkSpacingCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkSpeedCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkY(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYPeriod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYSpacing(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYSpeed(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYOffsetCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYPeriodCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYSpacingCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkYSpeedCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZSpacing(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZPeriod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZSpeed(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZOffsetCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZPeriodCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZSpacingCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:DrunkZSpeedCol(column, value, approach_speed, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Echo(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Expand(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ExpandPeriod(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ExtendHolds(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ExtendHoldsCol(column, value, approach_speed, chainCommand) end

---@return FailType
---@param chainCommand? boolean
function PlayerOptions:FailSetting(FailType, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Flip(value, approach_speed, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Floored(value, chainCommand) end

---@param mods string
---@return self
function PlayerOptions:FromString(mods) end

--- Returns the current set of mods applied to the PlayerOptions as a string. Some mods like splines won't show up.
---@return string
function PlayerOptions:GetString() end

---@param iCol integer
---@return number|nil
function PlayerOptions:GetReversePercentForColumn(iCol) end

---@param c Course
---@param t Trail
---@return number
function PlayerOptions:GetStepAttacks(c,t) end

---@param so SongObject
---@param st Steps
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:IsEasierForCourseAndTrail(so, st, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:IsEasierForSongAndSteps(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Hallway(value, approach_speed, chainCommand) end

---@param color ColorType
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Hidden(color, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:HiddenColor(value, approach_speed, chainCommand) end

---@param color ColorType
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:HiddenOffset(color, value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:HiddenOffsetColor(value, chainCommand) end

---@param column integer
---@param value boolean
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:HideHoldJudgments(column, value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:HideNoteFlashCol(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:HoldGrainMult(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:HoldLifts(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:HoldRolls(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:TapsToHopos(value, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:HoposToTaps(column, value, approach_speed, chainCommand) end

---@param mode CullMode
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:HoldTinyXCol(mode, chainCommand) end

---@param mode CullMode
---@return CullMode
---@param chainCommand? boolean
function PlayerOptions:HoldCullMode(mode, chainCommand) end

---@param value number
---@param approach_speed number
---@return CullMode
---@param chainCommand? boolean
function PlayerOptions:NoteCullMode(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Incoming(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Invert(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:JudgeScale(value, chainCommand) end

---@return boolean|self
---@param type LifeType
---@param chainCommand? boolean
function PlayerOptions:Left(type, chainCommand) end

---@return LifeType
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:LifeSetting(value, chainCommand) end

---@return boolean|self
---@param sNoteSkinName string
---@param chainCommand? boolean
function PlayerOptions:Little(sNoteSkinName, chainCommand) end

---@return string
---@param type ModTimerType
---@param chainCommand? boolean
function PlayerOptions:LoadNoteSkin(type, chainCommand) end

---@param value number
---@param approach_speed number
---@return ModTimerType
---@param chainCommand? boolean
function PlayerOptions:ModTimerSetting(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ModTimerMult(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ModTimerOffset(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:MaxScrollBPM(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Mines(value, approach_speed, chainCommand) end

---@return number|self, number
---@param tns TapNoteScore
---@param chainCommand? boolean
function PlayerOptions:Mini(tns, chainCommand) end

---@return TapNoteScore
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:MinTNSToHideNotes(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Mirror(value, approach_speed, chainCommand) end

---@return number|self, number
---@param axis ModSplineAxis
---@param column integer
---@param point integer
---@param value number
---@param position number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:MMod(axis, column, point, value, position, approach_speed, chainCommand) end

---@return number, number, number
---@param axis ModSplineAxis
---@param column integer
---@param chainCommand? boolean
function PlayerOptions:ModSpline(axis, column, chainCommand) end

---@param axis ModSplineAxis
---@param enable boolean
---@param chainCommand? boolean
function PlayerOptions:ModSplineReset(axis, enable, chainCommand) end

---@return boolean|self
---@param axis ModSplineAxis
---@param type ModSplineType
---@param chainCommand? boolean
function PlayerOptions:ModSplineEnable(axis, type, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:ModSplineTypeSetting(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:MoveXCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:MoveXn(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:MoveYCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:MoveYn(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:MoveZCol(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:MoveZn(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:MuteOnError(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoAttack(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoFakes(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoHopos(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoTaps(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoHolds(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoJumps(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoHands(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoLifts(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoQuads(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoStretch(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:NoMines(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:NoRolls(value, approach_speed, chainCommand) end

---@param mode BlendMode
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:NotePath(mode, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return BlendMode
---@param chainCommand? boolean
function PlayerOptions:NotePathBlendMode(column, value, approach_speed, chainCommand) end

---@param mode DrawMode
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:NotePathCol(mode, chainCommand) end

---@param value number
---@param approach_speed number
---@return DrawMode
---@param chainCommand? boolean
function PlayerOptions:NotePathDrawMode(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:NotePathDrawSize(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:NotePathDrawSizeBack(value, approach_speed, chainCommand) end

---@return number|self, number
---@param column integer
---@param point integer
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@param chainCommand? boolean
function PlayerOptions:NotePathGrainMult(column, point, red, green, blue, alpha, chainCommand) end

---@return RageColor|self
---@param column integer
---@param point integer
---@param position number
---@param chainCommand? boolean
function PlayerOptions:NotePathGradientColor(column, point, position, chainCommand) end

---@return number|self
---@param column integer
---@param iNumPoints integer
---@param chainCommand? boolean
function PlayerOptions:NotePathGradientPoint(column, iNumPoints, chainCommand) end

---@param value number
---@param approach_speed number
---@return integer
---@param chainCommand? boolean
function PlayerOptions:NotePathNumGradientPoints(value, approach_speed, chainCommand) end

---@return number|self, number
---@param col integer
---@param value number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:NotePathWidth(col, value, approach_speed, chainCommand) end

---@return number|self, number
---@param name string
---@param chainCommand? boolean
function PlayerOptions:NotePathWidthCol(name, chainCommand) end

---@param column int
---@param name string
---@param chainCommand? boolean
---@return string, bool
function PlayerOptions:NoteSkin(column, name, chainCommand) end

---@param value number
---@param approach_speed number
---@return string
---@param chainCommand? boolean
function PlayerOptions:NoteSkinCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:NoteSkewX(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:NoteSkewXCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:NoteSkewY(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:NoteSkewYCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Orient(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:OrientCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:OrientX(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:OrientXCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:OrientY(column, value, approach_speed, chainCommand) end

---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:OrientYCol(bool, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Overhead(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaX(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaXOffset(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaXCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaXOffsetCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaY(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaYOffset(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaYCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaYOffsetCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaZ(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaZOffset(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaZCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ParabolaZOffsetCol(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Passmark(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Planted(value, approach_speed, chainCommand) end

---@param preserve boolean
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:PlayerAutoPlay(preserve, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:PreserveModSplines(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:PulseInner(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:PulseOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:PulseOuter(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:PulsePeriod(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Quick(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:RandAttack(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:RandomSpeed(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:RandomVanish(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Randomize(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:RandomizeOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Vanish(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:VanishSize(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:VanishOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Reverse(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ReverseCol(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Reversen(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Right(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Roll(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:RollCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Sawtooth(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SawtoothPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SawtoothCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SawtoothPeriodCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SawtoothZ(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SawtoothZPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SawtoothZCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SawtoothZPeriodCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ScrollBPM(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ScrollSpeed(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ScrollSpeedMultCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ShrinkMult(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ShrinkLinear(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ShrinkMultX(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ShrinkLinearX(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ShrinkMultY(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ShrinkLinearY(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ShrinkMultZ(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:ShrinkLinearZ(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Shuffle(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SinClip(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Skew(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Skippy(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:SoftShuffle(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Space(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralX(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralXOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralXPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralXCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralXOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralXPeriodCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralY(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralYOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralYPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralYCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralYOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralYPeriodCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralZOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralZPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralZCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralZOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SpiralZPeriodCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Split(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Square(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquarePeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquarePeriodCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareZOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareZPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareZCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareZOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SquareZPeriodCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Stealth(column, value, approach_speed, chainCommand) end

---@return number|self, number
---@param color ColorType
---@param value number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:StealthCol(color, value, approach_speed, chainCommand) end

---@return number|self, number
---@param color ColorType
---@param value number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:StealthColor(color, value, approach_speed, chainCommand) end

---@return number|self, number
---@param color ColorType
---@param column integer
---@param value number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:StealthGlowColor(color, column, value, approach_speed, chainCommand) end

---@return number|self, number
---@param column integer
---@param point integer
---@param red number
---@param green number
---@param blue number
---@param alpha number
---@param chainCommand? boolean
function PlayerOptions:StealthGlowColorCol(column, point, red, green, blue, alpha, chainCommand) end

---@return RageColor|self
---@param column integer
---@param point integer
---@param position number
---@param chainCommand? boolean
function PlayerOptions:StealthGlowGradientColor(column, point, position, chainCommand) end

---@return number|self
---@param column integer
---@param iNumPoints integer
---@param chainCommand? boolean
function PlayerOptions:StealthGlowGradientPoint(column, iNumPoints, chainCommand) end

---@param value number
---@param approach_speed number
---@return integer
---@param chainCommand? boolean
function PlayerOptions:StealthGlowNumGradientPoints(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:StealthHolds(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:StealthHoldsCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:StealthMines(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:StealthMinesCol(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Stealthn(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:StealthPastReceptors(value, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:StealthType(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Stomp(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:StraightHolds(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:StraightHoldsCol(value, approach_speed, chainCommand) end

---@return number|self, number
---@param color ColorType
---@param value number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:Sudden(color, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:SuddenColor(value, approach_speed, chainCommand) end

---@return number|self, number
---@param color ColorType
---@param value number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:SuddenOffset(color, value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:SuddenOffsetColor(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:SuperShuffle(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TanClip(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TimeSpacing(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TimeSpacingCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Tilt(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Tiny(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TinyCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Tinyn(value, approach_speed, chainCommand) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:TinyPull(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:TinyUsesMiniCalc(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TinyX(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TinyXCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TinyY(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TinyYCol(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TinyZ(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TinyZCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Tipsy(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TipsyOffset(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TipsySpacing(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TipsySpeed(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TipsyCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TipsySpacingCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TipsySpeedCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TipsyOffsetCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Tornado(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoOffsetCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoPeriodCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoZOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoZPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoZCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:TornadoZOffsetCol(column, value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:TornadoZPeriodCol(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:TurnNone(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Twirl(column, value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:TwirlCol(value, chainCommand) end

---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Twister(f, chainCommand) end

---@param value boolean
---@return boolean
function PlayerOptions:UsingReverse(value) end

---@return boolean|self
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:UnboundedReverse(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:VariableBoomerang(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Wave(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:WavePeriod(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:WaveOffset(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:WaveCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:WavePeriodCol(column, value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:WaveOffsetCol(value, chainCommand) end

---@param column integer
---@param value boolean
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:Wide(column, value, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:WireFrameCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:WireFrameWidthCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:XMod(value, approach_speed, chainCommand) end

---@return number|self, number
---@param value boolean
---@param chainCommand? boolean
function PlayerOptions:Xmode(value, chainCommand) end

---@param value number
---@param approach_speed number
---@return boolean|self
---@param chainCommand? boolean
function PlayerOptions:ZBuffer(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:Zigzag(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagPeriodCol(column, value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagOffsetCol(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagZ(value, approach_speed, chainCommand) end

---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagZOffset(value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagZPeriod(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagZCol(column, value, approach_speed, chainCommand) end

---@param column integer
---@param value number
---@param approach_speed number
---@return number|self, number
---@param chainCommand? boolean
function PlayerOptions:ZigzagZPeriodCol(column, value, approach_speed, chainCommand) end

---@return number|self, number
---@param column integer
---@param value number
---@param approach_speed number
---@param chainCommand? boolean
function PlayerOptions:ZigzagZOffsetCol(column, value, approach_speed, chainCommand) end
