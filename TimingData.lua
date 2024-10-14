---@meta

--- ## Note with functions
--- GetBPMsAndTimes, GetStops, GetDelays, GetLabels, GetWarps, GetCombos, GetTimeSignatures, GetTickcounts,
--- GetFakes, GetScrolls, GetXScrolls, and GetSpeeds all have two different modes.
--- 
--- If false (or nothing) is the first argument to these functions, they return tables of strings.
--- The strings are numbers separated by '='.
---
--- If the argument is true, they return tables of tables, and the inner tables contain numbers as described
--- for each function.
--- 
--- The first form is kept around and is the default for compatibility with older themes.
--- The advantage of the second form is that you no longer need to have a bit of code in your theme
--- to transform the string into a table of numbers before you can use it.
--- 
--- ### Example
--- ```lua
--- local bpmsand= timing_data:GetBPMsAndTimes()
--- for i, s in ipairs(bpmsand) do
---     local sand= split("=", s)
---     bpmsand[i]= {tonumber(sand[1]), tonumber(sand[2])}
--- end
--- -- do something that looks at all the bpms and times. 
--- -- Becomes:
--- local bpmsand= timing_data:GetBPMsAndTimes(true)
--- ```
---@class TimingData TimingDataInfo
TimingData = {}

---Returns the minimum and maximum BPM of the song in a table (in that order).
---@returns number[]
function TimingData:GetActualBPM() end

---Returns the beat from fElapsedTime.
---@returns number
function TimingData:GetBeatFromElapsedTime(fElapsedTime) end

---Returns the BPM at fBeat.
---@returns number[]
function TimingData:GetBPMAtBeat(fBeat) end

---Returns a table of the BPMs as floats.
---@returns number[]
function TimingData:GetBPMs() end

--- Returns a table of the BPMs and the times they happen as tables.
--- The first value is the beat.  The second value is the bpm.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetBPMsAndTimes(useTable) end

--- Returns the elapsed time from `fBeat`.
---@param fBeat number
---@return number
function TimingData:GetElapsedTimeFromBeat(fBeat) end

--- Returns a table of the Stops and the times they happen as tables.
--- The first value is the beat.  The second value is the length.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetStops(useTable) end

--- Returns a table of the Delays and the times they happen as tables.
--- The first value is the beat.  The second value is the length.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetDelays(useTable) end

--- Returns a table of the Labels and the times they happen as tables.
--- The first value is the beat.  The second value is the label.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetLabels(useTable) end

--- Returns a table of the Warps and the times they happen as tables.
--- The first value is the beat.  The second value is the number of beats to warp over.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetWarps(useTable) end

--- Returns a table of the Combos and the times they happen as tables.
--- The first value is the beat.  The second value is the combo.  The third value is the miss combo.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetCombos(useTable) end

--- Returns a table of the Time Signatures and the times they happen as tables.
--- The first value is the beat.  The second value is the numerator.  The third value is the denominator.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetTimeSignatures(useTable) end

--- Returns a table of the Tickcounts and the times they happen as tables.
--- The first value is the beat.  The second value is the number of ticks per beat.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetTickcounts(useTable) end

--- Returns a table of the Fakes and the times they happen as tables.
--- The first value is the beat.  The second value is the number of beats to not judge.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetFakes(useTable) end

--- Returns a table of the Scrolls and the times they happen as tables.
--- The first value is the beat.  The second value is the scroll rate ratio.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetScrolls(useTable) end

--- Returns a table of the XScrolls and the times they happen as tables.
--- The first value is the beat.  The second value is the horizontal scroll rate ratio.
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetXScrolls(useTable) end

--- Returns a table of the Speeds and the times they happen as tables.
--- The first value is the beat.  The second value is the scroll rate ratio.  The third value is the length of time to fully activate.  The fourth value is the unit of activation (0 for beats, 1 for seconds).
---
--- The `useTable` parameter is optional. It can be used to return the
--- values as a table, instead of a string separated by '='. This parameter is recommended.
--- 
---@see TimingData # for an explanation for why the classic method is still used first.
---@param useTable? boolean
---@return number[][]
function TimingData:GetSpeeds(useTable) end

--- Returns `true` if the TimingData contains BPM changes.
---@return boolean
function TimingData:HasBPMChanges() end

--- Returns `true` if the TimingData contains delays.
---@return boolean
function TimingData:HasDelays() end

--- Returns `true` if the TimingData contains any BPM changes with a negative BPM.
---@return boolean
function TimingData:HasNegativeBPMs() end

--- Returns `true` if the TimingData contains stops.
---@return boolean
function TimingData:HasStops() end

--- Returns `true` if the TimingData contains warps.
---@return boolean
function TimingData:HasWarps() end

--- returns `true` if the TimingData contains fake segments.
---@return boolean
function TimingData:HasFakes() end

--- Returns `true` if the TimingData contains speed scrolling changes.
---@return boolean
function TimingData:HasSpeedChanges() end

--- Returns `true` if the TimingData contains general scrolling changes.
---@return boolean
function TimingData:HasScrollChanges() end

--- Returns `true` if the TimingData contains horizontal scrolling changes.
---@return boolean
function TimingData:HasXScrollChanges() end

--- Returns true if the current beat is valid for judgment detection.
---@param fBeat number
---@return boolean
function TimingData:IsJudgableAtBeat(fBeat) end
