---@meta

--- Creates an alias or something in the same class.
---@param class table
---@param main_name string
---@param alt_name string
function alias_one(class, main_name, alt_name) end

---@param class table
---@param set table
function alias_set(class, set) end

--- Returns true if the OptionsMenu is allowed.
---@return boolean
function AllowOptionsMenu() end

--- Use this to make a current value approach a goal value at the given speed.
--- Speed must not be negative. The value will not overshoot the goal.
--- <br>
--- Note: When you see the error "approach: speed 1 is negative." it means that
--- the speed value passed was negative. The 1 is there because approach and
--- multiapproach use the same internal function and can be ignored when using
--- approach.
---@param current number
---@param goal number
---@param speed number
---@return number
function approach(current, goal, speed) end

---@return OptionRow
function ArbitrarySpeedMods() end

---@return boolean
function AreStagePlayerModsForced() end

---@return boolean
function AreStageSongModsForced() end

--- Returns `arg1` if Player 1 is joined and `arg2` if Player 2 is joined.
---@param arg1 any
---@param arg2 any
---@return any, any
function ArgsIfPlayerJoinedOrNil(arg1, arg2) end

--- Returns the base name of file path.
---@param path string
---@return string
function Basename(path) end

--- Creates an example to show BGFit choices.
---@param params table
---@return ActorFrame
function BGFitChoiceExample(params) end

--- Creates a handler for setting the BGFit.
---@param choices table
---@param lose_focus function
---@param gain_focus function
---@return ActorFrame
function BGFitInputActor(choices, lose_focus, gain_focus) end

--- Returns a string that has each character replaced with their hexadecimal
--- equivalent. (eg: 'j' becomes '6a')
---@param characters string
---@return string
function BinaryToHex(characters) end

--- Returns true if Center 1P is being used.
---@return boolean
function Center1Player() end

--- Returns the profile pref path for the player `pn`.
---@param pn PlayerNumber
---@return string
function CheckIfUserOrMachineProfile(pn) end

--- Creates a global with the name sClassName with a metatable for creating classes.
---@param sClassName string
---@return table
function class(sClassName) end

--- Closes any connection to an online server.
---@return boolean
function CloseConnection() end

--- Determines what TapNoteScore allows for continuing the combo.
---@return TapNoteScore
function ComboContinue() end

--- Determines what TapNoteScore allows for maintaining the combo.
---@return TapNoteScore
function ComboMaintain() end

--- Determines if combo should be per row (Jump = 1) or per column (Jump = 2).
---@return boolean
function ComboPerRow() end

--- The combo trasform command.
---@param actor Actor
---@param params table
function ComboTransformCommand(actor, params) end

--- This will take the number and insert a comma every three digits, as normal
--- in English for writing large numbers.
--- <br>
--- `number` can be a string, an integer, or a float. `comma` is an optional
--- argument that is used instead of a comma. "commify(1234, 'cat')" will result
--- in "1cat234". `dot` is an optional argument that is used instead of a dot to
--- find the end of the part that should be commified.
--- "commify('1234cat5678', ',', 'cat')" will result in "1,234cat5678", but
--- "commify('1234cat5678')" will result in "12,34c,at5,678".
--- <br>
--- The `comma` and `dot` arguments are provided to ease compliance with locales
--- or languages that do not use comma and dot in numbers the way English does.
---@param number string
---@param comma string
---@param dot string
---@return string
function commify(number, comma, dot) end

--- Returns a Lua option row for setting the aspect ratio.
---@return OptionRow
function ConfAspectRatio() end

--- Returns a Lua option row for which monitor to display the game on.
---@return OptionRow
function ConfDisplayMode() end

--- Returns a Lua option row for setting the game resolution.
---@return OptionRow
function ConfDisplayResolution() end

--- Returns a Lua option row for setting the type of fullscreen to use.
---@return OptionRow
function ConfFullscreenType() end

--- Returns a Lua option row for setting the game refresh rate.
---@return OptionRow
function ConfRefreshRate() end

--- Tries to connect to the server at `sAddress`.
---@param sAddress string
---@return boolean
function ConnectToServer(sAddress) end

---@param text BitmapText
---@param indent number
---@param width number
---@param text_zoom number
---@return string
function convert_text_to_indented_lines(text, indent, width, text_zoom) end

