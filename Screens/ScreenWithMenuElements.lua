---@meta

--- Note: Given the current implementation of LuaLS, and not being possible to get a return
--- type to be itself, but instead going back to the class that defined the function,
--- these screens will be merged to the same Screen class, but will have annotations to define
--- which screens are assigned for these.

--@see https://outfox.wiki/dev/screens/ScreenWithMenuElements
--@class ScreenWithMenuElements : Screen
--@diagnostic disable: param-type-mismatch
-- ScreenWithMenuElements = {}

--- Tells the screen to go to the previous screen.
---@return self
function Screen:Cancel() end

--- Retruns `true` if the screen is currently transitioning.
---@return boolean
function Screen:IsTransitioning() end

--- Sets whether the screens allows late joining. This only works for screens that are just
--- `Screen`e as most derived screens have their own hardcoded function for whether
--- late joining is allowed.
---@param state boolean
---@return self
function Screen:SetAllowLateJoin(state) end

--- Tells the screen to go to play its Out transitioning, and then posts the
--- ScreenMessage `sScreenMsg`. To go to the next screen, use "SM_GoToNextScreen" as the argument.
---@param message string
---@return self
function Screen:StartTransitioningScreen(message) end
