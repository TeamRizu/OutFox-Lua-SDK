---@meta

---@class Def
Def = {
	---@type Actor
	Actor = {},
	---@type ActorProxy
	ActorProxy = {},
	---@class Sprite : Actor
	Sprite = {},
	---@type Model
	---@diagnostic disable-next-line: missing-fields
	Model = {},
	---@type BitmapText
	BitmapText = {},
	---@type HelpDisplay
	HelpDisplay = {},
	---@type ActorFrame
	ActorFrame = {},
	Text = {},
	---@type Quad
	Quad = {},
	---@type ActorSound
	Sound = {},
	---@type Banner
	Banner = {},
	ActorFrameTexture = {},
	---@type ActorMultiVertex
	ActorMultiVertex = {},
	PercentageDisplay = {}
}

---Loads a module from the theme.
---@param ModuleName string
---@param ... any
---@return function
function LoadModule(ModuleName,...) end

THEME = {}

---Returns true if the specified language exists in the current theme.
---@param langName string The language to look for
---@return boolean
function THEME:DoesLanguageExist(langName) return langName == langName end
---Returns true if the specified theme exists.
---@param themeName string Theme for search.
---@return boolean
function THEME:DoesThemeExist(themeName) end
---[02 Utilities.lua] Returns the absolute path of a file in the them
---comment
---@param sPath string
---@return string
function THEME:GetAbsolutePath(sPath) end
---@return string
function THEME:GetCurLanguage() end
---@return string
function THEME:GetCurThemeName() end
---@return string
function THEME:GetCurrentThemeDirectory() end
---Gets the value of the metric Element located in ClassName.
---@param ClassName string
---@param Element string
---@return any # value
function THEME:GetMetric(ClassName, Element) end
function THEME:GetMetricNamesInGroup() end
function THEME:GetNumSelectableThemes() end
---Returns the path of ClassName Element in the BGAnimations folder.
---@param ClassName string
---@param Element string
---@return string
function THEME:GetPathB(ClassName, Element) end
---Returns the path of ClassName Element in the Fonts folder.
---@param ClassName string
---@param Element string
---@return string
function THEME:GetPathF(ClassName, Element) end
---Returns the path of ClassName Element in the Graphics folder.
---@param ClassName string
---@param Element string
---@return string
function THEME:GetPathG(ClassName, Element) end
function THEME:GetPathInfoB() end
---Returns the path of ClassName Element in the Other folder.
---@param ClassName string
---@param Element string
---@return string
function THEME:GetPathO(ClassName, Element) end
---Returns the path of ClassName Element in the Sounds folder.
---@param ClassName string
---@param Element string
---@return string
function THEME:GetPathS(ClassName, Element) end
function THEME:GetSelectableThemeNames() end
---Get the translated value.
---@param str1 string
---@param str2 string
---@return string
function THEME:GetString(str1, str2) end
function THEME:GetStringNamesInGroup() end
function THEME:GetThemeAuthor() end
function THEME:GetThemeDisplayName() end
function THEME:GetLanguages() end
function THEME:GetLanguagesCodes() end
function THEME:HasMetric(section, value) end

--- Returns `true` if the theme has the specified string.
---@param section string
---@param value string
---@return boolean
function THEME:HasString(section, value) end

--- Returns `true` if the specified theme is selectable.
---@param theme string
---@return boolean
function THEME:IsThemeSelectable(theme) end

--- Reloads the current theme's metrics.
function THEME:ReloadMetrics() end

--- comment
--- @param sMask string
function THEME:RunLuaScripts(sMask) end

--- Updates the ThemeManager's internal language value to the current one stored in Preferences.
function THEME:UpdateThemeLanguage() end

--- Changes the current theme.
---
--- After the theme changes, the screen specified by the Common::AfterThemeChangeScreen metric will be loaded.
--- 
--- The Common::InitialScreen metric will be used if Common::AfterThemeChangeScreen is blank or invalid.
---@param theme string
function THEME:SetTheme(theme) end

---@return string[]
function THEME:get_theme_fallback_list() end

---Converts the color provided into a RageColor entry.
---@param str string
---@return RageColor
function color(str) end

---@enum Color
Color = {
-- Color Library
-- These colors are pure swatch colors and are here purely to be used
-- on demand without having to type color("stuff") or dig through 
-- a palette to get the color you want.
	Black		=	color("0,0,0,1"),
	White		=	color("1,1,1,1"),
	Red			=	color("#ed1c24"),
	Blue		=	color("#00aeef"),
	Green		=	color("#39b54a"),
	Yellow		=	color("#fff200"),
	Orange		=	color("#f7941d"),
	Purple		=	color("#92278f"),
	Outline		=	color("0,0,0,0.5"),
	Invisible	=	color("1,1,1,0"),
	Stealth		=	color("0,0,0,0"),
-- Android Design Stencil Colors
-- https://developer.android.com/design/style/color.html
	HoloBlue		= color("#33B5E5"),
	HoloDarkBlue	= color("#0099CC"),
	HoloPurple		= color("#AA66CC"),
	HoloDarkPurple	= color("#9933CC"),
	HoloGreen		= color("#99CC00"),
	HoloDarkGreen	= color("#669900"),
	HoloOrange		= color("#FFBB33"),
	HoloDarkOrange	= color("#FF8800"),
	HoloRed			= color("#FF4444"),
	HoloDarkRed		= color("#CC0000"),
-- Color Functions
-- These functions alter colors in a certain way so that you can make
-- new ones without having to copy a color or find a new one.
--[[     Brightness(fInput)
    Hue(hInput)
    Saturation(hInput)
    Alpha(hInput)
    HSV(iHue,fSaturation,fValue or any other overload) --]]
	Alpha = function(c, fAlpha)
		return { c[1],c[2],c[3], fAlpha }
	end
}

