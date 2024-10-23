---@meta

---@class RageFileManager
FILEMAN = {}

--- Returns `true` if a file exists at `sPath`.
---@param sPath string
---@return boolean
function FILEMAN:DoesFileExist(sPath) end

--- Returns a listing of files from `sPath`. The last two arguments are
--- optional (and default to `false`).
---@param sPath string
---@param bOnlyDirs boolean
---@param bReturnPathToo boolean
---@return string[]
function FILEMAN:GetDirListing(sPath, bOnlyDirs, bReturnPathToo) end

--- Returns a file's size in bytes.
---@param sPath string
---@return integer
function FILEMAN:GetFileSizeBytes(sPath) end

--- Returns the hash of the file at `sPath`.
---@param sPath string
---@return integer
function FILEMAN:GetHashForFile(sPath) end
