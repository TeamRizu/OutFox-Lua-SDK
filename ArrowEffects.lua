---@meta

--- For all of these functions, the first column starts at 1.
---@class ArrowEffects
ArrowEffects = {}

--- Returns the Alpha of a note in column `iCol` with a Y offset of `fYOffset` for the
--- provided PlayerState.
--- <br>
--- `fPercentFadeToFail` is optional and defaults to -1.
--- <br>
--- `fYReverseOffsetPixels` is the separation between targets with and without reverse.
--- This argument is optional and will pull defaults from the metrics for `[Player]`.
--- <br>
--- `fDrawDistanceBeforeTargetsPixels` is optional and will pull defaults from the
--- `[Player]` metric `DrawDistanceBeforeTargetsPixels`
--- <br>
--- `fFadeInPercentOfDrawFar` is optional and will pull defaults from the `[NoteField]`
--- metric `FadeBeforeTargetsPercent`
--- <br>
--- `part` is optional and will default to `NotePart_TapNote`.
--- @param ps PlayerState
--- @param iCol integer
--- @param fYOffset number
--- @param fPercentFadeToFail number
--- @param fYReverseOffsetPixels number
--- @param fDrawDistanceBeforeTargetPixels number
--- @param fFadeInPercentOfDrawFar number
--- @param part NotePart
--- @return number
function ArrowEffects.GetAlpha(ps, iCol, fYOffset, fPercentFadeToFail, fYReverseOffsetPixels, fDrawDistanceBeforeTargetPixels, fFadeInPercentOfDrawFar, part) end

--- Returns the brightness of a note at beat `fNoteBeat` for the provided PlayerState.
---@param ps PlayerState
---@param fNoteBeat number
---@return number
function ArrowEffects.GetBrightness(ps, fNoteBeat) end

--- Returns the FrameWidthScale of a hold part with a Y offset of `fYOffset` for the
--- provided PlayerState.
--- <br>
--- `fOverlappedTime` is optional and will default to 0.
---@param ps PlayerState
---@param fYOffset number
---@param fOverlappedTime number
---@return number
function ArrowEffects.GetFrameWidthScale(ps, fYOffset, fOverlappedTime) end

--- Returns the Glow of a note in column `iCol` with a Y offset of `fYOffset` for the
--- provided PlayerState. The arguments are the same as for `ArrowEffects.GetAlpha`.
---@param ps PlayerState
---@param iCol integer
---@param fYOffset number
---@param fPercentFadeToFail number
---@param fYReverseOffsetPixels number
---@param fDrawDistanceBeforeTargetPixels number
---@param fFadeInPercentOfDrawFar number
---@param part NotePart
---@return number
function ArrowEffects.GetGlow(ps, iCol, fYOffset, fPercentFadeToFail, fYReverseOffsetPixels, fDrawDistanceBeforeTargetPixels, fFadeInPercentOfDrawFar, part) end

--- Returns the X rotation of a note in column `iCol` with a Y offset of `fYOffset` for
--- the provided PlayerState.
---@param ps PlayerState
---@param fYOffset number
---@param iCol integer
---@return number
function ArrowEffects.GetRotationX(ps, fYOffset, iCol) end

--- Returns the Y rotation of a note in column `iCol` with a Y offset of `fYOffset` for
--- the provided PlayerState.
---@param ps PlayerState
---@param fYOffset number
---@param iCol integer
---@return number
function ArrowEffects.GetRotationY(ps, fYOffset, iCol) end

--- Returns the Z rotation of a note in column `iCol` at beat `fNoteBeat` for the
--- provided PlayerState.
--- <br>
--- `bIsHoldHead` is an optional argument which defaults to `false`. If `true`, this
--- function will return 0 if the PlayerOptions modifier `DizzyHolds` is off.
--- <br>
--- Not putting in `fYOffset` will give the rotationz at offset 0.
---@param ps PlayerState
---@param fNoteBeat number
---@param bIsHoldHead boolean
---@param iCol integer
---@param fYOffset number
---@return number
function ArrowEffects.GetRotationZ(ps, fNoteBeat, bIsHoldHead, iCol, fYOffset) end

--- Returns the X position of a note in column `iCol` with a Y offset of `fYOffset` for
--- the provided PlayerState.
---@param ps PlayerState
---@param iCol integer
---@param fYOffset number
---@return number
function ArrowEffects.GetXPos(ps, iCol, fYOffset) end

--- Returns the Y Offset of a note in column `iCol` at beat `fNoteBeat` for the provided
--- PlayerState. Y Offset is affected by Speed mods and Accel mods, and impacts most
--- other arrow effects.
---@param ps PlayerState
---@param iCol integer
---@param fNoteBeat number
---@return number
function ArrowEffects.GetYOffset(ps, iCol, fNoteBeat) end

--- Returns the Y offset of a note in column `iCol` with a Y position of `fYPos` for the
--- provided PlayerState.
--- <br>
--- `fYReverseOffsetPixels` is the separation between targets with and without reverse.
--- This argument is optional and will pull defaults from the metrics for `[Player]`.
---@param ps PlayerState
---@param iCol integer
---@param fYPos number
---@param fReverseOffsetPixels number
---@return number
function ArrowEffects.GetYOffsetFromYPos(ps, iCol, fYPos, fReverseOffsetPixels) end

--- Returns the Y position of a note in column `iCol` with a Y offset of `fYOffset` for
--- the provided PlayerState.
--- <br>
--- `fYReverseOffsetPixels` is the separation between targets with and without reverse.
--- This argument is optional and will pull defaults from the metrics for `[Player]`.
---@param ps PlayerState
---@param iCol integer
---@param fYOffset number
---@param fYReverseOffsetPixels number
---@return number
function ArrowEffects.GetYPos(ps, iCol, fYOffset, fYReverseOffsetPixels) end

--- Returns the zoom of a note for the provided PlayerState.
---@param ps PlayerState
---@param fYOffset number
---@param iCol integer
---@return number
function ArrowEffects.GetZoom(ps, fYOffset, iCol) end

--- Returns the Z position of a note in column `iCol` with a Y offset of `fYOffset` for
--- the provided PlayerState.
---@param ps PlayerState
---@param iCol integer
---@param fYOffset number
---@return number
function ArrowEffects.GetZPos(ps, iCol, fYOffset) end

--- Returns `true` if any arrow effects for the provided PlayerState require the z buffer.
---@param ps PlayerState
---@return boolean
function ArrowEffects.NeedZBuffer(ps) end

--- Returns the Z rotation of the receptors in column `iCol` for the provided PlayerState.
---@param ps PlayerState
---@param iCol integer
---@return number
function ArrowEffects.ReceptorGetRotationZ(ps, iCol) end

--- Updates ArrowEffects, which sets current values for Tornado, Invert, and Beat.
function ArrowEffects.Update() end
