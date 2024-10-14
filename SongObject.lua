---@meta

---@class BGChangeEntry
---@field start_beat number
---@field rate number
---@field transition number
---@field effect string
---@field file1 string
---@field file2 string
---@field color1 RageColor
---@field color2 RageColor

---@class SongObject SongObject: The class responsible for a song item.
SongObject = {}

--- Returns an array of all the available `Steps` objects for a `Song`.
---@return Steps[]
function SongObject:GetAllSteps() end

---@return string
function SongObject:GetBackgroundPath() end

---@return string
function SongObject:GetBannerPath() end

--- Returns a table with all the data for the song's BGCHANGES line.<br>
--- Each element of the table is one change like this:
--- ```lua
--- {
---     start_beat= 1.0,
---     rate= 1.0,
---     transition= "example",
---     effect= "example",
---     file1= "example",
---     file2= "example",
---     color1= "#FFFFFFFF",
---     color2= "#FFFFFFFF"
--- }
--- ```
---@return BGChangeEntry[]
function SongObject:GetBGChanges() end

--- Returns the path to the song's CD image.
---@return string
function SongObject:GetCDImagePath() end

--- Gets the path to the CDTitle.
---@return string
function SongObject:GetCDTitlePath() end

--- Returns the credits of the song.
---@return string
function SongObject:GetCredit() end

--- Returns the path to the song's disc image (different from CD, think Pump).
---@return string
function SongObject:GetDiscPath() end

--- Returns the displayed artist of the song.
---@return string
function SongObject:GetDisplayArtist() end

--- Returns a table of 2 floats containing the display BPMs.
---@return number[]
function SongObject:GetDisplayBpms() end

--- Returns the displayed full title of the song, including subtitle.
---@return string
function SongObject:GetDisplayFullTitle() end

--- Returns the displayed main title of the song.
---@return string
function SongObject:GetDisplayMainTitle() end

--- Returns the displayed subtitle of the song.
---@return string
function SongObject:GetDisplaySubTitle() end

--- Returns the first beat of the song.
---@return number
function SongObject:GetFirstBeat() end

--- Returns the first second of the song.
---@return number
function SongObject:GetFirstSecond() end

--- Returns a table with all the data for the song's FGCHANGES line.<br>
---@see SongObject.GetBGChanges # for the format listing.
function SongObject:GetFGChanges() end

--- Returns the genre of the song.
---@return string
function SongObject:GetGenre() end

--- Returns the group name that the song is in.
---@return string
function SongObject:GetGroupName() end

--- Returns the path to the song's jacket image.
---@return string
function SongObject:GetJacketPath() end

--- Returns the last beat of the song.
---@return number
function SongObject:GetLastBeat() end

--- Returns the last second of the song.
---@return number
function SongObject:GetLastSecond() end

--- Gets the path to the lyrics.
---@return string
function SongObject:GetLyricsPath() end

--- `GetDisplayMainTitle` checks the `ShowNativeLanguage` pref and returns the transliterated title is that pref is false.<br>
--- `GetMainTitle` (this function) **does not check that pref**. <br>
--- Instead, it directly returns the title, **exactly as it is** in the `#TITLE` field in the simfile.
---@return string
function SongObject:GetMainTitle() end

--- Gets the path to the music file.
---@return string
function SongObject:GetMusicPath() end

--- Behavior and format is similar to Player:GetNoteData.
---@return NoteDataEntry[]
---@see Player.GetNoteData
function SongObject:GetNoteData() end

--- Returns a Step object if the StepType and Difficulty exist.
---@return Steps
function SongObject:GetOneSteps() end

--- Gets the Song's origin.
---@return string
function SongObject:GetOrigin() end

--- Returns the path to the Song's preview music.  This handles the #PREVIEW tag internally, so it works with songs that use it and songs that don't.
---@return string
function SongObject:GetPreviewMusicPath() end

--- Returns the path to the Song's preview video, if it exists. (Returns <code>nil</code> otherwise.)
---@return string
function SongObject:GetPreviewVidPath() end

--- Gets the length of a song's sample time in seconds.
---@return number
function SongObject:GetSampleLength() end

--- Gets the starting position of a song sample in seconds.
---@return number
function SongObject:GetSampleStart() end

--- Returns the song's directory.
---@return string
function SongObject:GetSongDir() end

--- Returns the folder containing the song.
---@return string
function SongObject:GetSongFolder() end

