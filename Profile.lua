---@meta

---@class Profile
Profile = {}

--- Adds cals to the daily total.
---@param cals number
function Profile:AddCaloriesToDailyTotal(cals) end

--- Adds a screenshot entry to the profile.  filename must be the full path of the screenshot, as returned by SaveScreenshot.
---@param hs HighScore
---@param filename string
function Profile:AddScreenshot(hs, filename) end

--- Calculates the number of calories burned based on the heart rate (in beats per minute), the duration (in seconds), and data in the profile.
---@param heart_bpm number
---@param duration number
---@return number
function Profile:CalculateCaloriesFromHeartRate(heart_bpm, duration) end

--- Returns the age.
---@return number
function Profile:GetAge() end

--- Returns a table of all high score names that have been used on this profile.
---@return string[]
function Profile:GetAllUsedHighScoreNames() end

--- Returns the birth year.
---@return integer
function Profile:GetBirthYear() end

--- Returns the number of calories burned during the current day.
---@return number
function Profile:GetCaloriesBurnedToday() end

--- Returns the number of calories burned during a day given on <code>date</code>.
--- Formatting for the date goes as follows: <code>"year-month-day"</code><br />
--- If no calorie information is available for the given day, it will return 0 instead.
---@param date string
---@return number
function Profile:GetCaloriesBurnedByDate(date) end

--- Returns the profile's high scores for the specified ranking category.
---@param st StepsType
---@param rc RankingCategory
---@return HighScoreList
function Profile:GetCategoryHighScoreList(st,rc) end

--- Returns the Character being used by this profile.
---@return Character
function Profile:GetCharacter() end

--- Returns a composite of your high scores over courses with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return number
function Profile:GetCoursesActual(st,d) end

--- Returns the percentage of courses that you've completed with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return number
function Profile:GetCoursesPercentComplete(st,d) end

--- Returns the possible score of courses with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return number
function Profile:GetCoursesPossible(st,d) end

--- Returns the profile's display name.
---@return string
function Profile:GetDisplayName() end

--- Return the number of calories burned as a string.
---@return string
function Profile:GetDisplayTotalCaloriesBurned() end

--- Returns the number of calories needed to reach the goal.
---@return number
function Profile:GetGoalCalories() end

--- Returns the number of seconds needed to reach the goal.
---@return number
function Profile:GetGoalSeconds() end

--- Returns the current goal type.
---@return GoalType
function Profile:GetGoalType() end

--- Returns the GUID of this Profile.
---@return string
function Profile:GetGUID() end

--- Returns whether this profile ignores the step count based calorie calculation.
---@return boolean
function Profile:GetIgnoreStepCountCalories() end

--- Returns whether this profile uses the male formula when CalculateCaloriesFromHeartRate is used.
---@return boolean
function Profile:GetIsMale() end

--- Gets the profile's HighScoreList for a specified Song and Steps. (Alternate arguments for Courses: `Course c, Trail t`)
---@param s SongObject
---@param st Steps
---@return HighScoreList
function Profile:GetHighScoreList(s,st) end

--- Gets the profile's HighScoreList for a specified Song and Steps. (Alternate arguments for Courses: `Course c, Trail t`)
--- 
--- If the profile does not have a HighScoreList for the Song and Steps, returns nil.
--- Use this to avoid increasing the memory footprint of the profile when checking the score lists for every song and steps.
---@param s SongObject
---@param st Steps
---@return HighScoreList
function Profile:GetHighScoreListIfExists(s,st) end

--- Returns the last played Course for this profile.
---@return Course
function Profile:GetLastPlayedCourse() end

--- Returns the last played Song for this profile.
---@return SongObject
function Profile:GetLastPlayedSong() end

--- Returns the last used high score name.
---@return string
function Profile:GetLastUsedHighScoreName() end

--- Returns the number of Toasties gotten using the specified profile.
---@return integer
function Profile:GetNumToasties() end

--- Returns the profile's most popular course.
---@return Course
function Profile:GetMostPopularCourse() end

--- Returns the profile's most popular song.
---@return SongObject
function Profile:GetMostPopularSong() end

--- Returns the total number of songs played with the profile.
---@return integer
function Profile:GetNumTotalSongsPlayed() end

--- Returns the position the profile should have in its category in the list.
---@return integer
function Profile:GetPriority() end

--- Returns the number of times song `s` has been played with the profile.
---@param s SongObject
---@return integer
function Profile:GetSongNumTimesPlayed(s) end

--- Returns a composite of your high scores over songs with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return number
function Profile:GetSongsActual(st, d) end

--- Returns the percent complete for all songs and courses for the specified StepsType `st`.
---@param st StepsType
---@return number
function Profile:GetSongsAndCoursesPercentCompleteAllDifficulties(st) end

--- Returns the percentage of songs that you've completed with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return number
function Profile:GetSongsPercentComplete(st, d) end

--- Returns the possible score of songs with the specified StepsType and Difficulty.
---@param st StepsType
---@param d Difficulty
---@return number
function Profile:GetSongsPossible(st, d) end

--- Return the total number of calories burned.
---@return number
function Profile:GetTotalCaloriesBurned() end

--- Returns the number of dance points earned.
---@return integer
function Profile:GetTotalDancePoints() end

