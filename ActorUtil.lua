---@meta

---@class ActorUtil
ActorUtil = {}

--- Returns the `FileType` for the file at `sPath`.
---@param sPath string
---@return FileType
function ActorUtil.GetFileType(sPath) end

--- Returns `true` if `sClassName` is a registered Class.
---@param sClassName string
---@return boolean
function ActorUtil.IsRegisteredClass(sClassName) end

--- 
---@param a Actor
---@param sMetricsGroup string
function ActorUtil.LoadAllCommands(a, sMetricsGroup) end

--- Loads all commands and sets X and Y for the specified Actor.
---@param a Actor
function ActorUtil.LoadAllCommandsAndSetXY(a) end

--- 
---@param a Actor
---@param sMetricsGroup string
---@param sName string
function ActorUtil.LoadAllCommandsFromName(a, sMetricsGroup, sName) end

--- Used internally by LoadActor to resolve a path. If optional is `true`, then a
--- nil path is returned instead of emitting an error if no file is found.
---@param sPath string
---@param iLevel integer
---@param optional boolean
---@return string
function ActorUtil.ResolvePath(sPath, iLevel, optional) end
