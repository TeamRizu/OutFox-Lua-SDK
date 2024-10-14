---@meta

--- ActorFrames can hold other actors.<br>
--- The Def. format is set up like any other lua table,
--- allowing for creating actors in batches. Because of this, there are multiple ways to build an ActorFrame.
---@class ActorFrame : Actor
---@overload fun(self: ActorFrame) : ActorFrame
---@field FOV? number The FOV for this ActorFrame. Default is 45.
---@field [string] fun(self: ActorFrame, params: table?)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: ActorFrame)
---@field BeginCommand? fun(self: ActorFrame)
---@diagnostic disable: redundant-parameter
---@diagnostic disable: param-type-mismatch
---@type (Actor|ActorFrame|BitmapText)
ActorFrame = {}

--- Adds a child to the ActorFrame from the specified path.
---@param sPath string
---@return boolean
function ActorFrame:AddChildFromPath(sPath) end

--- Adds a collection of actors from `actors` to the ActorFrame.
--- Just like regular ActorFrames or Actors, it must return some kind of table.
---@param actors table
---@return boolean
function ActorFrame:AddChild(actors) end

--- Sets how far back in z-space an ActorFrame's contents can be visible.<br>
--- If FOV is zero, this also sets the positive z-space limit as well.
---@param fFarDistZ number
---@return self
function ActorFrame:fardistz(fFarDistZ) end

--- Sets the field of view for the ActorFrame.
---@param fFov number
---@return self
function ActorFrame:fov(fFov) end

--- Returns the child with a name of `sName`.<br>
--- If there are multiple children with that name, returns an array of those children.<br>
--- The table also acts as a pass through layer, function calls pass through to the last child of that name.
---@param sName string
---@return self
function ActorFrame:GetChild(sName) end

--- Returns the child at the index iIndex.
---@param iIndex integer
---@return self, Actor
function ActorFrame:GetChildAt(iIndex) end

--- Returns a table of all the children in the ActorFrame.<br>
--- The table is indexed by the names of the children.<br>
--- If there are multiple children with the same name, the entry for that name is an array of those children.<br>
--- The table also acts as a pass through layer, function calls pass through to the last child of that name.
---@return {[string]: self|Actor|BitmapText}
function ActorFrame:GetChildren() end

--- Gets the ActorFrame's Draw function.
---@return function
function ActorFrame:GetDrawFunction() end

--- Returns the ActorFrame's current FOV.
---@return number
function ActorFrame:GetFOV() end

--- Returns the number of children in the ActorFrame.
---@return integer
function ActorFrame:GetNumChildren() end

--- Gets the update function's rate.
---@return number
function ActorFrame:GetUpdateRate() end

--- Plays the `sCommandName` command on the ActorFrame's children.
---@param sCommandName string
---@return self
function ActorFrame:playcommandonchildren(sCommandName) end

--- Plays the `sCommandName` command on the ActorFrame's leaves.
---@param sCommandName string
---@return self
function ActorFrame:playcommandonleaves(sCommandName) end

--- Sets if the Actorframe should propagate commands to its children.
---@param bPropagate boolean
---@return self
function ActorFrame:propagate(bPropagate) end

--- [02 Actor.lua] Propagates a command to the ActorFrame's children
---@param cmd function
---@return self
function ActorFrame:propagatecommand(cmd) end

--- Removes all the children from the ActorFrame.
---@return self
function ActorFrame:RemoveAllChildren() end

--- Removes the specified child from the ActorFrame.
---@param sChild string
---@return self
function ActorFrame:RemoveChild(sChild) end

--- Runs the commands in `cmds` on the ActorFrame's children.
---@param cmds function
---@return self
function ActorFrame:RunCommandsOnChildren(cmds) end

--- Runs the commands in `cmds` on the ActorFrame's leaves.
---@param cmds function
---@return self
function ActorFrame:runcommandsonleaves(cmds) end

--- Sets the ActorFrame's ambient light color to `c`.
---@param c RageColor
---@return self
function ActorFrame:SetAmbientLightColor(c) end

--- Sets the ActorFrame's diffuse light color to `c`.
---@param c RageColor
---@return self
function ActorFrame:SetDiffuseLightColor(c) end

--- Sets if the ActorFrame should draw by Z position.
---@param b boolean
---@return self
function ActorFrame:SetDrawByZPosition(b) end

--- Sets the ActorFrame's Draw function to the specified Lua function.
---@param DrawFunction function
---@return self
function ActorFrame:SetDrawFunction(DrawFunction) end

--- Sets the field of view for the ActorFrame.
---@param fFOV number
---@return self
function ActorFrame:SetFOV(fFOV) end

---@param position table
---@deprecated
---@return self
function ActorFrame:SetLightDirection(position) end

--- Sets the ActorFrame's specular light color to `c`.
---@param c RageColor
---@return self
function ActorFrame:SetSpecularLightColor(c) end

--- Sets the ActorFrame's update function to the specified Lua function.
---@param UpdateFunction function
---@return self
function ActorFrame:SetUpdateFunction(UpdateFunction) end

--- Sets the update function's rate to fRate.
---@param fRate number
---@return self
function ActorFrame:SetUpdateRate(fRate) end

--- Tells the ActorFrame to sort by draw order.
---@return self
function ActorFrame:SortByDrawOrder() end

--- Sets the vanishing point for the ActorFrame.
---@param fX number
---@param fY number
---@return self
function ActorFrame:vanishpoint(fX, fY) end

--- Sets the vanishing point's x position for the ActorFrame.
---@param fX number
---@return self
function ActorFrame:vanishpointx(fX) end

--- Sets the vanishing point's y position for the ActorFrame.
---@param fY number
---@return self
function ActorFrame:vanishpointy(fY) end

--- Runs the commands set in `actor` to every children in the ActorFrame.
---@param actor fun(self: Actor)
---@return self
function ActorFrame:RunCommandsRecursively(actor) end