--- Recursively searches `dir` for xml files of actors and converts them to
--- equivalent lua files. See Docs/Themerdocs/XmlToLua.txt for details.
---@param dir string
function convert_xml_bgs(dir) end

--- Returns the course difficulty d as a localized string.
---@param diff Difficulty
---@return string
function CourseDifficultyToLocalizedString(diff) end

--- Returns CourseType ct as a localized string.
---@param ct CourseType
---@return string
function CourseTypeToLocalizedString(ct) end

--- Returns the custom difficulty `cd` as a localized string.
---@param cd string
---@return string
function CustomDifficultyToLocalizedString(cd) end

--- Returns the current day of the month.
---@return integer
function DayOfMonth() end

--- Returns the current day of the year.
---@return integer
function DayOfYear() end

--- Recursively deep-copy a table.
---@param from table
---@param to? table
---@param already_copied? table
function DeepCopy(from, to, already_copied) end

---@return boolean
function EvalUsesCheckpointsWithJudgments() end

---@return integer
function FailCombo() end

--- "This does not use the (faster) C++ side version of approach because I don't
--- want to find out how many themes pass a negative speed. -Kyz"
---@param val number
---@param other_val number
---@param to_move number
---@return number
function fapproach(val, other_val, to_move) end

--- This function creates files in the theme's Languages folder listing all the
--- strings that have no translation and all the strings that are unused. Strings
--- that do not have an entry in the master language are considered unused.
--- <br>
--- `master_lang_name` is the name of the ini file that contains the language with
--- all strings used by the theme.
--- ```lua
--- find_localization_errors("my_best_theme", "en.ini")
--- ```
---@param theme_name string
---@param master_lang_name string
function find_localization_errors(theme_name, master_lang_name) end

--- Return the index of a true value in list.
---@param list table
function FindSelection(list) end

--- Find a key in tab with the given value.
---@param tab table
---@param value any
---@return string
function FindValue(tab, value) end

--- Flips a coin and returns true or false. The `weight` parameter is optional and
--- is the liklihood of returning `true`.
---@param chance number
---@return boolean
function FlipCoin(chance) end

--- `func` takes a key and a value.
---@param t table
---@param keys table
---@param func fun(k: string, v: any)
function foreach_by_sorted_keys(t, keys, func) end

--- `func` takes a key and a value.
---@param t table
---@param func fun(k: string, v: any)
function foreach_ordered(t, func) end

--- Returns the number passed to the function followed by its suffix ("th", "nd",
--- and so on).
---@param num integer
---@return string
function FormatNumberAndSuffix(num) end

--- Used to make a string showing how many songs have been played.
---@param num integer
---@return string
function FormatNumSongsPlayed(num) end

--- Returns a table with all the numbers in the range.
---@param first integer
---@param last integer
---@param step integer
---@return table
function fornumrange(first, last, step) end

--- Returns a list of valid styles for the current gametype.
---@return string
function GameCompatibleModes() end

---@return string
function GameOverOrContinue() end

--- Returns the length of the music file found at path.
--- If you are loading the sound into an ActorSound, `ActorSound.get()`
--- to get its RageSound then use RageSound's `get_length` function
--- instead to avoid loading the file twice.
---@param path string
---@return number
function get_music_file_length(path) end

--- Returns a table of the names of the sound drivers available. If the SoundDriver
--- preference is set to something that is not in this list, StepMania WILL NOT
--- START UP. Changes to the SoundDriver preference do not take effect until the
--- next time StepMania starts up.
---@return string[]
function get_sound_driver_list() end

---@param codeName string
---@return string
function GetCodeForGame(codeName) end

---@return string
function GetCoursesToShowRanking() end

--- Returns the corresponding CustomDifficulty string for a StepsType/Difficulty
--- (/optional CourseType) combination.
---@param st StepsType
---@param d Difficulty
---@param ct CourseType
---@return string
function GetCustomDifficulty(st, d, ct) end

---@return string
function GetDefaultOptionLines() end

--- Returns a table of available refresh rates for the given resolution.
---@param d DisplaySpec
---@param w number
---@param h number
function GetDisplayRatesForResolution(d, w, h) end

