---@class BPMDisplay : Actor
---@field [string] fun(self: BPMDisplay)
---@overload fun(self: BPMDisplay) : BPMDisplay
--- Initial command. Call as soon as the screen begins construction.
---@field InitCommand? fun(self: BPMDisplay)
--- On command. Called after screen construction is done.
---@field OnCommand? fun(self: BPMDisplay)
---@field BeginCommand? fun(self: BPMDisplay)
---@operator call:BPMDisplay
---@diagnostic disable: redundant-parameter
BPMDisplay = {}

--- Returns the text that is currently set at the exact moment you call it. This is likely only going to be useful in an Update command.
function BPMDisplay:GetText() end

--- Sets the BPMDisplay from the specified Course.
---@param c Course
function BPMDisplay:SetFromCourse(c) end

--- Sets the BPMDisplay from the GameState.
function BPMDisplay:SetFromGameState() end

--- Sets the BPMDisplay from the specified Song.
---@param s SongObject
function BPMDisplay:SetFromSong(s) end

--- Sets the BPMDisplay from the specified Steps.
---@param s Steps
function BPMDisplay:SetFromSteps(s) end