---@meta

---@class ScreenManager
SCREENMAN = {}

--- Adds a screen at the top of the screen stack. (`sMessage` is an optional ScreenMessage posted once the new screen is finished.)
---@param sScreenName string
---@param sMessage? string
function SCREENMAN:AddNewScreenToTop(sScreenName, sMessage) end

--- Gets the screen at the top of the screen stack.
---@return Screen
function SCREENMAN:GetTopScreen() end

--- Returns whether the input for the player has been redirected away from the normal screen input function.  Input that has been redirected is only sent to lua input callbacks.
---@param pn PlayerNumber
---@return boolean
function SCREENMAN:get_input_redirected(pn) end

--- Plays the invalid sound.
function SCREENMAN:PlayInvalidSound() end

--- Plays the start sound.
function SCREENMAN:PlayStartSound() end

--- Plays the coin sound.
function SCREENMAN:PlayCoinSound() end

--- Plays the cancel sound.
function SCREENMAN:PlayCancelSound() end

--- Plays the screenshot sound.
function SCREENMAN:PlayScreenshotSound() end

--- Reloads any loaded overlay screens.
function SCREENMAN:ReloadOverlayScreens() end

--- Returns `true` if screen class `s` exists.
---@param s string
---@return boolean
function SCREENMAN:ScreenClassExists(s) end

--- Returns `true` if screen `s` is prepared.
---@param s string
---@return boolean
function SCREENMAN:ScreenIsPrepped(s) end

--- Sets the next screen to `s`.
---@param s string
function SCREENMAN:SetNewScreen(s) end

--- Sets whether the input for the player has been redirected away from the normal screen input function.  Input that has been redirected is only sent to lua input callbacks.<br />
--- This can be useful when putting a custom menu on a screen, and you want to disable the built in actors while the menu is open.  Then you handle input through an input callback until the player closes the menu.
---@param pn PlayerNumber
---@param redir boolean
function SCREENMAN:set_input_redirected(pn, redir) end

--- Broadcasts a system message.
---@param s string
function SCREENMAN:SystemMessage(s) end
