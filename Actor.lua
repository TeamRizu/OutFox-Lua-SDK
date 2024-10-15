---@diagnostic disable: param-type-mismatch
---@meta

--- Parameter list for the EditorUpdate Command.
---@class EditorUpdateParams
---@field Taps integer
---@field Jumps integer
---@field Hands integer
---@field Holds integer
---@field Mines integer
---@field Rolls integer
---@field Lifts integer
---@field Fakes integer

--- Parameter list for the EditorStateChangedMessage Command.
---@class EditorStateChangedMessageParams
---@field EditState EditState

--------------------------------


---@class Actor
---[[@operator call:Actor]]
---@field Condition? boolean Is this actor allowed to be created? If its false, it will be skipped with a Def.Actor instead.
---@field Name? string The name for the actor.
---@field [string] fun(self: Actor)
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: Actor)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: Actor)
---@field BeginCommand? fun(self: Actor)
--- Message command called when the current editor state has been changed.
---@field EditorStateChangedMessageCommand? fun(self: Actor, params: EditorStateChangedMessageParams )
---@field EditorUpdateCommand? fun(self: Actor, params: EditorUpdateParams )
---@diagnostic disable: redundant-parameter
---@type (Actor|ActorFrame|ActorFrameTexture|ActorMultiTexture|ActorMultiVertex|ActorProxy|ActorScroller|ActorSound|AudioVisualizer|Banner|BitmapText|BPMDisplay|HelpDisplay|Model|Sprite|Quad)
Actor = {}

--- This adds a wrapper state around the Actor, which is like wrapping the Actor in an ActorFrame, except that
--- you can use it on any actor, and add or remove wrapper states in response to things that happen while the
--- screen is being used (wrapping an Actor in an ActorFrame normally requires setting it up before the screen starts).
--- <br><br>
--- The ActorFrame that is returned is the wrapper state, for convenience.
--- An Actor can have any number of wrapper states. Use GetWrapperState to access wrapper states for the actor.
---@return ActorFrame
---@see Actor.GetWrapperState
function Actor:AddWrapperState() end

--- Returns the number of wrapper states the actor has.
---@return integer
function Actor:GetNumWrapperStates() end

--- Returns the wrapper state at index `i`.  Think of wrapper states with a higher index as being "further out".
--- Actor is inside Wrapper 1, Wrapper 1 is inside Wrapper 2, Wrapper 2 is inside Wrapper 3, and so on.
---@param i integer # Wrapper to query to.
---@return self
function Actor:GetWrapperState(i) end

--- Removes the wrapper state at index i.
---@param i integer
---@return self
function Actor:RemoveWrapperState(i) end

--- Returns the Actor's parent, or `nil` if it doesn't have one.
---@return self?
function Actor:GetParent() end

--- Returns the Actor's fake parent, or `nil` if it doesn't have one.
---@return self?
function Actor:GetFakeParent() end

--- Sets the Actor's fake parent to `p`, or clears it if `p` is nil.
---@param p self
function Actor:SetFakeParent(p) end

--- Returns the Actor's visibility.
---@return boolean
function Actor:GetVisible() end

--- Returns the Actor's X position.
---@return number
function Actor:GetX() end

--- Returns the Actor's Y position.
---@return number
function Actor:GetY() end

--- Returns the Actor's Z position.
---@return number
function Actor:GetZ() end

--- Returns the Actor's absolute x position. This can be used to determine its location
--- while being nested into multiple actorframes.
---@return number
function Actor:GetAbsoluteX() end

--- Returns the Actor's absolute y position. This can be used to determine its location
--- while being nested into multiple actorframes.
---@return number
function Actor:GetAbsoluteY() end

--- Returns what the Actor's X will be when it reaches its destination tween state.
---@return number
function Actor:GetDestX() end

--- Returns what the Actor's Y will be when it reaches its destination tween state.
---@return number
function Actor:GetDestY() end

--- Returns what the Actor's Z will be when it reaches its destination tween state.
---@return number
function Actor:GetDestZ() end

--- Returns what the Actor's absolute x position will be when it reaches its destination tween state.
--- This can be used to determine its new location while being nested into multiple actorframes.
---@return number
function Actor:GetAbsoluteDestX() end

--- Returns what the Actor's absolute y position will be when it reaches its destination tween state.
--- This can be used to determine its new location while being nested into multiple actorframes.
---@return number
function Actor:GetAbsoluteDestY() end

--- Returns the Actor's destination zoom.
--- `bGetCurrent` is optional. When `bGetCurrent` is true, the function returns the Actor's current mid-tween value for zoom.
---@param bGetCurrent? boolean
---@return number
function Actor:GetZoom(bGetCurrent) end

--- Returns the Actor's destination X zoom.
--- `bGetCurrent` is optional. When `bGetCurrent` is true, the function returns the Actor's current mid-tween value for zoom.
---@param bGetCurrent? boolean
---@return number
function Actor:GetZoomX(bGetCurrent) end

--- Returns the Actor's destination Y zoom.
--- `bGetCurrent` is optional. When `bGetCurrent` is true, the function returns the Actor's current mid-tween value for zoom.
---@param bGetCurrent? boolean
---@return number
function Actor:GetZoomY(bGetCurrent) end

--- Returns the Actor's destination Z zoom.
--- `bGetCurrent` is optional. When `bGetCurrent` is true, the function returns the Actor's current mid-tween value for zoom.
---@param bGetCurrent? boolean
---@return number
function Actor:GetZoomZ(bGetCurrent) end

--- Sets Texture Filtering for an Actor to `b`.
---@param b boolean
---@return self
function Actor:SetTextureFiltering(b) end

--- Plays the commands that follow at an accelerated rate `(fRate * fRate)`, where `fRate` is in seconds.
---@param fRate number
---@return self
function Actor:accelerate(fRate) end