--- Returns a string with the Edit Mode SubScreens.
---@return string
function GetEditModeSubScreens() end

--- Returns the value of name from the Env table.
---@return any
function getenv(name) end

--- Returns the length of the specified animation.
---@param which string
---@return number
function GetErrorMessageTime(which) end

--- Returns the default length of the specified animation.
---@param which string
---@return number
function GetErrorMessageTimeDefault(which) end

--- Returns the minimum length of the specified animation.
---@param which string
---@return number
function GetErrorMessageTimeMin(which) end

--- Returns the number at which the Extra color should be used.
---@return integer
function GetExtraColorThreshold() end

--- Themer-facing function for getting a user preference.
---@param name string
---@return string
function GetGamePref(name) end

--- Themer-facing function for getting a user preference as a boolean.
---@param name string
---@return boolean
function GetGamePrefB(name) end

--- Themer-facing function for getting a user preference as a color.
---@param name string
---@return RageColor
function GetGamePrefC(name) end

--- Themer-facing function for getting a user preference as a number.
---@param name string
---@return number
function GetGamePrefN(name) end

--- Returns a corresponding `Grade` for the given percentage.
---@param fPercent number
---@return Grade
function GetGradeFromPercent(fPercent) end

--- Returns the current Life Difficulty.
---@return integer
function GetLifeDifficulty() end

--- Returns the path to the specified module.
---@param ModuleName string
---@return any
function GetModule(ModuleName) end

---@param name string
---@return string
function GetOptionsListMapping(name) end

--- "This returns a profile, preferably a player one. If there isn't one, [it falls]
--- back on the machine profile."
---@param pn PlayerNumber
---@return Profile
function GetPlayerOrMachineProfile(pn) end

--- Returns `true` if player `pn` is using ProTiming.
---@param pn PlayerNumber
---@return boolean
function GetProTiming(pn) end

--- Returns a path to a random song background.
---@return string
function GetRandomSongBackground() end

---@return number
function GetReal() end

---@return number
function GetRealInverse() end

--- Returns the name of the currently connected server.
---@return string 
function GetServerName() end

--- Returns a path to the current song's background.
---@return string
function GetSongBackground() end

--- Returns the speed value and speed mode for the player pn.
---@param pn PlayerNumber
---@return number, string
function GetSpeedMoveAndValueFromPoptions(pn) end

--- Returns the theme's aspect ratio.
---@return number
function GetThemeAspectRatio() end

--- Alias for `ThemePrefs.Get()`.
---@param pref string
---@return any
function GetThemePref(pref) end

--- Returns the current time since the program was started. Includes time that was spent
--- loading songs.
---@return number
function GetTimeSinceStart() end

--- Returns the current Timing difficulty.
---@return integer
function getTimingDifficulty() end

---@param fPercent number
---@return number
function GetTitleSafeH(fPercent) end

---@param fPercent number
---@return number
function GetTitleSafeV(fPercent) end

---@return integer
function GetUnlockEntryIndexToCelebrate() end

--- Themer-facing function for getting a user preference.
---@param name string
---@return string
function GetUserPref(name) end

--- Themer-facing function for getting a user preference as a boolean.
---@param name string
---@return boolean
function GetUserPrefB(name) end

--- Themer-facing function for getting a user preference as a color.
---@param name string
---@return RageColor
function GetUserPrefC(name) end

--- Themer-facing function for getting a user preference as a number.
---@param name string
---@return number
function GetUserPrefN(name) end

--- Used for LuaTiming.
---@param TimingWindow number
---@param Scale number
---@param Add number
---@return number
function GetWindowSeconds(TimingWindow, Scale, Add) end

--- Returns the color's alpha if it has any, otherwise returns 1.
---@param c RageColor
---@return number
function HasAlpha(c) end

--- Returns the value to start showing the combo at.
---@return integer
function HitCombo() end

--- Returns 0 in pump mode, `TimingWindowSecondsHold` preference value inany other game
--- mode.
---@return number
function HoldTiming() end

--- Returns the current hour.
---@return integer
function Hour() end

--- Converts a color from HSV values to something StepMania can understand. Hue is from
--- `0-360`, saturation and value are `0..1`.
---@param h number
---@param s number
---@param v number
---@return RageColor
function HSV(h, s, v) end

