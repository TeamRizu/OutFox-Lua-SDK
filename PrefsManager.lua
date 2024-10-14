---@meta

---@class PrefsManager
PREFSMAN = {}

--- Return the value of the preference `sPreference`.
---@param sPreference string
---@return any
function PREFSMAN:GetPreference(sPreference) end

--- Return true if preference `sPreference` exists.
---@param sPreference string
---@return boolean
function PREFSMAN:PreferenceExists(sPreference) end

--- Set the value of the preference `sPreference` to `value`.
---@param sPreference string
---@param value any
function PREFSMAN:SetPreference(sPreference, value) end

--- Reset preference `sPreference` to the default value.
---@param sPreference string
function PREFSMAN:SetPreferenceToDefault(sPreference) end

--- Saves preferences to disk.
function PREFSMAN:SavePreferences() end