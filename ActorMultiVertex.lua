---@meta

---@class AMVDrawState
---@field Mode? DrawMode
---@field First? integer
---@field Num? integer

---@class ActorMultiVertex : Actor
---@field [string] fun(self: ActorMultiVertex)
---@overload fun(self: ActorMultiVertex) : ActorMultiVertex
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: ActorMultiVertex)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: ActorMultiVertex)
---@field BeginCommand? fun(self: ActorMultiVertex)
---@operator call:ActorMultiVertex
---@diagnostic disable: redundant-parameter
ActorMultiVertex = {}

--- The list of quad states is used to determine which animation state is used for each quad.  The offset is added to the AMV's current state, and the resulting state is used.
---@param offset integer
---@return self
function ActorMultiVertex:AddQuadState(offset) end

--- Adds an animation state to the ActorMultiVertex.  The state_data table must be like this:
--- ```lua
--- {{left, top, right, bottom}, delay}
--- ```
--- left, top, right, and bottom are pixel coordinates, starting at 0.  If delay is 0 or negative, the state will last forever.
---@param state_data table
---@return self
function ActorMultiVertex:AddState(state_data) end

--- Forces the AMV to update the texture coordinates on all its quads, even if the current state has not changed.
---@return self
function ActorMultiVertex:ForceStateUpdate() end

--- Returns whether the AMV uses the animation state.
---@return boolean
function ActorMultiVertex:GetUseAnimationState() end

--- Sets whether the AMV uses the animation state.
--- 
--- This works best when using DrawMode_Quads.
--- 
--- AMV's can have animated textures like sprites.  Each state tells the AMV what part of the texture to use, and how long the state lasts.
--- Use AddState to add a state onto the end, or SetStateProperties to set all the states at once, or SetState to set a single state.
--- 
--- Each quad has its own offset that is added to the current state.
--- 
--- Use AddQuadState to add to the list of quad states, or SetQuadState to set an existing quad state.
---@param use boolean
---@return self
function ActorMultiVertex:SetUseAnimationState(use) end

--- Returns the number of states the AMV has.
---@return integer
function ActorMultiVertex:GetNumStates() end

--- Returns the number of quad states in the destination tween state for the AMV.
---@return integer
function ActorMultiVertex:GetNumQuadStates() end

--- Returns the id of the current state.
---@return integer
function ActorMultiVertex:GetState() end

--- Gets whether the AMV should call the decode function for its texture during updates.
---@return boolean
function ActorMultiVertex:GetDecodeMovie() end

--- Sets whether the AMV should call the decode function for its texture during updates.
---@param decode boolean
---@return self
function ActorMultiVertex:SetDecodeMovie(decode) end

--- Sets the current state.
---@param id integer
---@return self
function ActorMultiVertex:SetState(id) end

--- Returns the offset of the requested quad state.
---@param id integer
---@return integer
function ActorMultiVertex:GetQuadState(id) end

--- Sets the offset of the requested quad state.
---@param id integer
---@param offset integer
---@return self
function ActorMultiVertex:SetQuadState(id,offset) end

--- Returns a table containing the data for the requested state.
---@param id integer
---@return table
function ActorMultiVertex:GetStateData(id) end

--- Sets the requested state to the data in state_data.  Similar to AddState, but SetStateData only works on states that have already been added.
---@param id integer
---@param state_data table
function ActorMultiVertex:SetStateData(id,state_data) end

--- Each element of the table must be a state_data table, and is used to construct one state.  The table as a whole is the entire list of all states for the AMV.
---@param state_data_table table[]
function ActorMultiVertex:SetStateProperties(state_data_table) end

--- Removes the requested state from the state list.
---@param id integer
---@return self
function ActorMultiVertex:RemoveState(id) end

--- Removes the requested quad state from the quad state list.
---@param id integer
---@return self
function ActorMultiVertex:RemoveQuadState(id) end

--- Sets the delay for every state to delay.
---@param delay number
---@return self
function ActorMultiVertex:SetAllStateDelays(delay) end

--- Sets how far into its animation the AMV is.
---@param seconds number
---@return self
function ActorMultiVertex:SetSecondsIntoAnimation(seconds) end

--- Sets vertex number `index` with the properties provided. The tables of properties are each optional and can be provided in any order.
---@param index integer
---@param vertexData table
function ActorMultiVertex:SetVertex(index, vertexData) end

--- Sets multiple vertices at once. The elements of `vertices` should themselves be tables, of the form provided to <Link class='ActorMultiVertex' function='SetVertex'>SetVertex</Link>.
--- If `vertices` is the first argument it will start from vertex 1. If an integer is provided before `vertices` it will start from that vertex. It will add vertices as necessary.
---
--- ## Example
--- ```lua
--- self:SetVertices( {
---     { { x1, y1, z1 } , { r1,g1,b1,a1 } , { tcx1,tcy1 } },
---     { { x2, y2, z2 } , { r2,g2,b2,a2 } , { tcx2,tcy2 } }
--- } )
--- ```
---@param first integer
---@param vertices table
---@return self
function ActorMultiVertex:SetVertices(first, vertices) end

