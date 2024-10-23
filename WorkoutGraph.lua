---@meta
---@diagnostic disable: redundant-parameter

---@class WorkoutGraph : ActorFrame
---@overload fun(self: WorkoutGraph): self
---@field [string] fun(self: WorkoutGraph)
WorkoutGraph = {}

--- Sets the WorkoutGraph from the current Workout.
function WorkoutGraph:SetFromCurrentWorkout() end

--- Sets the WorkoutGraph from GameState and song index `iSongIndex`.
---@param iSongIndex integer
function WorkoutGraph:SetFromGameStateAndHighlightSong(iSongIndex) end