--- Converts a color from HSV values with alpha to something StepMania can understand.
--- Hue is from `0-360`, saturation, value, and alpha are `0..1`.
---@param h number
---@param s number
---@param v number
---@param a number
---@return RageColor
function HSVA(h, s, v, a) end

--- "Converts a set of HSV values to a color."
---@param hsv table
---@return RageColor
function HSVToColor(hsv) end

--- "Takes in a normal color and returns the hex representation. (Adapted from code in
--- LuaBit)"
---@param hsv table
---@return string
function HSVToHex(hsv) end

--- Changes the hue of the input color.
---@param c RageColor
---@param newHue integer
---@return RageColor
function Hue(c, newHue) end

--- Initializes various game preferences.
function InitGamePrefs() end

--- Initializes various user preferences.
function InitUserPrefs() end

--- Returns `true` if the coin mode is not set to `CoinMode_Home`.
---@return boolean
function IsArcade() end

--- Returns `true` if the play mode is set to `PlayMode_Oni`, `PlayMode_Nonstop`, or
--- `PlayMode_Endless`.
---@return boolean
function IsCourse() end

--- Returns `true` if `IsArcade()` and the coin mode is `CoinMode_Free`.
---@return boolean
function IsFreePlay() end

--- Returns `true` if the current game is `sGame`.
---@param sGame string
---@return boolean
function IsGame(sGame) end

--- Returns `true` if the coin mode is set to `CoinMode_Home`.
---@return boolean
function InHome() end

--- Returns `true` if connected to the Internet.
---@return boolean
function IsNetConnected() end

--- Returns `true` if connected to StepMania Online.
---@return boolean
function IsNetSMOnline() end

--- Returns `true` if Routine mode is being played.
---@return boolean
function IsRoutine() end

--- Returns `true` if Player `pn` is logged on to a SMOnline server.
---@param pn PlayerNumber
---@return boolean
function IsSMOnlineLoggedIn(pn) end

--- Returns `true` if the aspect ratio is 5:4 (1.25) or lower.
---@return boolean
function IsUsingPortrait() end

--- Returns `true` if the aspect ratio is 16:10 (1.6) or higher.
---@return boolean
function IsUsingWideScreen() end

--- Joins a table, splitting each item with `delimiter`, returning a string of the
--- results.
---@param delimiter string
---@param list table
---@return string
function join(delimiter, list) end

--- Decodes JSON encoded data and returns the result.
---@param data string
---@return any
function JsonDecode(data) end

--- Returns data as JSON. Empty tables are represented as arrays in the output.
--- <br>
--- `minify` is optional and defaults to `false`. If `true`, all unnecessary
--- whitespace is omitted from the output.
---@param data any
---@param minify boolean
---@return string
function JsonEncode(data, minify) end

--- Returns JudgmentLine jl as a localized string.
---@param jl JudgmentLine
---@return string
function JudgmentLineToLocalizedString(jl) end

---@param actor Actor
---@param params table
function JudgmentTransformCommand(actor, params) end

---@param actor Actor
---@param params table
function JudgmentTransformSharedCommand(actor, params) end

--- Returns a number linearly interpolated between `from` and `to` by `percent`.
---@param percent number
---@param from number
---@param to number
function lerp(percent, from, to) end

--- Loads an actor template. This is the actual core of LoadActor.
---@param path string
---@param level integer
---@return Actor
function LoadActorFunc(path, level) end

--- Loads an actor with params.
---@param path string
---@param params table
---@param ... any
function LoadActorWithParams(path, params, ...) end

--- Load the fallback BGA for the element that is currently being loaded.
---@return Actor
function LoadFallbackB() end

--- Loads a font.
---@param a string
---@param b string
---@return Actor
function LoadFont(a, b) end

---@param profile Profile
---@param dir string
function LoadProfileCustom(profile, dir) end

--- Returns a Sprite with the current song's background.
---@return Sprite
function LoadSongBackground() end

--- Localizes the given option item string.
---@param s string
---@return string
function LocalizeOptionItem(s) end

--- Creates camel case aliases for all snake case functions in the class.
---@param class table
function make_camel_aliases(class) end

--- Returns the length of the multi-byte character string `sString`.
---@param sString string
---@return integer
function mbstrlen(sString) end