--- Returns the number of Hands stepped on.
---@return integer
function Profile:GetTotalHands() end

--- Returns the number of successful Holds.
---@return integer
function Profile:GetTotalHolds() end

--- Returns the number of Jumps stepped on.
---@return integer
function Profile:GetTotalJumps() end

--- Returns the number of successful Lifts.
---@return integer
function Profile:GetTotalLifts() end

--- Returns the number of Mines stepped on.
---@return integer
function Profile:GetTotalMines() end

--- Returns the total number of songs played with the profile.
---@return integer
function Profile:GetTotalNumSongsPlayed() end

--- Returns the number of successful Rolls.
---@return integer
function Profile:GetTotalRolls() end

--- Returns the number of scores that you've scored a certain Grade `g` on for all StepTypes or Difficulties. This result will be consistent regardless of the song library.
---@return integer
function Profile:GetTotalScoresWithGrade(g) end

--- Returns the number of steps with the specified StepsType and Difficulty that you've scored a certain Grade `g` on.
---@return integer
function Profile:GetTotalStepsWithTopGrade(st,d,g) end

--- Returns the number of Taps and successful Holds.
---@return integer
function Profile:GetTotalTapsAndHolds() end

--- Returns the number of trails with the specified StepsType and Difficulty that you've scored a certain Grade `g` on.
---@return integer
function Profile:GetTotalTrailsWithTopGrade(st,d,g) end

--- Returns the type of the profile.  The type of the profile is only used to determine where the profile shows up in the list of profiles, and that problem is already handled by ProfileManager, so if you're reading this, this function only exists so you can make your theme color this profile's list entry based on the type or something like that.
---@return ProfileType
function Profile:GetType() end

--- Returns the user table for this Profile.
---@return table
function Profile:GetUserTable() end

--- Returns the VO2 max for this profile.
---@return number
function Profile:GetVoomax() end

--- Returns how much the player weighs.
---@return integer
function Profile:GetWeightPounds() end

--- Returns `true` if the player has passed any steps in the specified Song `s`.
---@return boolean
function Profile:HasPassedAnyStepsInSong(s) end

--- Returns `true` if the specified code `sUnlockEntryID` is unlocked.
---@param sUnlockEntryID string
---@return boolean
function Profile:IsCodeUnlocked(sUnlockEntryID) end

--- Sets the birth year of the profile.
---@param year integer
function Profile:SetBirthYear(year) end

--- Sets the current `Character` for the Profile.
---@param sCharID string
function Profile:SetCharacter(sCharID) end

--- Sets the display name of the profile to name.
---@param name string
function Profile:SetDisplayName(name) end

--- Sets the goal to `iCals` calories.
---@param iCals integer
function Profile:SetGoalCalories(iCals) end

--- Sets the goal to `iSecs` seconds.
---@param iSecs integer
function Profile:SetGoalSeconds(iSecs) end

--- Sets the current goal type to `gt`.
---@param gt GoalType
function Profile:SetGoalType(gt) end

--- Sets whether this profile ignores the step count based calorie counting.
---@param ignore boolean
function Profile:SetIgnoreStepCountCalories(ignore) end

--- Sets whether this profile uses the male formula when CalculateCaloriesFromHeartRate is used.
---@param male boolean
function Profile:SetIsMale(male) end

--- Sets last used high score name.
---@param name string
function Profile:SetLastUsedHighScoreName(name) end

--- Sets the VO2 max for the profile.  0 is treated as unset.
---@param voo number
function Profile:SetVoomax(voo) end

--- Sets how much the player weighs (in pounds) to `weightPounds`.
---@param weightPounds integer
function Profile:SetWeightPounds(weightPounds) end
--- Returns the amount of time this profile has spent in gameplay (in seconds).
---@return integer
function Profile:GetTotalGameplaySeconds() end
--- Returns the number of sessions this profile has had.
---@return integer
function Profile:GetTotalSessions() end
--- Returns the total session length (in seconds) of this profile.
---@return integer
function Profile:GetTotalSessionSeconds() end
--- Returns a table of songs loaded from the profile.
---@return SongObject[]
function Profile:get_songs() end

--- Returns a string with the date of the last time the profile
--- has been used in a session.
---@return string
function Profile:GetLastPlayedDate() end

--- Returns the last difficulty this player has played.
--- If it's a new profile, it defaults to `Difficulty_Beginner`.
---@return Difficulty
function Profile:GetLastDifficulty() end

--- Adds `pSong` to the profile's favorites. Returns true if its
--- successful, false if it's already added.
---@param pSong SongObject
---@return boolean
function Profile:AddSongToFavorites(pSong) end

--- Removes `pSong` from the profile's favorites. Returns true if its
--- successful, false if not present.
---@param pSong SongObject
---@return boolean
function Profile:RemoveSongFromFavorites(pSong) end

--- Checks if `pSong` is on the profile's favorites.
--- Returns true if its successful, false if not present.
---@param pSong SongObject
---@return boolean
function Profile:SongIsFavorite(pSong) end

--- Returns a table containing the directory paths of the profile's favorite songs.<br/>
--- You can use <Link class='SongManager' function='FindSong' /> to convert it to a song object.
--- 
---@see SONGMAN.FindSong # to convert a specific song entry to a Song object.
---@return string[]
function Profile:GetFavorites() end