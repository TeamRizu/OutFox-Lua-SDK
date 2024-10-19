---@meta

---@class MemoryCardManager
MEMCARDMAN = {}

--- Return the state for player `pn`.
---@param pn PlayerNumber
---@return MemoryCardState
function MEMCARDMAN:GetCardState(pn) end

--- Returns the name of the storage device.
---@param pn PlayerNumber
---@return string
function MEMCARDMAN:GetName(pn) end