--- Sets all the drawn verts of the ActorMultiVertex by evaluating the splines.
--- 
--- ("all the drawn verts" means all the verts between FirstToDraw and NumToDraw, the verts that are set to draw in the current tween state.)
--- 
--- The parts of the ActorMultiVertex are evenly spaced along the spline in terms of t value.
--- 
--- The exact behavior depends on the draw mode.
--- - `DrawMode_Quads` uses all 4 splines, one for each corner.
--- - `DrawMode_QuadStrip` and DrawMode_Strip use 2 splines, one for each edge of the strip.
--- - `DrawMode_Fan` uses one spline, for the edge verts of the fan.  The first vert is not touched because it is the center.
--- - `DrawMode_Triangles` uses 3 splines, one for each corner.
--- - `DrawMode_SymmetricQuadStrip` uses 3 splines, one on each edge and one in the center.
--- - `DrawMode_LineStrip` uses 1 spline.
---@return self
function ActorMultiVertex:SetVertsFromSplines() end

--- Returns the requested spline.  Spline indices range from 1 to 4.
--- 
--- ActorMultiVertex splines are not inside the tween state,
--- and will not change the verts until you call SetVertsFromSplines.
---@param i integer
---@return CubicSplineN
function ActorMultiVertex:GetSpline(i) end

--- Sets the number of vertices.
---@param num integer
---@return self
function ActorMultiVertex:SetNumVertices(num) end

--- Returns the number of vertices.
---@return integer
function ActorMultiVertex:GetNumVertices() end

--- Sets the draw state variables to the values in the table.
--- 
--- Mode must be a `DrawMode`.
--- 
--- First is the index of the first vertex to draw.
--- 
--- Num is the number of vertices to draw.  -1 for Num means draw all verts after First.
--- 
--- Any value not in the table defaults to the already set value.
--- 
--- ## Examples
--- ```lua
--- -- Sets all three parts of the draw state.
--- self:SetDrawState{Mode="DrawMode_Quads", First= 1, Num= -1}
--- -- Set only the draw mode.  First and Num remain unchanged from previous.
--- self:SetDrawState{Mode="DrawMode_Quads"}
--- -- Set the first and number to draw.  Draw mode remains unchanged.
--- self:SetDrawState{First= 3, Num= 4}
--- ```
---@param state AMVDrawState
---@return self
function ActorMultiVertex:SetDrawState(state) end

--- Get the `DrawMode` of the destination tween state.
---@return DrawMode
function ActorMultiVertex:GetDestDrawMode() end

--- Get the FirstToDraw of the destination tween state.
---@return integer
function ActorMultiVertex:GetDestFirstToDraw() end

--- Get the NumToDraw of the destination tween state.
---@return integer
function ActorMultiVertex:GetDestNumToDraw() end

--- Get the `DrawMode` of the current tween state.
---@return DrawMode
function ActorMultiVertex:GetCurrDrawMode() end

--- Get the FirstToDraw of the current tween state.
---@return integer
function ActorMultiVertex:GetCurrFirstToDraw() end

--- Get the NumToDraw of the current tween state.
---@return integer
function ActorMultiVertex:GetCurrNumToDraw() end

--- Returns the ActorMultiVertex's texture.
---@return RageTexture
function ActorMultiVertex:GetTexture() end

--- Sets the `EffectMode` of the ActorMultiVertex.
---@param em EffectMode
---@return self
function ActorMultiVertex:SetEffectMode(em) end

--- Sets the `TextureMode` of the ActorMultiVertex.
---@param tm TextureMode
---@return self
function ActorMultiVertex:SetTextureMode(tm) end

--- Sets the width of the line for `DrawMode_LineStrip`.
--- 
--- Note: This function is GPU dependant, so the width of the line can vary between 4 to 12px.
---@param width number
---@return self
function ActorMultiVertex:SetLineWidth(width) end

--- Size in PIXELS of the point to draw. This will often round to a whole number on older systems,
--- but most cards will use subpixel sampling to keep these as designed. For better performance, use a whole number, so 6.0.
--- 
--- Note: This function is GPU dependant, so the size of the point can vary between 12 to 512px.
--- 
--- **Only used in `DrawMode_Points`.**
---@param width number
---@return self
function ActorMultiVertex:SetPointSize(width) end

--- Alias the Points to be a circle (true) or square (false).
--- if the size is too big, or it is not supported on the GPU's driver, it will be drawn as a square.
--- 
--- **Only used in `DrawMode_Points`.**
---@param state boolean
function ActorMultiVertex:SetPointState(state) end

--- Sets the `DrawMode` to be used by the ActorMultiVertex that uses `DrawMode_LineStrip`.
---@param mode DrawMode
---@return self
function ActorMultiVertex:SetDrawMode(mode) end

--- Sets the texture to `texture`.
---@param texture RageTexture
---@return self
function ActorMultiVertex:SetTexture(texture) end

--- Sets the texture at from the file path `path`.
---@param path string
---@return self
function ActorMultiVertex:LoadTexture(path) end
