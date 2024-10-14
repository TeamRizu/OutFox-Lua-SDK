---@meta

---@class Model : Actor
---@field Meshes string Path to the model mesh
---@field Material string Path to the model's material. Can be the in the same file as the mesh.
---@field Bones string Path to the model's bones. Can be the in the same file as the mesh.
---@field [string] fun(self: Model)
---@overload fun(self: Model) : Model
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: Model)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: Model)
---@field BeginCommand? fun(self: Model)
---@operator call:Model
---@diagnostic disable: redundant-parameter
Model = {}

--- Returns the model's default animation.
---@return string
function Model:GetDefaultAnimation() end

--- Controls if the model should loop or not.
---@param bLoop boolean
---@return self
function Model:loop(bLoop) end

--- Plays animation <code>sAniName</code> at <code>fPlayRate</code> speed (default 1.0).
---@param sAniName string
---@param fPlayRate number
---@return self
function Model:playanimation(sAniName, fPlayRate) end

--- Sets how far into the animation the model is.
---@param fSeconds number
---@return self
function Model:position(fSeconds) end

--- Sets the current animation's playback rate to <code>fRate</code>.
---@param fRate number
---@return self
function Model:rate(fRate) end

--- Sets the model's default animation to <code>sAnimation</code> at <code>fPlayRate</code> speed (default 1.0).
---@param sAnimation string
---@param fPlayRate number
---@return self
function Model:SetDefaultAnimation(sAnimation, fPlayRate) end

--- Returns the number of states the Model has.
---@return integer
function Model:GetNumStates() end

--- Controls if the model uses cel-shading or not.
---@param bCelShade boolean
---@return self
function Model:CelShading(bCelShade) end

--- Loads a new animation for the current model (if available).
--- 
---@see Model.playanimation # to call the new animation.
---@param name string
---@param sPath string
function Model:LoadBones(name, sPath) end

--- Returns the current frame on the model's current animation.
---@return integer
function Model:GetPosition() end

--- Returns the total ammount of frames on the model's current animation.
---@return integer
function Model:GetTotalFrames() end

--- Sets the EffectMode the model uses.
---@param em EffectMode
function Model:SetEffectMode(em) end

--- Set the positions of vertices in a mesh.
---@param iMesh integer
---@param meshPos table
function Model:UpdateMeshPosition(iMesh, meshPos) end

--- Sets the update rate for the model's materials. This is separate from an animation's rate.
---@param fRate number
function Model:MaterialRate(fRate) end