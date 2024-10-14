---@meta

---@class CharacterStageManager
CHARSTAGEMAN = {}

--- Returns the stage by name `sStageName`.
--- @param sStageName string
---@return CharacterStage
function CHARSTAGEMAN:GetStage(sStageName) end

--- Returns a random stage.
---@return CharacterStage
function CHARSTAGEMAN:GetRandomStage() end

--- Returns an array with all stages.
---@param bIncludeDefault boolean
---@return CharacterStage[]
function CHARSTAGEMAN:GetAllStages(bIncludeDefault) end

--- Returns the number of available stages to use.
---@param bIncludeDefault boolean
---@return integer
function CHARSTAGEMAN:GetStageCount(bIncludeDefault) end