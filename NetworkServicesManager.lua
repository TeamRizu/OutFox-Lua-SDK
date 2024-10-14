---@meta 
--- Responses from the functions are returned via a MessageCommand of the same name.
---@class NetworkServicesManager
NETMAN = {}

--- Returns `true` if the client has connected to the specified server.
---@return boolean
function NETMAN:IsConnectionEstablished() end

--- Requests a login from the machine for authentication with the server.
---@return boolean
function NETMAN:MachineLogin() end

--- Requests a login for the user `pn` with its generated `ProfileGuid`.
---@param pn PlayerNumber
---@return boolean
function NETMAN:ClientLogin(pn) end

--- Requests a score `scoreID` to be fetched from the server.
---@param scoreID integer
---@param timing string
---@return boolean
function NETMAN:ScoreLoad(scoreID, timing) end

--- Sends the information about the score achieved by `pn` to the server
--- to be saved. Some rules apply that can mark this score as disqualified.
--- 
--- If the process fails, the second variable returned provides the reason.
--- @param pn PlayerNumber
--- @return boolean # success
--- @return string # fail reason
function NETMAN:ScoreSave(pn) end

--- Sends the current player `pn`'s settings to the server to be stored.
function NETMAN:ProfileSave(pn) end

--- Loads the online information of the registered profile from `pn` which can be used
--- to load settings stored on the server.
---@param pn PlayerNumber
---@return boolean
function NETMAN:ProfileLoad(pn) end

--- Requests a fetch of highscores from a selection of charts that are identified via chart keys.
--- The table to send must not be name indexed.
--- 
---@see Steps.GetChartKey # to find the chart key for the specific charts.
--- @param ChartKeys any
--- @param TimingName any
--- @param fRate any
function NETMAN:HighScoresFromChartList(ChartKeys, TimingName, fRate) end
function NETMAN:HighScoresFromUser() end

--- Request a score of all scores achieved for the chart `ChartKey`.
--- Returns nil if none are found, or the requested is timed out.
--- 
--- You can find the chart key for a chart using Steps:GetChartKey()
--- 
--- The PlayerNumber argument is optional, and should be used if requests are being made per-player and needs a way
--- to determine back which one belongs to.
---@param ChartKey string
---@param TimingName string
---@param fRate number
---@param pn PlayerNumber
---@return table
function NETMAN:HighScoresForChart(ChartKey, TimingName, fRate, pn) end

--- Disconnects the machine from the server. Once this is called,
---@see NetworkServicesManager.MachineLogin # to connect again.
function NETMAN:Disconnect() end