---@class RageColor
RageColor = {}

---Returns the player's color.
---@param pn PlayerNumber
---@return RageColor
function PlayerColor(pn) end

---Darkens the color provided.
---@param c RageColor
---@return RageColor
function ColorDarkTone(c) end

---Lightens the color provided.
---@param c RageColor
---@return RageColor
function ColorLightTone(c) end

---Boosts a given color by fBoost.
---@param cColor RageColor
---@param fBoost number
---@return RageColor
function BoostColor(cColor, fBoost) end
---Converts a string given to all uppercase.
---@param str string
---@return string
function ToUpper(str) end
---Returns a RageColor object that scales based on the value of scl, which goes from 0 to 1.
---@param scl number
---@param col1 RageColor
---@param col2 RageColor
---@return RageColor
function lerp_color(scl, col1, col2) end

---Scales value from a range of low to high, to a range between bottomval and topval.
---Note that the value can go farther than the provided values.
---@param value number
---@param low number
---@param high number
---@param bottomval number
---@param topval number
---@return number
function scale(value, low, high, bottomval, topval) end

---Saves a screenshot.
---If pn is nil, saves to the machine's Screenshots dir, otherwise saves to the profile's Screenshots dir.
---Saves as jpg if compress is true, or png if compress is false.  The screenshot is signed if sign is true.
---prefix and suffix are optional strings to add to the beginning and end of the filename.
---@param pn? PlayerNumber
---@param compress boolean
---@param sign boolean
---@param prefix? string
---@param sufix? string
---@return boolean success
---@return string path # path of screenshot
function SaveScreenshot(pn, compress, sign, prefix, sufix) end

---Converts a RageColor with the specified alpha.
---@param c RageColor
---@param a number
---@return RageColor
function Alpha(c, a) end

---Truncates the string provided after the first underscore it encounters.
---@param e string
---@return string
function ToEnumShortString(e) end

---Return an Actor definition for the actor at `sPath`.
---If `sPath` points to a Lua file, any additional arguments will be passed to that script.
---Considered bad practice to use this in recent times.
---@deprecated
---@param sPath string
function LoadActor(sPath, ...) end


---Clamps the value given to either low or high. This does not scale the number like scale.
---Once it reaches low, it will stay low and viceversa.
---@param val number
---@param low number
---@param high number
---@return number
function clamp( val, low, high ) end

---Converts a number value into a string representation in HH:MM:SS.
---@param time integer
---@return string
function SecondsToHHMMSS(time) end

---Converts a number value into a string representation in MM:SS.
---@param time integer
---@return string
function SecondsToMMSS(time) end

---Converts a number value into a string representation in MM:SS.MsMs.
---@param time integer
---@return string
function SecondsToMMSSMsMs(time) end

---Converts a percentage representation from 0 to 1 to a
---string with percentage symbol.
---@param score number
---@return string
function FormatPercentScore(score) end

---Converts a string given to all uppercase.
---@param str string
---@return string
function ToUpper(str) end

---Converts a string given to all lowercase.
---@param str string
---@return string
function ToLower(str) end

---Returns the current aspect ratio of the game.
---@return number
function GetScreenAspectRatio() end

---Sends a string into the game log.
---@param str string
function Trace(str) end

--Sends a warning string into the game log.
---@param str string
function Warn(str) end

--- Returns an iterator containing the values of the given table.
---@generic T: table, V
---@param t T
---@return fun(table: V[]):V
---@return T
function ivalues(t) end

--- Converts a string or number to a bool.
---@param v string|number
---@return boolean
---@nodiscard
function tobool(v) end

---An alias for thread variables, which are provided by the
---game upon screen construction.
---@class Var
---@overload fun(sThreadName: string) : string
Var = {}

---Screen.
Screen = {}

GAMESTATE = {}
MEMCARDMAN = {}
---Preferences Manager
PREFSMAN = {}
FILEMAN = {}
MESSAGEMAN = {}
-- Stats Manager
STATSMAN = {}
IniFile = {}

require 'GameState'

-- Dimensions
SCREEN_WIDTH = 640
SCREEN_HEIGHT = 480
SCREEN_CENTER_X = SCREEN_WIDTH*.5
SCREEN_CENTER_Y = SCREEN_HEIGHT*.5
SCREEN_RIGHT = SCREEN_WIDTH
SCREEN_LEFT = 0
SCREEN_TOP = 0
SCREEN_BOTTOM = SCREEN_HEIGHT


---@class LuaThreadVariable
---@field [string] any

---Lua manager for game.
---@class lua
lua = {}

--- Returns `true` if the type of `v` is `sType`.
---@param sType string
---@param v any
---@return boolean
function lua.CheckType(sType, v) end

--- Flushes log files to disk.
function lua.Flush() end

---@return string
function lua.GetThreadVariable(s) end

--- Tries to read the file at `sPath`. If successful, it returns the file's contents.
--- If unsuccessful, it returns two values: `nil` and `"error"`.
---@param sPath string
---@return string
function lua.ReadFile(sPath) end

---Reports a script error to the user via the Lua errors console.
---@param str string
function lua.ReportScriptError(str) end

--- Calls `func(...)` with LuaThreadVariables set from t, and returns the return values of `func()`.
---@param func function
---@param t table
---@param ... any
function lua.RunWithThreadVariables(func, t, ...) end

--- Writes `sString` to log.txt.<br>
---@see Trace # is an aliased version of this function.
function lua.Trace(sString) end

--- Writes `sString` to info.txt and log.txt as a warning.<br>
---@see Warn # is an aliased version of this function.
function lua.Warn(sString) end
