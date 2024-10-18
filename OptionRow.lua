---@meta

---@class OptionRow : ActorFrame
OptionRow = {}

--- 
---@return boolean
function OptionRow:FirstItemGoesDown() end

--- 
---@param pn PlayerNumber
---@return integer
function OptionRow:GetChoiceInRowWithFocus(pn) end

--- 
---@return LayoutType
function OptionRow:GetLayoutType() end

--- 
---@return string
function OptionRow:GetName() end

--- 
---@return integer
function OptionRow:GetNumChoices() end

--- 
---@return string
function OptionRow:GetRowTitle() end

--- 
---@return SelectType
function OptionRow:GetSelectType() end

--- 
---@param pn PlayerNumber
---@return boolean
function OptionRow:HasFocus(pn) end

--- 
---@return boolean
function OptionRow:OneChoiceForAllPlayers() end

--- 
---@param pn PlayerNumber
---@param iChoice integer
function OptionRow:SetChoiceInRowWithFocus(pn, iChoice) end
