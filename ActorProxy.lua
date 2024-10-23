---@meta

---@class ActorProxy : Actor
---@overload fun(self: ActorProxy) : ActorProxy
---@operator call:ActorProxy
---@field [string] fun(self: ActorProxy, ...)
ActorProxy = {}

--- Returns the target of the ActorProxy.
---@return Actor
function ActorProxy:GetTarget() end

--- Sets the ActorProxy target to `a`.
---@param a Actor
---@return self
function ActorProxy:SetTarget(a) end
