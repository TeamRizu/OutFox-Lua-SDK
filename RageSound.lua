---@meta

---@class RageSound
RageSound = {}

--- Returns the length of the sound loaded into this RageSound.
--- Returns -1 if no sound is loaded.
---@return float
function RageSound:get_length() end

--- Sets the pitch to fPitch. The associated ActorSound must
--- have `SupportsRateChanging = true` on load.
---@param fPitch float
---@return self
function RageSound:pitch(fPitch) end

--- Sets the sound's position to `fSecs` seconds after the
--- starting point.
---@param fSecs float
---@return self
function RageSound:position(fSecs) end

--- Actually sets the value of `sProperty` to `fVal`. The
--- supported properties depend on how the associated
--- ActorSound was loaded.
---@param sProperty string
---@param fVal float
function RageSound:SetParam(sProperty, fVal) end

--- Attempts (and typically fails) to set the value of
--- `sProperty` to `fVal`. The supported properties depend
--- on how the associated ActorSound was loaded. Use
--- `RageSound.SetParam` instead.  
---@see RageSound.SetParam
---@param sProperty string
---@param fVal float
function RageSound:SetProperty(sProperty, fVal) end

--- Sets the speed (that is, the rate at which the sound
--- plays) to `fSpeed`. The associated ActorSound must have
--- `SupportsRateChanging = true` on load.
---@param fSpeed float
function RageSound:speed(fSpeed) end

--- Sets the volume to `fVolume`, which is between 0..1.
---@param fVolume float
function RageSound:volume(fVolume) end
