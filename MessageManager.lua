---@meta

---@class MessageManager
MESSAGEMAN = {}

--- Broadcast the message to all listeners subscribed to `sMessage`.
--- The second argument is an optional table of parameters.
--- It may be omitted or explicitly set to `nil`.
---@param sMessage string
---@param paramTable? table
function MESSAGEMAN:Broadcast(sMessage, paramTable) end

--- Sets whether logging of messages is enabled.
--- If log is true, all messages that pass through Broadcast (from the engine for from the theme or from anywhere else),
--- will be logged with Trace.
---@param log boolean
function MESSAGEMAN:SetLogging(log) end