--- Returns the current Minute.
---@return integer
function Minute() end

--- Returns the value to start showing the miss combo at.
---@return integer
function MissCombo() end

--- Returns a ModPlayerNumber `mpn` as a localized string.
---@param mpn ModPlayerNumber
---@return string
function ModPlayerNumberToLocalizedString(mpn) end

--- Returns a ModPlayerNumber `mpn` as a string.
---@param mpn ModPlayerNumber
---@return string
function ModPlayerNumberToString(mpn) end

--- Returns the current month of the year (0-11).
---@return integer
function MonthOfYear() end

--- Returns Month `m` as a localized string.
---@param m Month
function MonthToLocalizedString(m) end

--- Returns Month `m` as a string.
---@param m Month
function MonthToString(m) end

--- Similar to approach, but operates on tables of values instead of single values. This
--- will modify the contents of currents in place, as well as returning currents.
--- <br>
--- `currents`, `goals`, and `speeds` must all be the same size and contain only numbers.
--- `multiplier` is optional. The speeds in the `speeds` table will be multiplied by
--- `multiplier`. This makes it more convenient to use multiapproach in a per-frame
--- update: pass in the frame delta and the speeds will be scaled to the time that
--- passed.
--- <br>
--- Note: When you see the error "approach: speed 1 is negative." it means that a speed
--- value passed was negative. The 1 tells you which entry in the table was invalid.
---@param currents table
---@param goals table
---@param speeds table
---@param multiplier number
function multiapproach(currents, goals, speeds, multiplier) end

--- Returns a MultiPlayer `mp` as a localized string.
---@param mp MultiPlayer
---@return string
function MultiPlayerToLocalizedString(mp) end

--- Returns a MultiPlayer `mp` as a string.
---@param mp MultiPlayer
---@return string
function MultiPlayerToString(mp) end

--- Creates a numpad entry.
---@param params table
---@return metatable
function new_numpad_entry(params) end

--- Converts a string such as 'oni' or 'expert' or 'trick' to the appropriate difficulty.
---@param dc string
---@return Difficulty
function OldStyleStringToDifficulty(dc) end

--- Returns a Lua option row for ProTiming.
---@return OptionRow
function OptionRowProTiming() end

---@return string
function OptionsNavigationMode() end

--- Returns a Lua option row for setting random modifiers in Jukebox mode.
---@return OptionRow
function OptionRandomJukebox() end

--- Returns an example Lua option row.
---@return OptionRow
function OptionRowTest() end

--- Returns a Lua option row for setting a profile's weight.
---@return OptionRow
function OptionWeight() end

--- Creates an actor to handle input for a pause menu.
---@return Actor
function pause_controller_actor() end

--- Returns PeakComboAward `pca` as a localized string.
---@param pca PeakComboAward
---@return string
function PeakComboAwardToLocalizedString(pca) end

--- Returns a PlayerNumber `pn` as a localized string.
---@param pn PlayerNumber
---@return string
function PlayerNumberToLocalizedString(pn) end

--- Returns a PlayerNumber `pn` as a string.
---@param pn PlayerNumber
---@return string
function PlayerNumberToString(pn) end

--- Returns PlayMode `pm` as a localized string.
---@param pm PlayMode
---@return string
function PlayModeToLocalizedString(pm) end

--- Converts a PlayerNumber into a short string (e.g. "P1", "P2").
---@param pn PlayerNumber
---@return string
function pname(pn) end

--- Returns either `p1val` or `p2val` depending on `pn`.
---@param pn PlayerNumber
---@param p1val number
---@param p2val number
---@return number
function PositionPerPlayer(pn, p1val, p2val) end

--- Returns a formatted percent with the specified numerator and denominator.
---@param num number
---@param den number
---@return string
function PrettyPercent(num, den) end

--- Prints a table's contents to the log.
---@param t table
function PrintTable(t) end

--- Returns the product family. (e.g. "StepMania")
---@return string
function ProductFamily() end

--- Returns the product ID. (e.g. "StepMania 5")
---@return string
function ProductID() end

--- Returns the product version.
---@return string
function ProductVersion() end

--- Returns RadarCategory `rc` as a localized string.
---@param rc RadarCategory
---@return string
function RadarCategoryToLocalizedString(rc) end