--- Adds `fAux` to the Actor's current aux value.
---@param fAux number
---@return self
function Actor:addaux(fAux) end

--- Adds a command to the Actor.
---@param sName string
---@param cmd function
function Actor:addcommand(sName, cmd) end

--- Adds `rot` to the Actor's current x rotation.
---@param rot number
---@return self
function Actor:addrotationx(rot) end

--- Adds `rot` to the Actor's current y rotation.
---@param rot number
---@return self
function Actor:addrotationy(rot) end

--- Adds `rot` to the Actor's current z rotation.
---@param rot number
---@return self
function Actor:addrotationz(rot) end

--- Adds `xPos` to the Actor's current x position.
---@param xPos number
---@return self
function Actor:addx(xPos) end

--- Adds `yPos` to the Actor's current y position.
---@param yPos number
---@return self
function Actor:addy(yPos) end

--- Adds `zPos` to the Actor's current z position.
---@param zPos number
---@return self
function Actor:addz(zPos) end

--- [02 Actor.lua] Sets the alignment of an Actor, where `h` and `v` are in the range 0..1.
---@param h number
---@param v number
---@return self
function Actor:align(h,v) end

--- Sets whether or not the Actor should animate.
---@param b boolean
---@return self
function Actor:animate(b) end

--- Sets the Actor's aux value. (This can be a solution for coupling data with an Actor.)
---@param fAux number
---@return self
function Actor:aux(fAux) end

--- If `true`, cull the Actor's back faces.<br>
---@see Actor.cullmode
---@param b boolean
---@return self
function Actor:backfacecull(b) end

--- Sets the Actor's base alpha to `fAlpha`, where `fAlpha` is in the range 0..1.
---@param fAlpha number
---@return self
function Actor:basealpha(fAlpha) end

--- Sets the Actor's base alpha to `fAlpha`, where `fAlpha` is in the range 0..1.
---@param fAlpha number
---@return self
function Actor:basealpha(fAlpha) end

--- Sets the Actor's base X rotation to `rot`.
---@param rot number
---@return self
function Actor:baserotationx(rot) end

--- Sets the Actor's base Y rotation to `rot`.
---@param rot number
---@return self
function Actor:baserotationy(rot) end

--- Sets the Actor's base Z rotation to `rot`.
---@param rot number
---@return self
function Actor:baserotationz(rot) end

--- Returns the Actor's destination zoom.
---@param zoom number
---@return self
function Actor:basezoom(zoom) end

--- Returns the Actor's destination X zoom.
---@param zoom number
---@return self
function Actor:basezoomx(zoom) end

--- Returns the Actor's destination Y zoom.
---@param zoom number
---@return self
function Actor:basezoomy(zoom) end

--- Returns the Actor's destination Z zoom.
---@param zoom number
---@return self
function Actor:basezoomz(zoom) end

--- Sets the Actor to use the specified blend mode.
---@param mode BlendMode
---@return self
function Actor:blend(mode) end

--- Makes the Actor bob up and down.
---@see Actor.effectmagnitude # to define different bobbing behavior.
---@return self
function Actor:bob() end

--- Makes the Actor bounce, similar to bob but with one point acting as the ground.<br>
---@see Actor.effectmagnitude' # to define different bouncing behavior (with effectmagnitude values relating to x, y, and z movement).
---@return self
function Actor:bounce() end

---@param time number
---@return self
function Actor:bouncebegin(time) end

---@param time number
---@return self
function Actor:bounceend(time) end

--- [02 Actor.lua] Centers an Actor on the screen. (equivalent to `xy(SCREEN_CENTER_X,SCREEN_CENTER_Y)`)
---@return self
function Actor:Center() end

--- [02 Actor.lua] Centers an Actor on the X axis. (equivalent to `x(SCREEN_CENTER_X)`)
---@return self
function Actor:CenterX() end

--- [02 Actor.lua] Centers an Actor on the y axis. (equivalent to `y(SCREEN_CENTER_Y)`)
---@return self
function Actor:CenterY() end

--- Determines if the z-buffer should be cleared or not.
---@param bClear boolean
---@return self
function Actor:clearzbuffer(bClear) end

--- [02 Actor.lua] Combines multiple interpolators for complex tweens.<br>
--- `tweens` can either be a string like `"linear,0.25,accelerate,0.75"` or
--- a table with tween information: 
--- ```lua
--- {
---     {Type="linear", Percent=0.25, Bezier=nil},
---     {Type="accelerate", Percent=0.75, Bezier=nil}
--- }
--- ```
---@param length number
---@param tweens string|table
---@return self
function Actor:compound(length, tweens) end

---Crops the actor.
---@param left number
---@param top number
---@param right number
---@param bottom number
---@return self
function Actor:crop(left, top, right, bottom) end

--- Crops `percent` of the Actor from the bottom, where `percent` is in the range 0..1.
---@param percent number
---@return self
function Actor:cropbottom(percent) end

--- Crops `percent` of the Actor from the left, where `percent` is in the range 0..1.
---@param percent number
---@return self
function Actor:cropleft(percent) end

--- Crops `percent` of the Actor from the right, where `percent` is in the range 0..1.
---@param percent number
---@return self
function Actor:cropright(percent) end

--- Crops `percent` of the Actor from the top, where `percent` is in the range 0..1.
---@param percent number
---@return self
function Actor:croptop(percent) end

--- Sets the Actor's cull mode to `mode`.
---@param mode CullMode
---@return self
function Actor:cullmode(mode) end

--- Plays the commands that follow at an decelerated rate (1 - (1-`fRate`) * (1-`fRate`)), where `fRate` is in seconds.
---@param fRate number
---@return self
function Actor:decelerate(fRate) end

--- Set the Actor's diffuse color to c.
---@param c RageColor
---@return self
function Actor:diffuse(c) end

