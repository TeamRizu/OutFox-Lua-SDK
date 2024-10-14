---@meta

---@class ActorScroller : ActorFrame
ActorScroller = {}

--- Returns the scroller's current item.
---@return float
function ActorScroller:GetCurrentItem() end

--- Returns the item the scroller's going to.
---@return float
function ActorScroller:GetDestinationItem() end

--- Returns how long it will take for the scroller to completely
--- scroll through all its items.
---@return float
function ActorScroller:GetFullScrollLengthSeconds() end

--- Returns the number of items in the ActorScroller.
---@return integer
function ActorScroller:GetNumItems() end

--- Returns the number of seconds the scroller pauses between items.
---@return float
function ActorScroller:GetSecondsPauseBetweenItems() end

--- Returns the number of seconds until the scroller reaches its
--- destination.
---@return float
function ActorScroller:GetSecondsToDestination() end

--- Compatibility alias for `ActorScroller.GetSecondsToDestination()`.  
---@see ActorScroller.GetSecondsToDestination
---@return float
function ActorScroller:getsecondstodestination() end

--- Positions the scroller items.
---@return self
function ActorScroller:PositionItems() end

--- Scrolls through all the items in the scroller.
---@return self
function ActorScroller:ScrollThroughAllItems() end

--- Compatibility alias for `ActorScroller.ScrollThroughAllItems()`.  
---@see ActorScroller.ScrollThroughAllItems
---@return self
function ActorScroller:scrollthroughallitems() end

--- Scrolls through all the items in the scroller with padding at the
--- beginning and end.
---@param fItemPaddingStart float
---@param fItemPaddingEnd float
---@return self
function ActorScroller:ScrollWithPadding(fItemPaddingStart, fItemPaddingEnd) end

--- Compatibility alias for `ActorScroller.ScrollWithPadding()`.  
---@see ActorScroller.ScrollWithPadding
---@param fItemPaddingStart float
---@param fItemPaddingEnd float
---@return self
function ActorScroller:scrollwithpadding(fItemPaddingStart, fItemPaddingEnd) end

--- Sets the item the scroller should scroll to next and makes it the
--- current item.
---@param fItemIndex float
---@return self
function ActorScroller:SetCurrentAndDestinationItem(fItemIndex) end

--- Sets the item the scroller should scroll to next.
---@param fItemIndex float
---@return self
function ActorScroller:SetDestinationItem(fItemIndex) end

--- Sets if the scroller should catch up fast.
---@param bOn boolean
---@return self
function ActorScroller:SetFastCatchup(bOn) end

--- Compatibility alias for `ActorScroller.SetFastCatchup()`.  
---@see ActorScroller.SetFastCatchup
---@param bOn boolean
function ActorScroller:setfastcatchup(bOn) end

--- Specifies if the scroller should loop or not.
---@param bLoop boolean
function ActorScroller:SetLoop(bLoop) end

--- Sets the scroller's mask to a Quad that is fWidth by fHeight pixels.
---@param fWidth float
---@param fHeight float
---@return self
function ActorScroller:SetMask(fWidth, fHeight) end

--- Sets the scroller to draw `fNumItems` items.
---@param fNumItems float
---@return self
function ActorScroller:SetNumItemsToDraw(fNumItems) end

--- Sets the number of subdivisions in the scroller.
---@param iNumSubdivisions integer
---@return self
function ActorScroller:SetNumSubdivisions(iNumSubdivisions) end

--- Compatibility alias for `ActorScroller.SetNumSubdivisions()`.  
---@see ActorScroller.SetNumSubdivisions
---@param iNumSubdivisions integer
---@return self
function ActorScroller:setnumsubdivisions(iNumSubdivisions) end

--- Sets the scroller's pause countdown to fSecs.
---@param fSecs float
---@return self
function ActorScroller:SetPauseCountdownSeconds(fSecs) end

--- Sets the scroller's pause between items to fSeconds.
---@param fSeconds float
function ActorScroller:SetSecondsPauseBetweenItems(fSeconds) end

--- Sets how many seconds the scroller should spend on each item.
--- A value of 0 means the scroller will not scroll.
---@param fSeconds float
---@return self
function ActorScroller:SetSecondsPerItem(fSeconds) end

--- Compatibility alias for `ActorScroller.SetSecondsPerItem()`.  
---@see ActorScroller.SetSecondsPerItem
---@param fSeconds float
---@return self
function ActorScroller:setsecondsperitem(fSeconds) end

--- Sets the scroller's transform function to the specified Lua function.
---@param ScrollerFunction function
---@return self
function ActorScroller:SetTransformFromFunction(ScrollerFunction) end

--- Sets the scroller's transform function from `fItemHeight`.
---@param fItemHeight float
---@return self
function ActorScroller:SetTransformFromHeight(fItemHeight) end

--- Sets the scroller's transform function from `fItemWidth`.
---@param fItemWidth float
---@return self
function ActorScroller:SetTransformFromWidth(fItemWidth) end

--- Specifies if the scroller should wrap or not.
---@param bWrap boolean
---@return self
function ActorScroller:SetWrap(bWrap) end
