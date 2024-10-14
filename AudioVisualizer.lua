---@meta

---@class AudioVisualizer
AudioVisualizer = {}

--- Returns the quads used for the visualizer. This can be used to
--- decorate such items.
---@return Quad[]
function AudioVisualizer:GetQuads() end

--- Sets the sound for the visualizer.
---@param sound RageSound
---@return self
function AudioVisualizer:SetSound(sound) end
