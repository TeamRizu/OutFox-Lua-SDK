---@meta

---@alias ActorCommand function

---@class NoteSkinManager
NOTESKIN = {}

--- Returns `true` if the `strName` noteskin exists in the current gametype.
---@param strName string
---@return boolean
function NOTESKIN:DoesNoteSkinExist(strName) end

--- Returns a string from the specified element and value.
---@param sElement string
---@param sValue string
---@return string
function NOTESKIN:GetMetric(sElement, sValue) end

--- Returns a string from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return string
function NOTESKIN:GetMetricForNoteSkin(sElement, sValue, sNoteSkin) end

--- Returns a command from the specified element and value.
---@param sElement string
---@param sValue string
---@return ActorCommand
function NOTESKIN:GetMetricA(sElement, sValue) end

--- Returns a command from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return ActorCommand
function NOTESKIN:GetMetricAForNoteSkin(sElement, sValue, sNoteSkin) end

--- Returns a bool from the specified element and value.
---@param sElement string
---@param sValue string
---@return boolean
function NOTESKIN:GetMetricB(sElement, sValue) end

--- Returns a bool from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return boolean
function NOTESKIN:GetMetricBForNoteSkin(sElement, sValue, sNoteSkin) end

--- Returns a float from the specified element and value.
---@param sElement string
---@param sValue string
---@return number
function NOTESKIN:GetMetricF(sElement, sValue) end

--- Returns a float from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return number
function NOTESKIN:GetMetricFForNoteSkin(sElement, sValue, sNoteSkin) end

--- Returns a integer from the specified element and value.
---@param sElement string
---@param sValue string
---@return integer
function NOTESKIN:GetMetricI(sElement, sValue) end

--- Returns a integer from the specified element and value using NoteSkin `sNoteSkin`.
---@param sElement string
---@param sValue string
---@param sNoteSkin string
---@return integer
function NOTESKIN:GetMetricIForNoteSkin(sElement, sValue, sNoteSkin) end

--- Returns a table of noteskin names for the current gametype.
---@return string[]
function NOTESKIN:GetNoteSkinNames() end

--- Returns the path for the specified `sButton` `sElement`.
---@param sButton string
---@param sElement string
---@return string
function NOTESKIN:GetPath(sButton, sElement) end

--- Returns the path for the specified `sButton` `sElement` using NoteSkin `sNoteSkin`.
---@param sButton string
---@param sElement string
---@param sNoteSkin string
---@return string
function NOTESKIN:GetPathForNoteSkin(sButton, sElement, sNoteSkin) end

--- Returns the actor for the specified `sButton` `sElement`.
---@param sButton string
---@param sElement string
---@param sColor string
---@param iEffect integer
---@return Actor
function NOTESKIN:LoadActor(sButton, sElement, sColor, iEffect) end

--- Returns the actor for the specified `sButton` `sElement` using NoteSkin `sNoteSkin`.
---@param sButton string
---@param sElement string
---@param sNoteSkin string
---@param sColor string
---@param iEffect integer
---@param player PlayerNumber
---@return Actor
function NOTESKIN:LoadActorForNoteSkin(sButton, sElement, sNoteSkin, sColor, iEffect, player) end