--- Sets the Actor's alpha level to `fAlpha`, where `fAlpha` is in the range-
--- 0..1.
---@param fAlpha number
---@return self
function Actor:diffusealpha(fAlpha) end

--- Makes the actor switch between two colors immediately.
--- See: Themerdocs/effect_colors.txt for an example.
---@return self
function Actor:diffuseblink() end

--- Sets the Actor's bottom edge color to c.
---@param c RageColor
---@return self
function Actor:diffusebottomedge(c) end

--- Set the Actor's diffuse color to `c`, ignoring any alpha value in `c`.
---@param c RageColor
---@return self
function Actor:diffusecolor(c) end

--- Sets the Actor's left edge color to c.
---@param c RageColor
---@return self
function Actor:diffuseleftedge(c) end

--- Sets the Actor's lower left corner color to c.
---@param c RageColor
---@return self
function Actor:diffuselowerleft(c) end

--- Sets the Actor's lower right corner color to c.
---@param c RageColor
---@return self
function Actor:diffuselowerright(c) end

--- Makes the Actor switch between two colors, jumping back to the first after reaching the second.
---@see Actor.effectcolor1 # To modify the first color.
---@see Actor.effectcolor2 # To modify the second color.
---@return self
function Actor:diffuseramp() end

--- Sets the Actor's right edge color to c.
---@param c RageColor
---@return self
function Actor:diffuserightedge(c) end

--- Makes the Actor shift between two colors smoothly.
---@see Actor.effectcolor1 # To modify the first color.
---@see Actor.effectcolor2 # To modify the second color.
---@return self
function Actor:diffuseshift() end

--- Sets the Actor's top edge color to c.
---@param c RageColor
---@return self
function Actor:diffusetopedge(c) end

--- Sets the Actor's upper left corner color to c.
---@param c RageColor
---@return self
function Actor:diffuseupperleft(c) end

--- Sets the Actor's upper right corner color to c.
---@param c RageColor
---@return self
function Actor:diffuseupperright(c) end

--- Tells the Actor to draw itself.
---@overload fun(self: Actor)
---@return self
function Actor:Draw() end

--- Sets the Actor's draworder to `iOrder`, where larger values display first.
---@param iOrder integer
---@return self
function Actor:draworder(iOrder) end

--- [02 Actor.lua] (Added in sm-ssc)
---@param time number
---@return self
function Actor:drop(time) end

--- [02 Actor.lua]
---@param time number
---@param fEase number
---@return self
function Actor:ease(time, fEase) end

--- Plays the commands that follow with an inSine ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinsine(fDuration) end

--- Plays the commands that follow with an outSine ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutsine(fDuration) end

--- Plays the commands that follow with an inOutSine ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutsine(fDuration) end

--- Plays the commands that follow with an outInSine ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutinsine(fDuration) end

--- Plays the commands that follow with an inQuad ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinquad(fDuration) end

--- Plays the commands that follow with an outQuad ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutquad(fDuration) end

--- Plays the commands that follow with an inOutQuad ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutquad(fDuration) end

--- Plays the commands that follow with an outInQuad ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutinquad(fDuration) end

--- Plays the commands that follow with an inCubic ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeincubic(fDuration) end

--- Plays the commands that follow with an outCubic ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutcubic(fDuration) end

--- Plays the commands that follow with an inOutCubic ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutcubic(fDuration) end

--- Plays the commands that follow with an outInCubic ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutincubic(fDuration) end

--- Plays the commands that follow with an inQuart ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinquart(fDuration) end

--- Plays the commands that follow with an outQuart ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutquart(fDuration) end

--- Plays the commands that follow with an inOutQuart ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutquart(fDuration) end

--- Plays the commands that follow with an outInQuart ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutinquart(fDuration) end

--- Plays the commands that follow with an inQuint ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinquint(fDuration) end

--- Plays the commands that follow with an outQuint ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutquint(fDuration) end

--- Plays the commands that follow with an inOutQuint ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutquint(fDuration) end

--- Plays the commands that follow with an outInQuint ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutinquint(fDuration) end

--- Plays the commands that follow with an inExpo ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinexpo(fDuration) end

--- Plays the commands that follow with an outExpo ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutexpo(fDuration) end

--- Plays the commands that follow with an inOutExpo ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutexpo(fDuration) end

--- Plays the commands that follow with an outInExpo ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutinexpo(fDuration) end

--- Plays the commands that follow with an inBack ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinback(fDuration) end

--- Plays the commands that follow with an outBack ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutback(fDuration) end

--- Plays the commands that follow with an inOutBack ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutback(fDuration) end

--- Plays the commands that follow with an outInBack ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutinback(fDuration) end

--- Plays the commands that follow with an inBack ease and has a customizable overshoot. fDuration is in seconds.
--- 
--- easeinback uses a value of `1.70158` for fOvershoot.
---@param fDuration number
---@param fOvershoot number
---@return self
function Actor:easeinbackex(fDuration, fOvershoot) end

--- Plays the commands that follow with an outBack ease and has a customizable overshoot. fDuration is in seconds.
--- 
--- easeoutback uses a value of `1.70158` for fOvershoot.
---@param fDuration number
---@param fOvershoot number
---@return self
function Actor:easeoutbackex(fDuration, fOvershoot) end

--- Plays the commands that follow with an inOutBack ease and has a customizable overshoot. fDuration is in seconds.
--- 
--- easeinoutback uses a value of `2.5949095` for fOvershoot.
---@param fDuration number
---@param fOvershoot number
---@return self
function Actor:easeinoutbackex(fDuration, fOvershoot) end

--- Plays the commands that follow with an outInBack ease and has a customizable overshoot. fDuration is in seconds.
--- 
--- easeoutinback uses a value of `2.5949095` for fOvershoot.
---@param fDuration number
---@param fOvershoot number
---@return self
function Actor:easeoutinbackex(fDuration, fOvershoot) end

