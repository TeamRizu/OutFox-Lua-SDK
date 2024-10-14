---@meta HelpDisplay

---@class SetHelpTextParams
---@field Text string

---@class HelpDisplay : Actor
---@field Font? string Path to the font map to use.
---@field File? string Compatibility argument for Font.
---@field Text? string Text to generate upon creation.
---@field Name? string The name for the actor.
---@field [string] fun(self: HelpDisplay)
---@overload fun(self: HelpDisplay) : HelpDisplay
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: HelpDisplay)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: HelpDisplay)
---@field BeginCommand? fun(self: HelpDisplay)
---@field SetHelpTextCommand? fun(self: HelpDisplay, params: SetHelpTextParams)
---@operator call:HelpDisplay
---@diagnostic disable: redundant-parameter
HelpDisplay = {}

--- Returns two tables representing the tips and alternate tips in the HelpDisplay.
---@return string[]
---@return string[]
function HelpDisplay:gettips() end

--- [02 Actor.lua] Sets the tips from a Song or Course.
---@return self
function HelpDisplay:setfromsongorcourse() end

--- Sets the seconds between switches of tips to `fSeconds`.
---@param fSeconds number
---@return self
function HelpDisplay:SetSecsBetweenSwitches(fSeconds) end

--- Sets the HelpDisplay's tips using `tips` (and optionally `altTips`).
---@param tips string[]
---@param altTips string[]
---@return self
function HelpDisplay:settips(tips, altTips) end

--- Sets the HelpDisplay's text from `sTips` using two colons to separate new sections.
---@param sTips string
---@return self
function HelpDisplay:SetTipsColonSeparated(sTips) end
