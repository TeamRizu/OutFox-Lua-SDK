---@meta

---@class CryptManager
CRYPTMAN = {}

--- Generates a random UUID (version 4).
---@return string
function CRYPTMAN:GenerateRandomUUID() end

--- Returns the MD5 hash for the file at `sPath`.
---@return string
function CRYPTMAN:MD5File(sPath) end

--- Returns the MD5 hash for `s`.
---@return string
function CRYPTMAN:MD5String(s) end

--- Returns the SHA-1 hash for the file at `sPath`.
---@return string
function CRYPTMAN:SHA1File(sPath) end

--- Returns the SHA-1 hash for `s`.
---@return string
function CRYPTMAN:SHA1String(s) end