--- Plays the commands that follow with an inCircle ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeincircle(fDuration) end

--- Plays the commands that follow with an outCircle ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutcircle(fDuration) end

--- Plays the commands that follow with an inOutCircle ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutcircle(fDuration) end

--- Plays the commands that follow with an outInCircle ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutincircle(fDuration) end

--- Plays the commands that follow with an inElastic ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinelastic(fDuration) end

--- Plays the commands that follow with an outElastic ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutelastic(fDuration) end

--- Plays the commands that follow with an inOutElastic ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutelastic(fDuration) end

--- Plays the commands that follow with an outInElastic ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutinelastic(fDuration) end

--- Plays the commands that follow with an inElastic ease and has customizable amplitude &amp; period. fDuration is in seconds.<br />
---
--- easeinelastic uses an fAmplitude of `0.1` and a fPeriod of `0.4`.
---@param fDuration number
---@param fAmplitude number
---@param fPeriod number
---@return self
function Actor:easeinelasticex(fDuration, fAmplitude, fPeriod) end

--- Plays the commands that follow with an outElastic ease and has customizable amplitude &amp; period. fDuration is in seconds.<br />
---
--- easeoutelastic uses an fAmplitude of `0.1` and a fPeriod of `0.4`.
---@param fDuration number
---@param fAmplitude number
---@param fPeriod number
---@return self
function Actor:easeoutelasticex(fDuration, fAmplitude, fPeriod) end

--- Plays the commands that follow with an inOutElastic ease and has customizable amplitude &amp; period. fDuration is in seconds.<br />
---
--- easeinoutelastic uses an fAmplitude of `0.1` and a fPeriod of `0.4`.
---@param fDuration number
---@param fAmplitude number
---@param fPeriod number
---@return self
function Actor:easeinoutelasticex(fDuration, fAmplitude, fPeriod) end

--- Plays the commands that follow with an outInElastic ease and has customizable amplitude &amp; period. fDuration is in seconds.<br />
---
--- easeoutinelastic uses an fAmplitude of `0.1` and a fPeriod of `0.4`.
---@param fDuration number
---@param fAmplitude number
---@param fPeriod number
---@return self
function Actor:easeoutinelasticex(fDuration, fAmplitude, fPeriod) end

--- Plays the commands that follow with an inBounce ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinbounce(fDuration) end

--- Plays the commands that follow with an outBounce ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutbounce(fDuration) end

--- Plays the commands that follow with an inOutBounce ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeinoutbounce(fDuration) end

--- Plays the commands that follow with an outInBounce ease. fDuration is in seconds.
---@param fDuration number
---@return self
function Actor:easeoutinbounce(fDuration) end

--- Set the Actor's effect clock to `s`.
---@param s string
---@return self
function Actor:effectclock(s) end

--- Sets the first effect color to `c`.
---@param c RageColor
---@return self
function Actor:effectcolor1(c) end

--- Sets the second effect color to `c`.
---@param c RageColor
---@return self
function Actor:effectcolor2(c) end

--- Set the Actor's effect magnitude in each direction to the given values.
---@param fX number
---@param fY number
---@param fZ number
---@return self
function Actor:effectmagnitude(fX,fY,fZ) end

--- Set the Actor's effect offset to `fTime`.  The offset is added to the time into the effect before calculating percent_through_effect.
---@param fTime number
---@return self
function Actor:effectoffset(fTime) end

--- Set the Actor's effect period to `fTime`.
---@param fTime number
---@return self
function Actor:effectperiod(fTime) end

--- Set the Actor's effect timing.
--- 
--- `hold_at_zero` is before `hold_at_full` in the argument list for compatibility.
--- A future version will probably swap them because it makes more sense to have `hold_at_full` come before `hold_at_zero`.
--- 
--- All effect timings must be greater than or equal to zero, at least one of them must be greater than zero.
--- 
--- The effect timing controls how long it takes an effect to cycle and how long it spends in each phase.
--- 
--- Depending on the effect clock, the actor's time into effect is updated every frame.
--- That time is then translated into a `percent_through_effect` using the parameters to this function.
---
--- - `ramp_to_half` is the amount of time for `percent_through_effect` to reach 0.5.<br />
--- - `hold_at_half` is the amount of time `percent_through_effect` will stay at 0.5.<br />
--- - `ramp_to_full` is the amount of time `percent_through_effect` will take to go from 0.5 to 1.0.<br />
--- - `hold_at_full` is the amount of time `percent_through_effect` will stay at 1.0.<br />
--- - After reaching the end of hold_at_full, `percent_through_effect` stays at 0 until `hold_at_zero` is over.<br />
---
--- The different effects use `percent_through_effect` in different ways.  Some use it to calculate `percent_between_colors` with this sine wave:
--- ```lua
--- sin((percent_through_effect + 0.25f) * 2 * PI ) / 2 + 0.5f
--- ```
---
--- Some effects check the internal bool `blink_on`.  `blink_on` is true if `percent_through_effect` is greater than 0.5 and false if `percent_through_effect` is less than or equal to 0.5.
--- 
--- Check the effect functions for individual explanations.
--- 
---@see Actor.diffuseblink
---@see Actor.diffuseshift
---@see Actor.glowblink
---@see Actor.glowshift
---@see Actor.glowramp
---@see Actor.rainbow
---@see Actor.wag
---@see Actor.bounce
---@see Actor.bob
---@see Actor.pulse
---@see Actor.spin
---@see Actor.vibrate
--- @param ramp_to_half any
--- @param hold_at_half any
--- @param ramp_to_full any
--- @param hold_at_zero any
--- @param hold_at_full any
function Actor:effecttiming(ramp_to_half, hold_at_half, ramp_to_full, hold_at_zero, hold_at_full) end

