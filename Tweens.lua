---@meta

---@class Tweens
--- This namespace contains every function available to actors plus some extra four-point functions (prefixed with `ease`),
--- allowing for help with visualizing and using tweens outside of actors.<br>
--- <br>
--- The four-point functions have these parameters:
--- - t = point in time (in seconds)<br />
--- - b = starting value<br />
--- - c = ending value<br />
--- - d = duration of the animation (in seconds)<br />
Tweens = {}

---@return number
function Tweens.linear(t) end
---@return number
function Tweens.step(t) end
---@return number
function Tweens.smoothstep(t) end
---@return number
function Tweens.inquad(t) end
---@return number
function Tweens.outquad(t) end
---@return number
function Tweens.inoutquad(t) end
---@return number
function Tweens.outinquad(t) end
---@return number
function Tweens.incubic(t) end
---@return number
function Tweens.outcubic(t) end
---@return number
function Tweens.inoutcubic(t) end
---@return number
function Tweens.outincubic(t) end
---@return number
function Tweens.inquart(t) end
---@return number
function Tweens.outquart(t) end
---@return number
function Tweens.inoutquart(t) end
---@return number
function Tweens.outinquart(t) end
---@return number
function Tweens.inquint(t) end
---@return number
function Tweens.outquint(t) end
---@return number
function Tweens.inoutquint(t) end
---@return number
function Tweens.outinquint(t) end
---@return number
function Tweens.insine(t) end
---@return number
function Tweens.outsine(t) end
---@return number
function Tweens.inoutsine(t) end
---@return number
function Tweens.outinsine(t) end
---@return number
function Tweens.inexpo(t) end
---@return number
function Tweens.outexpo(t) end
---@return number
function Tweens.inoutexpo(t) end
---@return number
function Tweens.outinexpo(t) end
---@return number
function Tweens.incircle(t) end
---@return number
function Tweens.outcircle(t) end
---@return number
function Tweens.inoutcircle(t) end
---@return number
function Tweens.outincircle(t) end
---@return number
function Tweens.inelastic(t) end
---@return number
function Tweens.outelastic(t) end
---@return number
function Tweens.inoutelastic(t) end
---@return number
function Tweens.outinelastic(t) end
---@return number
function Tweens.inelasticex(t) end
---@return number
function Tweens.outelasticex(t) end
---@return number
function Tweens.inoutelasticex(t) end
---@return number
function Tweens.outinelasticex(t) end
---@return number
function Tweens.inback(t) end
---@return number
function Tweens.outback(t) end
---@return number
function Tweens.inoutback(t) end
---@return number
function Tweens.outinback(t) end
---@return number
function Tweens.inbackex(t) end
---@return number
function Tweens.outbackex(t) end
---@return number
function Tweens.inoutbackex(t) end
---@return number
function Tweens.outinbackex(t) end
---@return number
function Tweens.inbounce(t) end
---@return number
function Tweens.outbounce(t) end
---@return number
function Tweens.inoutbounce(t) end
---@return number
function Tweens.outinbounce(t) end
---@return number
function Tweens.spring(t) end
---@return number
function Tweens.smooth(t) end
---@return number
function Tweens.bouncebegin(t) end
---@return number
function Tweens.bounceend(t) end
--- The replacement for 1D beziers used in older versions of SM5.
--- - a = Control Point P0
--- - b = Control Point P1
--- - c = Control Point P2
--- - d = Control Point P3
---@param t number
---@param a number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.beziercubic(t,a,b,c,d) end
------ The replacement for 2D bezier curves used in older versions of SM5.
---@param t number
---@param C1X number
---@param C1Y number
---@param C2X number
---@param C2Y number
---@param C3X number
---@param C3Y number
---@param C4X number
---@param C4Y number
---@return number
function Tweens.bezieryfromx(t, C1X, C1Y, C2X, C2Y, C3X, C3Y, C4X, C4Y) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeLinear(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInQuad(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutQuad(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutQuad(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInCubic(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutCubic(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutCubic(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInQuart(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutQuart(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutQuart(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInQuint(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutQuint(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutQuint(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInSine(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutSine(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutSine(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInExpo(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutExpo(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutExpo(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInCircle(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutCircle(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutCircle(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInElastic(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutElastic(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutElastic(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInBack(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeOutBack(t,b,c,d) end
---@param t number
---@param b number
---@param c number
---@param d number
---@return number
function Tweens.easeInOutBack(t,b,c,d) end
--- A version of <Link class="Tweens" function="easeInElastic">easeInElastic</Link> that takes extra parameters:<br />
--- - a = amplitude (easeInElastic uses `c`)
--- - p = period (easeInElastic uses `d * 0.3`)
--- 
--- 
---@param t number
---@param b number
---@param c number
---@param d number
---@param a number
---@param p number
---@see Tweens.easeInElastic if you need these extra parameters.
---@return number
function Tweens.easeInElasticEx(t,b,c,d,a,p) end
--- A version of <Link class="Tweens" function="easeOutElastic">easeOutElastic</Link> that takes extra parameters:<br />
--- - a = amplitude (easeOutElastic uses `c`)
--- - p = period (easeOutElastic uses `d * 0.3`)
---
---
---@param t number
---@param b number
---@param c number
---@param d number
---@param a number
---@param p number
---@see Tweens.easeOutElastic if you need these extra parameters.
---@return number
function Tweens.easeOutElasticEx(t,b,c,d,a,p) end
--- A version of <Link class="Tweens" function="easeInOutElastic">easeInOutElastic</Link> that takes extra parameters:<br>
--- - a = amplitude (easeInOutElastic uses `c`)
--- - p = period (easeInOutElastic uses `d * 0.3`)
---
---
---@param t number
---@param b number
---@param c number
---@param d number
---@param a number
---@param p number
---@see Tweens.easeInOutElastic if you need these extra parameters.
---@return number
function Tweens.easeInOutElasticEx(t,b,c,d,a,p) end
---@return number
function Tweens.easeInBackEx(t,b,c,d,s) end
---@return number
function Tweens.easeOutBackEx(t,b,c,d,s) end
---@return number
function Tweens.easeInOutBackEx(t,b,c,d,s) end
---@return number
function Tweens.easeInBounce(t,b,c,d) end
---@return number
function Tweens.easeOutBounce(t,b,c,d) end
---@return number
function Tweens.easeInOutBounce(t,b,c,d) end

---@param t number
function Tweens.Decelerate(t) end