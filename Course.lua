---@meta

---@class Course Course
Course = {}

--- Returns true if all of the songs in the course have been defined
--- (as opposed to random songs).
---@return boolean
function Course:AllSongsAreFixed() end

--- Returns a table of all the Trails in the course.
---@return Trail[]
function Course:GetAllTrails() end

--- Returns the path to the Course's background.
---@return string
function Course:GetBackgroundPath() end

--- Returns the path to the Course's banner.
---@return string
function Course:GetBannerPath() end

--- Returns the course's directory.
---@return string
function Course:GetCourseDir() end

--- Returns a table of CourseEntry items.
---@return CourseEntry[]
function Course:GetCourseEntries() end

--- Gets the CourseEntry at iIndex from the Course.
---@param iIndex integer
---@return CourseEntry
function Course:GetCourseEntry(iIndex) end

--- Returns the Course's CourseType.
---@return CourseType
function Course:GetCourseType() end

--- Returns the description for this course.
---@return string
function Course:GetDescription() end

--- Returns the full display title of the course.
---@return string
function Course:GetDisplayFullTitle() end

--- Returns the estimated number of stages for the Course.
---@return integer
function Course:GetEstimatedNumStages() end

--- Returns the goal seconds for the course.
---@return number
function Course:GetGoalSeconds() end

--- Returns the Course's group name.
---@return string
function Course:GetGroupName() end

--- Gets the number of entries in the Course.
---@return integer
function Course:GetNumCourseEntries() end

--- Returns the Course's PlayMode.
---@return PlayMode
function Course:GetPlayMode() end

--- Returns the name of the person who scripted the course.
---@return string
function Course:GetScripter() end

--- Returns the total length of the Coruse in seconds.
---@param st StepsType
---@return number
function Course:GetTotalSeconds(st) end

--- Returns the full transliterated title of the course.
---@return string
function Course:GetTranslitFullTitle() end

---@return boolean
function Course:HasBackground() end

---@return boolean
function Course:HasBanner() end

--- Returns true if the course has modifiers.
---@return boolean
function Course:HasMods() end

--- Returns true if the Course has timed modifiers.
---@return boolean
function Course:HasTimedMods() end

---@return boolean
function Course:IsAnEdit() end

---@return boolean
function Course:IsAutogen() end

---@return boolean
function Course:IsEndless() end

---@return boolean
function Course:IsNonstop() end

---@return boolean
function Course:IsOni() end

--- Returns true if the Course is platable in StepsType st.
---@param st StepsType
---@return boolean
function Course:IsPlayableIn(st) end

---Returns true if the Course is a ranking course.
---@return boolean
function Course:IsRanking() end