--- (internal) Reads the specified game preference from its config file.
---@param prefName string
---@return string
function ReadGamePrefFromFile(prefName) end

--- (internal) Reads the specified user preference from its config file.
---@param prefName string
---@return string
function ReadPrefFromFile(prefName) end

--- Recursively counts the number of children in a table.
---@param t table
---@return integer
function rec_count_children(t) end

--- Recursively prints all the children of the actor frame to the log file. This can be
--- useful for finding out what actors are on a screen or just seeing what the structure
--- of the actor tree looks like.
--- <br>
--- `indent` is an optional argument that will be prepended to every line.
---@param af ActorFrame
---@param indent string
function rec_print_children(af, indent) end

--- Recursively prints all values in the table to the log file in the form
--- "(key_type) key: (value_type) value" so that you know the type of the key and the
--- value. Useful if you're not sure exactly what is in a table passed as a parameter.
--- <br>
--- `indent` is an optional argument that will be prepended to every line.
---@param t table
---@param indent string
function rec_print_table(t, indent) end

--- Sends the current style to the server.
---@return boolean
function ReportStyle() end

--- Used internally by LoadActor to resolve a path. If optional is `true`, then a nil path
--- is returned instead of emitting an error if no file is found.
---@param path string
---@param level integer
---@param optional boolean
---@return string
function ResolveRelativePath(path, level, optional) end

--- Rolls a dice and returns a number between 1 and `sides` (inclusive).
---@param sides integer
---@return integer
function RollTheDie(sides) end

--- Round a number.
---@param val number
---@param decimal integer
function round(val, decimal) end

--- Returns the routine noteskin for player 1.
---@return string
function RoutineSkinP1() end

--- Returns the routine noteskin for player 2.
---@return string
function RoutineSkinP2() end

---@param profile Profile
---@param dir string
function SaveProfileCustom(profile, dir) end

--- Saves a screenshot. If `pn` is `nil`, saves to the machine's Screenshots directory,
--- otherwise saves to the profile's Screenshots directory. Saves as jpg if compress is `true`,
--- or png if compress is `false`. The screenshot is signed if sign is `true`. `prefix` and
--- `suffix` are optional strings to add to the beginning and end of the filename.
--- <br>
--- Returns success and full path of the resulting screenshot.
---@param pn PlayerNumber
---@param compress boolean
---@param sign boolean
---@param prefix string
---@param suffix string
---@return boolean, string
function SaveScreenShot(pn, compress, sign, prefix, suffix) end

--- Returns the primary ScoreKeeper class to use.
---@return string
function ScoreKeeperClass() end

--- Alias for `Screen.Metric()`.
---@param s string
---@return string
function ScreenMetric(s) end

---@return table
function ScreenSelectStyleChoices() end

---@return table
function ScreenSelectStylePositions() end

--- Alias for `Screen.String()`.
---@param s string
---@return string
function ScreenString(s) end

--- Returns the current second.
---@return integer
function Second() end

--- Determines the correct music/course selection screen to use and returns it.
---@return string
function SelectMusicOrCourse() end

--- (soon to be deprecated) Returns a list of codes to use on ScreenSelectProfile.
---@return string
function SelectProfileKeys() end

--- Serialize the table `t`.
---@param t table
---@return string
function Serialize(t) end

--- Sets the value of `name` to `value` in the Env table.
---@param name string
---@param value any
---@return any
function setenv(name, value) end

--- Sets the duration of the error display's show/hide animation.
---@param which string
---@param t number
function SetErrorMessageTime(which, t) end

--- Themer-facing function for setting a game preference.
---@param name string
---@param value any
function SetGamePref(name, value) end

--- Themer-facing function for setting a theme preference.
---@param name string
---@param value any
function SetThemePref(name, value) end

--- Themer-facing function for setting a user preference.
---@param name string
---@param value any
---@return boolean
function SetUserPref(name, value) end

---@return boolean
function ShowHoldJudgments() end

--- Returns true if a decoration should be shown on the current screen or not.
---@param sMetricName string
---@return boolean
function ShowStandardDecoration(sMetricName) end

---@return string
function SMOnlineScreen() end

--- Returns SortOrder so as a localized string.
---@param so SortOrder
---@return string
function SortOrderToLocalizedString(so) end

