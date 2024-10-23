---@meta
---@diagnostic disable: redundant-parameter

---@class DifficultyIcon : Sprite
---@overload fun(self: DifficultyIcon): self
---@field [string] fun(self: DifficultyIcon)
DifficultyIcon = {}

--- Sets the DifficultyIcon's state from the difficulty passed in.
---@param dc Difficulty
function DifficultyIcon:SetFromDifficulty(dc) end

--- Sets the DifficultyIcon's Player to `pn`, then sets the DifficultyIcon's state
--- from the difficulty of Steps `pSteps`.
---@param pSteps Steps
function DifficultyIcon:SetFromSteps(pSteps) end

--- Sets the DifficultyIcon's Player to `PLAYER_1`, then sets the DifficultyIcon's
--- state from the difficulty of Trail `pTrail`.
---@param pTrail Trail
function DifficultyIcon:SetFromTrail(pTrail) end

--- Sets the DifficultyIcon's Player to `pn`.
---@param pn PlayerNumber
function DifficultyIcon:SetPlayer(pn) end

--- Blanks the DifficultyIcon.
function DifficultyIcon:Unset() end