--- Set the hold_at_full part of the effect timing while leaving the others unchanged.
---@param hold_at_full number
---@return self
function Actor:effect_hold_at_full(hold_at_full) end

--- Erases the Actor's command for the given name. Does nothing if the command doesn't exist.
---@param sCmdName string
---@return self
function Actor:erasecommand(sCmdName) end

--- Fades `percent` of the Actor from the bottom where `percent` is in the range 0..1.
---@param percent number
---@return self
function Actor:fadebottom(percent) end

--- Fades `percent` of the Actor from the left where `percent` is in the range 0..1.
---@param percent number
---@return self
function Actor:fadeleft(percent) end

--- Fades `percent` of the Actor from the right where `percent` is in the range 0..1.
---@param percent number
---@return self
function Actor:faderight(percent) end

--- Fades `percent` of the Actor from the top where `percent` is in the range 0..1.
---@param percent number
---@return self
function Actor:fadetop(percent) end

--- Finishes up an Actor's tween immediately.
---@return self
function Actor:finishtweening() end

--- Returns the Actor's aux value.
---@return number
function Actor:getaux() end

--- Returns the Actor's base X zoom value.
---@return number
function Actor:GetBaseZoomX() end

--- Returns the Actor's base Y zoom value.
---@return number
function Actor:GetBaseZoomY() end

--- Returns the Actor's base Z zoom value.
---@return number
function Actor:GetBaseZoomZ() end

--- Returns the command with the given name. Returns `nil` if the command doesn't exist for the Actor.
---@param sCmdName string
---@return self|nil
function Actor:GetCommand(sCmdName) end

--- Gets the percentage the actor is cropped from the left. `bCurrent` is an optional parameter that makes the function return the current mid-tween value if `true`.
---@param bCurrent boolean
---@return number
function Actor:GetCropLeft(bCurrent) end

--- Gets the percentage the actor is cropped from the top. `bCurrent` is an optional parameter that makes the function return the current mid-tween value if `true`.
---@param bCurrent boolean
---@return number
function Actor:GetCropTop(bCurrent) end

--- Gets the percentage the actor is cropped from the right. `bCurrent` is an optional parameter that makes the function return the current mid-tween value if `true`.
---@param bCurrent boolean
---@return number
function Actor:GetCropRight(bCurrent) end

--- Gets the percentage the actor is cropped from the bottom. `bCurrent` is an optional parameter that makes the function return the current mid-tween value if `true`.
---@param bCurrent boolean
---@return number
function Actor:GetCropBottom(bCurrent) end

--- Gets the width of the actor after cropping. `bCurrent` is an optional parameter that makes the function return the current mid-tween value if `true`.
---@param bCurrent boolean
---@return number
function Actor:GetCroppedWidth(bCurrent) end

--- Gets the zoomed width of the actor after cropping. `bCurrent` is an optional parameter that makes the function return the current mid-tween value if `true`.
---@param bCurrent boolean
---@return number
function Actor:GetCroppedZoomedWidth(bCurrent) end

--- Gets the height of the actor after cropping. `bCurrent` is an optional parameter that makes the function return the current mid-tween value if `true`.
---@param bCurrent boolean
---@return number
function Actor:GetCroppedHeight(bCurrent) end

--- Gets the zoomed height of the actor after cropping. `bCurrent` is an optional parameter that makes the function return the current mid-tween value if `true`.
---@param bCurrent boolean
---@return number
function Actor:GetCroppedZoomedHeight(bCurrent) end

--- Returns the Actor's current diffuse color.
---@return RageColor
function Actor:GetDiffuse() end

--- Returns the Actor's current diffusealpha.
---@return number
function Actor:GetDiffuseAlpha() end

--- Returns the Actor's current effect delta.
---@return number
function Actor:GetEffectDelta() end

--- Returns the Actor's current X rotation, taking the current actor effect into account.
---@return number
function Actor:GetEffectRotationX() end

--- Returns the Actor's current Y rotation, taking the current actor effect into account.
---@return number
function Actor:GetEffectRotationY() end

--- Returns the Actor's current Z rotation, taking the current actor effect into account.
---@return number
function Actor:GetEffectRotationZ() end

--- Returns the Actor's current X position, taking the current actor effect into account.
---@return number
function Actor:GetEffectX() end

--- Returns the Actor's current Y position, taking the current actor effect into account.
---@return number
function Actor:GetEffectY() end

--- Returns the Actor's current Z position, taking the current actor effect into account.
---@return number
function Actor:GetEffectZ() end

--- Returns the Actor's current effect magnitude as three floats.
---@return number,number,number
function Actor:geteffectmagnitude() end

--- Returns the Actor's current glow color.
---@return RageColor
function Actor:GetGlow() end

--- Returns the Actor's horizontal alignment as a number in the range 0..1.
---@return number
function Actor:GetHAlign() end

---@return number
function Actor:GetHoldLength() end

--- Returns the Actor's name.
---@return string
function Actor:GetName() end

--- Returns the number of states the Actor has.
---@return integer
function Actor:GetNumStates() end

--- Returns the Actor's current height.
---@return number
function Actor:GetHeight() end

--- Returns the Actor's rotation in X, Y, and Z.
---@return number,number,number
function Actor:getrotation() end

--- Returns the Actor's destination X rotation.
--- 
--- `bGetCurrent` is optional.
--- 
--- When bGetCurrent is true, the function returns the Actor's current mid-tween value for X rotation.
--- @param bGetCurrent? boolean
function Actor:GetRotationX(bGetCurrent) end

--- Returns the Actor's destination Y rotation.
--- 
--- `bGetCurrent` is optional.
--- 
--- When bGetCurrent is true, the function returns the Actor's current mid-tween value for Y rotation.
--- @param bGetCurrent? boolean
function Actor:GetRotationY(bGetCurrent) end

