---@meta

---@class Style
Style = {}

--- Returns the number of total tracks per player this Style contains
--- (e.g. 4 for dance-versus, but 8 for dance-double).
---@return integer
function Style:ColumnsPerPlayer() end

--- Returns the name of the Style.
---@return string
function Style:GetName() end

--- Returns the StepsType for this Style.
---@return StepsType
function Style:GetStepsType() end

--- Returns the StyleType for this Style.
---@return StyleType
function Style:GetStyleType() end

--- Returns a table containing the Track, XOffset, and Name of the column.
---@param pn PlayerNumber
---@param column integer
---@return table
function Style:GetColumnInfo(pn, column) end

--- Returns the draw order of the column.
---@param column integer
---@return integer
function Style:GetColumnDrawOrder(column) end

--- Returns the width of the notefield for the given player with this style.
---@param pn PlayerNumber
---@return number
function Style:GetWidth(pn) end

--- Returns `true` if this style locks the difficulty for both players.
---@return boolean
function Style:LockedDifficulty() end

--- Deprecated. Always returns `false`.
---@deprecated
---@return boolean
function Style:NeedsZoomOutWith2Players() end