--- Returns the songfile path.
---@return string
function SongObject:GetSongFilePath() end

--- [02 Other.lua] Returns the number of stages this song costs.
---@return integer
function SongObject:GetStageCost() end

---@param st StepsType
---@return Steps[]
function SongObject:GetStepsByStepsType(st) end

--- Returns how long the longest stepchart is in seconds.
---@return number
function SongObject:GetStepsSeconds() end

--- Returns the song's tags.
---@return string
function SongObject:GetTags() end

--- Returns the song's TimingData.
---@return TimingData
function SongObject:GetTimingData() end

--- Returns the transliterated artist of the song.
---@return string
function SongObject:GetTranslitArtist() end

--- Returns the transliterated full title of the song, including subtitle.
---@return string
function SongObject:GetTranslitFullTitle() end

--- Returns the transliterated main title of the song.
---@return string
function SongObject:GetTranslitMainTitle() end

--- Returns the transliterated subtitle of the song.
---@return string
function SongObject:GetTranslitSubTitle() end

--- Plays the preview music for the song like how it plays in ScreenSelectMusic.
function SongObject:PlayPreviewMusic() end

--- Returns `true` if the song has attacks.
---@return boolean
function SongObject:HasAttacks() end

--- Returns `true` if the song has BGChanges.
---@return boolean
function SongObject:HasBGChanges() end

--- Returns `true` if the song has a background.
---@return boolean
function SongObject:HasBackground() end

--- Returns `true` if the song has a banner.
---@return boolean
function SongObject:HasBanner() end

--- Returns `true` if the song has a CD image.
---@return boolean
function SongObject:HasCDImage() end

--- Returns `true` if the song has a CDTitle.
---@return boolean
function SongObject:HasCDTitle() end

--- Returns `true` if the song has a Disc graphic.
---@return boolean
function SongObject:HasDisc() end

--- Returns `true` if the song has edits.
---@return boolean
function SongObject:HasEdits() end

--- Returns `true` if the song has a jacket graphic.
---@return boolean
function SongObject:HasJacket() end

--- Returns `true` if the song has lyrics.
---@return boolean
function SongObject:HasLyrics() end

--- Returns `true` if the song has music.
---@return boolean
function SongObject:HasMusic() end

--- Returns `true` if the song has a preview video.
---@return boolean
function SongObject:HasPreviewVid() end

--- Returns `true` if the song has significant BPM changes or stops.
---@return boolean
function SongObject:HasSignificantBPMChangesOrStops() end

--- Returns `true` if the song has significant BPM changes.
---@return boolean
function SongObject:HasSignificantBPMChanges() end

--- Returns `true` if the song has the specified StepsType.
---@return boolean
function SongObject:HasStepsType() end

--- Returns `true` if the song has steps for the specified difficulty in `st`.
---@param st StepsType
---@param d Difficulty
---@return boolean
function SongObject:HasStepsTypeAndDifficulty(st,d) end

--- Returns `true` if the song is a custom song.
---@return boolean
function SongObject:IsCustomSong() end

--- Returns `true` if the song's DisplayBPM is constant.
---@return boolean
function SongObject:IsDisplayBpmConstant() end

--- Returns `true` if the song's DisplayBPM is random.
---@return boolean
function SongObject:IsDisplayBpmRandom() end

--- Returns `true` if the song's DisplayBPM is secret.
---@return boolean
function SongObject:IsDisplayBpmSecret() end

--- Returns `true` if the song's DisplayBPM is specified.
---@return boolean
function SongObject:IsDisplayBpmSpecified() end

--- Returns `true` if the song is considered easy.
---@return boolean
function SongObject:IsEasy() end

--- Returns `true` if the song is enabled.
---@return boolean
function SongObject:IsEnabled() end

---@return boolean
function SongObject:IsLong() end

---Is the song considered a marathon? (Songs that are 500 seconds or longer.)
---@return boolean
function SongObject:IsMarathon() end

---Are the steps included in this song using different timing to the song itself.
---@return boolean
function SongObject:IsStepsUsingDifferentTiming() end

---Tells if the song is part of the tutorial.
---@return boolean
function SongObject:IsTutorial() end

---Outputs the length of the song in seconds.
---@return number
function SongObject:MusicLengthSeconds() end

---Is the song displayed in the game?
---@return boolean
function SongObject:NormallyDisplayed() end

---Is the song shown in demonstration and ranking?
---@return boolean
function SongObject:ShowInDemonstrationAndRanking() end