--- Returns the Actor's destination Z rotation.
--- 
--- `bGetCurrent` is optional.
--- 
--- When bGetCurrent is true, the function returns the Actor's current mid-tween value for Z rotation.
--- @param bGetCurrent? boolean
function Actor:GetRotationZ(bGetCurrent) end

--- Returns whether the Actor applies rotation after zoom or not.
---@return boolean
function Actor:GetRotAfterZoom() end

--- Returns whether the Actor applies skew after zoom and rotation or not.
---@return boolean
function Actor:GetSkewAfterZoomRot() end

--- Returns the Actor's destination value for SkewX.
--- 
--- `bGetCurrent` is optional.
--- 
--- When bGetCurrent is true, the function returns the Actor's current mid-tween value for X rotation.
--- @param bGetCurrent? boolean
function Actor:GetSkewX(bGetCurrent) end

--- Returns the Actor's destination value for SkewY.
--- 
--- `bGetCurrent` is optional.
--- 
--- When bGetCurrent is true, the function returns the Actor's current mid-tween value for Y rotation.
--- @param bGetCurrent? boolean
function Actor:GetSkewY(bGetCurrent) end

--- Returns the Actor's current matrix rotation order.
---@return string
function Actor:GetMatrixRotOrder() end

--- Sets the Actor's matrix rotation order. The string is a combination of "x", "y" and "z".
--- 
--- This affects the order of how rotations are applied. (the default is "zyx")
--- 
--- Example:
--- 
--- `"yxz"` applies rotationy first, then x, then z.
---@param sRotOrder string
---@return self
function Actor:SetMatrixRotOrder(sRotOrder) end

--- Returns the number of seconds into the currently running effect (e.g. diffuseshift, bob).
---@return number
function Actor:GetSecsIntoEffect() end

--- Returns how much time is remaining for the current tween.
---@return number
function Actor:GetTweenTimeLeft() end

--- Returns the Actor's vertical alignment as a number in the range 0..1.
---@return number
function Actor:GetVAlign() end

--- Returns the Actor's current width.
---@return number
function Actor:GetWidth() end

--- Returns the zoomed height of an Actor.
---@return number
function Actor:GetZoomedHeight() end

--- Returns the zoomed width of an Actor.
---@return number
function Actor:GetZoomedWidth() end

--- Returns `true` if this actor is currently set to use the effect delta 
--- for tweening.
---@return boolean
function Actor:get_tween_uses_effect_delta() end

--- Sets the Actor's glow color.
---@param c RageColor
---@return self
function Actor:glow(c) end

--- Makes the Actor glow between two colors immediately.
---@return self
function Actor:glowblink() end

--- Makes the Actor glow between two colors smoothly, jumping back to the
--- first at the end.
---@return self
function Actor:glowramp() end

--- Makes the Actor glow between two colors smoothly.
---@return self
function Actor:glowshift() end

--- Set the fractional horizontal alignment of the Actor according to `fAlign` which should be a float in the range 0..1.
--- An alignment of 0 is left aligned while an alignment of 1 is right aligned.
---@param align number
---@see Actor.horizalign # for the common case.
---@return self
function Actor:halign(align) end

--- Sets the heading of this Actor to `fHeading`.
---@return self
function Actor:heading(fHeading) end

--- Hides the Actor for the specified amount of time.
--- During this time, the actor is not constructed, so it is not available
--- to be obtained.
---@param fTime number
---@return self
function Actor:hibernate(fTime) end

--- Compatibility alias for the hidden command, which was removed in sm-ssc.
---@param b boolean
---@see Actor.visible # for the current version.
---@deprecaTextureMode
---@return self
function Actor:hidden(b) end

--- [02 Actor.lua] Hide if `b` is `true`, and viceversa.
---@see Actor.visible # for the current version.
function Actor:hide_if(b) end

--- Set the horizontal alignment of the Actor according to `align`.
---@param align HorizAlign
---@see Actor.halign # for fractional alignment.
---@return self
function Actor:horizalign(align) end

--- Hurries up an Actor's tweening by `factor`.
---@param fFactor number
---@return self
function Actor:hurrytweening(fFactor) end

--- Plays the commands that follow at a normal rate, where `fRate` is in seconds.
---@param fRate number
---@return self
function Actor:linear(fRate) end

--- Sets the actor's effect command to `sCommandName`.
--- Params cannot be passed to the command.
---@param sCommandName string
---@return self
function Actor:luaeffect(sCommandName) end

--- [02 Actor.lua] Plays the lyric command for the specified `side`
--- (`"Back"` or `"Front"`).
---@param side string
---@return self
function Actor:LyricCommand(side) end

--- Sets the Actor's name to `sName`.
---@param sName string
---@return self
function Actor:name(sName) end

--- Stops the Actor's mvement
--- (Usually used for Sprites or Models).
---@return self
function Actor:pause() end

--- Sets the pitch of this Actor to `fPitch`.
---@param fPitch number
---@return self
function Actor:pitch(fPitch) end

--- Starts the Actor's movement
--- (Usually used for Sprites or Models).
---@return self
function Actor:play() end

--- Plays a command name `sCommandName`.
--- `params` is passed to the command as an argument if it is a table.
---@param sCommandName string
---@param params? table
---@return self
function Actor:playcommand(sCommandName, params) end

--- [02 Actor.lua] Sets the visibility of the Actor based on `p` being a
--- human player.
--- Equivalent to `self:visible( GAMESTATE:IsHumanPlayer(p) )`.
---@param p PlayerNumber
---@see Actor.visible
---@return self
function Actor:player(p) end

--- Sets the fill mode of an Actor.
---@param pm PolygonMode
---@return self
function Actor:polygonmode(pm) end

