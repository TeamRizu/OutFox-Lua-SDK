---@meta

---@class Style
Style = {}

---@return integer
function Style:ColumnsPerPlayer() end
---@return string
function Style:GetName() end
---@return StepsType
function Style:GetStepsType() end
---@return StyleType
function Style:GetStyleType() end
---@return table
function Style:GetColumnInfo() end
---@return integer
function Style:GetColumnDrawOrder() end
---@return number
function Style:GetWidth() end
---@return boolean
function Style:LockedDifficulty() end
---@deprecated
---@return boolean
function Style:NeedsZoomOutWith2Players() end
