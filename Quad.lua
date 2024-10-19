---@meta

-- The quad doesn't do any special commands, so it inherits everything from
-- the Actor.

-- (Quad actually inherits from Sprite rather than Actor.)

---@class Quad : Sprite
---@field [string] fun(self: Quad)
---@overload fun(obj: Quad) : Quad
---@field InitCommand? fun(self: Quad)
---@field OnCommand? fun(self: Quad)
---@field BeginCommand? fun(self: Quad)
---@operator call:Quad
Quad = {}