---@return OptionRow
function SpeedModIncLarge() end

---@return OptionRow
function SpeedModIncSize() end

--- Returns a Lua option row with the custom speed mods defined in SpeedMods.txt.
---@return OptionRow
function SpeedMods() end

--- Splits a string at every occurence of `delimiter`, returning a table of the results.
---@param delimiter string
---@param text string
---@return table
function split(delimiter, text) end

--- Returns StageAward `sa` as a localized string.
---@param sa StageAward
function StageAwardToLocalizedString(sa) end

--- Returns Stage `s` as a localized string.
---@param s Stage
function StageToLocalizedString(s) end

---@param sMetricName string
---@param sFileName string
---@return Actor
function StandardDecorationFromFile(sMetricName, sFileName) end

---@param sMetricName string
---@param sFileName string
---@return Actor
function StandardDecorationFromFileOptional(sMetricName, sFileName) end

---@param sMetricName string
---@param t table
---@return Actor
function StandardDecorationFromTable(sMetricName, t) end

---@param st Steps|Trail
---@return string
function StepsOrTrailToCustomDifficulty(st) end

--- Takes a string `s` and gets the BlendMode associated with it.
---@param s string
---@return BlendMode
function StringToBlend(s) end

--- Returns a shuffled version of `t`.
---@param t table
---@return table
function tableshuffle(t) end

--- Returns a slice of the specified table of size `num`.
---@param t table
---@param num integer
---@return table
function tableslice(t, num) end

--- Look up each value in a table, returning a table with the resulting strings.
---@param t table
---@param group string
---@return table
function TableStringLookup(t, group) end

--- Returns TapNoteScore `tns` as a localized string.
---@param tns TapNoteScore
---@return string
function TapNoteScoreToLocalizedString(tns) end

--- This function defines how the TextBanner is laid out.
---@param actor Actor
function TextBannerAfterSet(actor) end

--- Gets the LuaOptionRow for the preference.
---@param pref string
---@return OptionRow
function ThemePrefRow(pref) end

--- Used for LuaTiming.
---@param TimTab table
---@return table
function TimingOrder(TimTab) end

---@param t table
---@return string
function TrailToCustomDifficulty(t) end

---@return boolean
function TwoPartSelection() end

--- Returns a UnlockRewardType `urt` as a localized string.
---@param urt UnlockRewardType
---@return string
function UnlockRewardTypeToLocalizedString(urt) end

--- This tells Stepmania to update the screen position for any changes to these preferences:
--- CenterImageAddWidth, CenterImageAddHeight, CenterImageTranslateX, CenterImageTranslateY.
--- <br>
--- This way, a theme can implement a custom interactive screen for adjusting those preferences.
function update_centering() end

--- Returns a string with characters escaped for URLs. (e.g. a space becomes '%20')
---@param sInput string
---@return string
function URLEncode(sInput) end

--- Returns the current version's build date.
---@return string
function VersionDate() end

--- Returns the current version's build time.
---@return string
function VersionTime() end

--- Returns the day in the week.
---@return integer
function Weekday() end

--- Depending on the screen width, scales between `ar43` (4:3; 640px) and `ar169` (16:9; 854px).
---@param ar43 number
---@param ar169 number
---@return number
function WideScale(ar43, ar169) end

---@param text BitmapText
---@param limit number
---@param natural_zoom number
function width_clip_limit_text(text, limit, natural_zoom) end

---@param text BitmapText
---@param limit number
function width_clip_text(text, limit) end

--- "TODO: Figure out why BitmapText:maxwidth doesn't do what I want." -Kyzentun
---@param text BitmapText
---@param limit number
---@param natural_zoom number
function width_limit_text(text, limit, natural_zoom) end

---@param val number
---@param n number
---@return float
function wrap(val, n) end

--- Wraps the children in an ActorFrame.
---@param children table
---@return ActorFrame
function WrapInActorFrame(children) end

---@param name string
---@param value any
---@return boolean
function WriteGamePrefToFile(name, value) end

--- (internal) Writes user preference `prefName` to its config file with `value` being `tostring`'d.
---@param prefName string
---@param value any
---@return boolean
function WritePrefToFile(prefName, value) end

--- Returns the current year.
---@return integer
function Year() end
