---@meta

---@class RageFile
RageFile = {}

--- Returns `true` if the current position within the file is the end
--- (EOF = End of File).
---@return boolean
function RageFile:AtEOF() end

--- Clears the last error message.
function RageFile:ClearError() end

--- Closes the file and releases it from memory.
function RageFile:Close() end

--- Safely deletes the file handle.
function RageFile:destroy() end

--- Flushes the buffer for the file handle, writing any pending output to disk.
function RageFile:Flush() end

--- Gets the last error message and returns it.
---@return string
function RageFile:GetError() end

--- Gets a line and returns it.
---@return string
function RageFile:GetLine() end

--- Opens a file at sPath (relative to the StepMania root directory).
--- <br>
--- `iAccessType` can be set to read (1), write (2), stream (4) or flush to disk
--- on close (8).
--- <br>
--- These can also be combined with addition. For example, to set up read and
--- write, set `iAccessType` to 3 (1+2).
---@param sPath string
---@param iAccessType integer
---@return boolean
function RageFile:Open(sPath, iAccessType) end

--- Puts a new line in the file.
---@param s string
---@return integer
function RageFile:PutLine(s) end

--- Returns a string containing the entire contents of the file.
---@return string
function RageFile:Read() end

--- Returns `length` bytes from the RageFile's current position.
---@param length integer
---@return string
function RageFile:ReadBytes(length) end

--- Seeks to a position in the file and returns the new position.
---@param position integer
---@return integer
function RageFile:Seek(position) end

--- Returns the current position in the file.
---@return integer
function RageFile:Tell() end

--- Writes a file with the contents of str.
---@param str string
---@return integer
function RageFile:Write(str) end
