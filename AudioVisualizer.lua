---@meta

---@class AudioVisualizer : Actor
---@field [string] fun(self: AudioVisualizer)
---@diagnostic disable: redundant-parameter
AudioVisualizer = {}

--- Returns the quads used for the visualizer. This can be used to
--- decorate such items.
---@return Quad[]
function AudioVisualizer:GetQuads() end

--- Sets the sound for the visualizer.
---@param sound RageSound
---@return self
function AudioVisualizer:SetSound(sound) end