--- Sets how thick an Actor's lines are when the `PolygonMode` is set to
--- Line.
--- Only accepts positive numbers.
---@param fWidth number
---@return self
function Actor:polygonlinewidth(fWidth) end

--- Sets how big an Actor's points are when the `PolygonMode` is set to
--- Point.
--- Only accepts positive numbers.
---@params fSize number
---@return self
function Actor:pointsize(fSize) end

--- Makes the Actor grow and shrink.
---@see Actor.effectmagnitude # to define a different pulsing behavior.
---@return self
function Actor:pulse() end

--- Makes the Actor grow and shrink on a sawtooth wave.
---@see Actor.effectmagnitude # to define a different pulsing behavior.
---@return self
function Actor:pulseramp() end

--- Queues a command named `sCommandName` to be played.
---@param sCommandName string
---@return self
function Actor:queuecommand(sCommandName) end

--- Basically creates a command named `!sMessageName` (Note the ! at the beginning.
--- The source code says this:
--- ```
--- "Hack: use "!" as a marker to broadcast a command, instead of playing a command,
--- so we don't have to add yet another element to every tween state for this
--- rarely-used command.")
--- ```
---@param sMessageName string
---@return self
function Actor:queuemessage(sMessageName) end

--- Makes the Actor change colors continually using colors of the rainbow.  --- Each channel follows a cosine wave, red starts at 0,
--- green starts at 2pi/3, and blue starts at 4pi/3.
---@return self
function Actor:rainbow() end

--- Sets the roll of this Actor to `fRoll`.
---@return self
function Actor:roll(fRoll) end

--- Sets the Actor's rotation on the x axis to `fRotationX`.
---@param fRotationX number
---@return self
function Actor:rotationx(fRotationX) end

--- Sets the Actor's rotation on the y axis to `fRotationY`.
---@param fRotationY number
---@return self
function Actor:rotationy(fRotationY) end

--- Sets the Actor's rotation on the z axis to `fRotationZ`.
---@param fRotationZ number
---@return self
function Actor:rotationz(fRotationZ) end

--- Set whether the Actor applies rotation after zoom or not.
---@param b boolean
---@return self
function Actor:rotafterzoom(b) end

--- Run the lua function command on the Actor. If used on an ActorFrame, all Actors within will run the command.
---@param actor fun(self: Actor)
---@return self
function ActorFrame:RunCommandsRecursively(actor) end

--- [02 Actor.lua] An alternative version of Actor:scale_or_crop_background that doesn't move the background to the center.
---@see Actor.scale_or_crop_background
---@return self
function Actor:scale_or_crop_background_no_move() end

--- [02 Actor.lua]
---@return self
function Actor:scale_or_crop_background() end

--- Scales the Actor to cover a rectangle defined by the four float arguments.
---@param fLeft number
---@param fTop number
---@param fRight number
---@param fBottom number
---@return self
function Actor:scaletocover(fLeft,fTop,fRight,fBottom) end

--- Scales the Actor to fit inside a rectangle defined by the four float arguments.
---@param fLeft number
---@param fTop number
---@param fRight number
---@param fBottom number
---@return self
function Actor:scaletofit(fLeft,fTop,fRight,fBottom) end

--- Sets the height of the Actor.
---@param height number
---@return self
function Actor:SetHeight(height) end

--- Sets the size of the Actor.
---@param width number
---@param height number
---@return self
function Actor:setsize(width,height) end

--- [01 alias.lua] Alias for setsize.
---@param width number
---@param height number
---@see Actor.setsize
---@return self
function Actor:SetSize(width,height) end

--- Sets a multi-framed Actor's state to `iNewState`.
---@param iNewState integer
---@return self
function Actor:setstate(iNewState) end

--- Sets the width of the Actor.
---@param width number
---@return self
function Actor:SetWidth(width) end

--- Use this to make the actor use the effect clock to tween instead of using the global frame delta.
---@param b boolean
---@return self
function Actor:set_tween_uses_effect_delta(b) end

--- Sets the shadow's color to `c`.
---@param c RageColor
---@return self
function Actor:shadowcolor(c) end

--- Sets the Actor's shadow length to `fLength`.
---@param fLength number
---@return self
function Actor:shadowlength(fLength) end

--- Sets the Actor's horizontal shadow length to `fLength`.
---@param fLength number
---@return self
function Actor:shadowlengthx(fLength) end

--- Sets the Actor's vertical shadow length to `fLength`.
---@param fLength number
---@return self
function Actor:shadowlengthy(fLength) end

--- Set whether the Actor applies skew after zoom and rotation or not.
---@return self
function Actor:skewafterzoomrot() end

--- Skews the Actor on the x axis by `fAmount`.
---@param fAmount number
---@return self
function Actor:skewx(fAmount) end

--- Skews the Actor on the y axis by `fAmount`.
---@param fAmount number
---@return self
function Actor:skewy(fAmount) end

--- Waits `fSeconds` before executing the next command.
---@param fSeconds number
---@return self
function Actor:sleep(fSeconds) end

---Plays the next animation with a smoothened movement.
---@param fDuration number
---@return self
function Actor:smooth(fDuration) end

--- Tells the Actor to spin.
---@see Actor.effectmagnitude # to modify its behaviour.
---@return self
function Actor:spin() end

--- Makes the next animation use a `'springing'` movement.
---@param fDuration number
---@return self
function Actor:spring(fDuration) end

--- Tells the actor to squish.
---@see Actor.effectmagnitude # to modify its behaviour.
---@return self
function Actor:squish() end

--- Stops any effect the Actor has.
---@return self
function Actor:stopeffect() end

--- Stops any tweening.
---@return self
function Actor:stoptweening() end

--- Stretches the Actor to a rectangle of a specific size.
---@param x1 number
---@param x2 number
---@param y1 number
---@param y2 number
---@return self
function Actor:stretchto(x1, y1, x2, y2) end

--- Translates the texture of the actor by x and y.
---@param x number
---@param y number
---@return self
function Actor:texturetranslate(x,y) end

--- Determines if the Actor should use texture wrapping or not.
---@param bWrap boolean
---@return self
function Actor:texturewrapping(bWrap) end

--- Uses type to determine the tween to use.  The type must be one of the TweenType enum values.
--- - If the type is not TweenType_Bezier, the params table is ignored.
--- - If the type is TweenType_Bezier, then the params table must have 4 or 8 numbers.
---   - 4 numbers in the params creates a 1 dimensional bezier curve, 8 numbers creates a 2 dimensional bezier curve.
---
--- It's usually more convenient to use Actor:linear, Actor:accelerate, and so on, rather than using Actor:tween directly.
---@param time number
---@param type TweenType
---@param params table
---@return self
function Actor:tween(time, type, params) end

--- Set the fractional vertical alignment of the Actor according to `fAlign` which should be a float in the range 0..1.
--- An alignment of 0 is `top` aligned while an alignment of 1 is `bottom` aligned.
---@see Actor.vertalign # for the common case.
---@param fAlign number
---@return self
function Actor:valign(fAlign) end

--- Set the vertical alignment of the Actor according to `align`.
---@see Actor.valign # for fractional alignment.
---@param align VertAlign
---@return self
function Actor:vertalign(align) end

--- Makes the Actor vibrate violently.
---@see Actor.effectmagnitude # to define a different pulsing behavior.
---@return self
function Actor:vibrate() end

--- Sets an Actor's visibility to `b`.
---@param b boolean
---@return self
function Actor:visible(b) end

--- Makes the Actor wag.
---@see Actor.effectmagnitude # to modify its behaviour.
---@return self
function Actor:wag() end

--- Sets the x position of the Actor.
---@param actorX number
---@return self
function Actor:x(actorX) end

--- Sets the y position of the Actor.
---@param actorY number
---@return self
function Actor:y(actorY) end

--- Sets the z position of the Actor.
---@param actorZ number
---@return self
function Actor:z(actorZ) end

--- Sets the z bias to `fBias`.
---@param fBias number
function Actor:zbias(fBias) end

--- Enables/disables z-buffer depending on `bUse`.
---@param bUse boolean
function Actor:zbuffer(bUse) end

--- Zooms the Actor to `zoom` scale.
---@param zoom number
---@return self
function Actor:zoom(zoom) end

--- Zooms the Actor on both the X and Y axis using `zoomX` and `zoomY`.
---@param zoomX number
---@param zoomY number
---@return self
function Actor:zoomto(zoomX, zoomY) end

--- Zooms the Actor to `zoom` height.
---@see Actor.zoomy
---@return self
function Actor:zoomtoheight(zoom) end

--- Zooms the Actor to `zoom` width.
---@see Actor.zoomx
---@return self
function Actor:zoomtowidth(zoom) end

--- Zooms the Actor to `zoom` scale on the X axis.
---@param zoom number
---@return self
function Actor:zoomx(zoom) end

--- Zooms the Actor to `zoom` scale on the Y axis.
---@param zoom number
---@return self
function Actor:zoomy(zoom) end

--- Zooms the Actor to `zoom` scale on the Z axis.
---@param zoom number
---@return self
function Actor:zoomz(zoom) end

--- Sets the z testing mode to write on pass if `true`, turns it off
--- if `false`.
---@param bTest boolean
---@return self
function Actor:ztest(bTest) end

--- Sets the z testing mode to `testMode`
---@param testMode ZTestMode
---@return self
function Actor:ztestmode(testMode) end

--- Sets z writing to `true` or `false` based on `bWrite`.
---@param bWrite boolean
---@return self
function Actor:zwrite(bWrite) end

-------- The following are from scripts that come with sm-ssc ----------

--- [02 Actor.lua] Plays the commands that follow using a bezer curve to 
--- determine the rate. The curve must have 4 or 8 elements. This is a 
--- convenience wrapper around calling `Actor:tween` with `TweenType_Bezier`.
---@param time number
---@param curve table
---@return self
function Actor:bezier(time, curve) end

--- [02 Actor.lua] Stretches an Actor to cover the screen.
--- Equivalent to `stretchto(0,0,SCREEN_WIDTH,SCREEN_HEIGHT)`.
function Actor:fullScreen() end

--- [02 Actor.lua] A customized version of pulse that is more appealing for on-beat effects.
---@param fEffectPeriod number
---@return self
function Actor:heartbeat(fEffectPeriod) end

--- [02 Actor.lua] Sets an Actor as a mask destination.
---@return self
function Actor:MaskDest() end

--- [02 Actor.lua] Sets an Actor as a mask source.
--- (Also clears zbuffer; other mask sources do not clear the zbuffer)
---@return self
function Actor:MaskSource() end

--- [02 Actor.lua] Make graphics their true size at any resolution.
---@return self
function Actor:Real() end

--- [02 Actor.lua] Scale things back up after they have already been
--- scaled down.
---@return self
function Actor:RealInverse() end

--- [02 Actor.lua] A customized version of pulse that is more appealing
--- for on-beat effects.
---@return self
function Actor:thump(fEffectPeriod) end

-----------------------------------------------------------------------

--- Sets whether the actor renders as a wireframe. Not all actors support
--- this.
---@param bWireFrame boolean
---@return self
function Actor:wireframe(bWireFrame) end

--- Sets the x and y location of the Actor in one command.
---@param actorX number
---@param actorY number
---@return self
function Actor:xy(actorX, actorY) end

--- Sets the x, y and z location of the Actor in one command.
---@param actorX number
---@param actorY number
---@param actorZ number
---@return self
function Actor:xyz(actorX, actorY, actorZ) end
