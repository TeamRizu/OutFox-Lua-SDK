---@meta

---@class CubicSplineN
CubicSplineN = {}

--- Destroys the spline, freeing the memory allocated for it. This can only be called on splines
--- created with create_spline().
function CubicSplineN:destroy() end


--- Destroys the spline, freeing the memory allocated for it. This can only be called on splines
--- created with create_spline().
--- <br>
--- Alias of `CubicSplineN.destroy()`.
function CubicSplineN:Destroy() end

--- Returns true of the spline has zero points, or false if it has more than zero points.
function CubicSplineN:empty() end

--- Returns true of the spline has zero points, or false if it has more than zero points.
--- <br>
--- Alias of `CubicSplineN.empty()`.
function CubicSplineN:Empty() end

--- Evaluates the spline at the given t value, returning a table of the results for each dimension
--- of the spline.
--- <br>
--- t can range from 0 to the value returned by get_max_t().
--- <br>
--- A normal spline will return its starting point for any t value less than 0 and its end point
--- for any t value greater than the max.
--- <br>
--- A looped spline adjust the t value to be within the its range by adding or subtracting the max
--- t as needed. (so if the max t is 4 and you evaluate at 5, it will return the same as if you
--- evaluated at 1.)
function CubicSplineN:evaluate(t) end


--- Evaluates the spline at the given t value, returning a table of the results for each dimension
--- of the spline.
--- <br>
--- t can range from 0 to the value returned by get_max_t().
--- <br>
--- A normal spline will return its starting point for any t value less than 0 and its end point
--- for any t value greater than the max.
--- <br>
--- A looped spline adjust the t value to be within the its range by adding or subtracting the max
--- t as needed. (so if the max t is 4 and you evaluate at 5, it will return the same as if you
--- evaluated at 1.)
--- <br>
--- Alias of `CubicSplineN.evaluate()`.
function CubicSplineN:Evaluate(t) end

--- Evaluates the derivative at `t`.
function CubicSplineN:evaluate_derivative(t) end

--- Evaluates the derivative at `t`.
--- Alias of `CubicSplineN.evaluate_derivative()`.
function CubicSplineN:EvaluateDerivaitive(t) end

--- Evaluates the second derivative at `t`.
--- <br>
--- Second and third derivative functions exist because they're possible, not because they're
--- expected to be useful. The fourth derivative would be 0 because the equation for evaluating
--- the spline is "a + (b*t) + (c*t^2) + (d*t^3)".
function CubicSplineN:evaluate_second_derivative(t) end

--- Evaluates the second derivative at `t`.
--- <br>
--- Second and third derivative functions exist because they're possible, not because they're
--- expected to be useful. The fourth derivative would be 0 because the equation for evaluating
--- the spline is "a + (b*t) + (c*t^2) + (d*t^3)".
--- <br>
--- Alias of `CubicSplineN.evaluate_second_derivative()`.
function CubicSplineN:EvaluateSecondDerivaitive(t) end

--- Evaluates the third derivative at `t`.
--- <br>
--- Second and third derivative functions exist because they're possible, not because they're
--- expected to be useful. The fourth derivative would be 0 because the equation for evaluating
--- the spline is "a + (b*t) + (c*t^2) + (d*t^3)".
function CubicSplineN:evaluate_third_derivative(t) end

--- Evaluates the third derivative at `t`.
--- <br>
--- Second and third derivative functions exist because they're possible, not because they're
--- expected to be useful. The fourth derivative would be 0 because the equation for evaluating
--- the spline is "a + (b*t) + (c*t^2) + (d*t^3)".
--- <br>
--- Alias of `CubicSplineN.evaluate_third_derivative()`.
function CubicSplineN:EvaluateThirdDerivaitive(t) end

--- Returns a table containing the tables of coefficients for the point `i`.
function CubicSplineN:get_coefficients(i) end

--- Returns a table containing the tables of coefficients for the point `i`.
--- <br>
--- Alias of `CubicSplineN.get_coefficients()`.
function CubicSplineN:GetCoefficients(i) end

--- Returns the number of dimensions the spline has.
function CubicSplineN:get_dimension() end

--- Returns the number of dimensions the spline has.
--- <br>
--- Alias of `CubicSplineN.get_dimension()`.
function CubicSplineN:GetDimension() end

--- Returns whether the spline is currently dirty.
function CubicSplineN:get_dirty() end

--- Returns whether the spline is currently dirty.
--- <br>
--- Alias of `CubicSplineN.get_dirty()`.
function CubicSplineN:GetDirty() end

--- Returns whether the spline is looped.
function CubicSplineN:get_loop() end

--- Returns whether the spline is looped.
--- <br>
--- Alias of `CubicSplineN.get_loop()`.
function CubicSplineN:GetLoop() end

--- Returns the max t value the spline extends to. For a normal spline, this will be size()-1. For
--- a looped spline, this will be size().
function CubicSplineN:get_max_t() end

--- Returns the max t value the spline extends to. For a normal spline, this will be size()-1. For
--- a looped spline, this will be size().
--- <br>
--- Alias of `CubicSplineN.get_max_t()`.
function CubicSplineN:GetMaxT() end

--- Returns whether the spline is polygonal.
function CubicSplineN:get_polygonal() end

--- Returns whether the spline is polygonal.
--- <br>
--- Alias of `CubicSplineN.get_polygonal()`.
function CubicSplineN:GetPolygonal() end

--- Returns the number of points in the spline.
function CubicSplineN:get_size() end

--- Returns the number of points in the spline.
--- <br>
--- Alias of `CubicSplineN.get_size()`.
function CubicSplineN:GetSize() end

--- Returns the spatial extent of dimension d of the spline.
function CubicSplineN:get_spatial_extent(d) end

--- Returns the spatial extent of dimension d of the spline.
--- <br>
--- Alias of `CubicSplineN.get_spatial_extent()`.
function CubicSplineN:GetSpatialExtent(d) end

--- Sets the coefficients of the spline at point i.
--- <br>
--- Each table must contain a value for each dimension of the spline.
--- <br>
--- Solving the spline normally should cover all normal usage, this is for people that want a spline
--- with an abnormal behavior, so if you set the coefficients directly, expect to end up with an
--- unsmooth shape.
function CubicSplineN:set_coefficients(i, b, c, d) end

--- Sets the coefficients of the spline at point i.
--- <br>
--- Each table must contain a value for each dimension of the spline.
--- <br>
--- Solving the spline normally should cover all normal usage, this is for people that want a spline
--- with an abnormal behavior, so if you set the coefficients directly, expect to end up with an
--- unsmooth shape.
--- <br>
--- Alias of `CubicSplineN.set_coefficients()`.
function CubicSplineN:SetCoefficients(i, b, c, d) end

--- Sets the number of dimensions the spline has.
--- <br>
--- Splines that are owned by actors (the ones inside ActorMultiVertex and NCSplineHandler) cannot have
--- their number of dimensions changed because the actors require them to have 3 dimensions.
function CubicSplineN:set_dimension(d) end

--- Sets the number of dimensions the spline has.
--- <br>
--- Splines that are owned by actors (the ones inside ActorMultiVertex and NCSplineHandler) cannot have
--- their number of dimensions changed because the actors require them to have 3 dimensions.
--- <br>
--- Alias of `CubicSplineN.set_dimension()`.
function CubicSplineN:SetDimension(d) end

--- Sets whether the spline is dirty. A dirty spline is one that has been changed in some way that affects
--- its shape. When solve() is called, the spline will only be solved if it is dirty. The dirty flag is
--- automatically set by everything, so you should never have to call this function.
function CubicSplineN:set_dirty() end

--- Sets whether the spline is dirty. A dirty spline is one that has been changed in some way that affects
--- its shape. When solve() is called, the spline will only be solved if it is dirty. The dirty flag is
--- automatically set by everything, so you should never have to call this function.
--- <br>
--- Alias of `CubicSplineN.set_dirty()`.
function CubicSplineN:SetDirty() end

--- Sets whether the spline is looped. A looped spline is one where the end point is connected to the start
--- point.
function CubicSplineN:set_loop() end

--- Sets whether the spline is looped. A looped spline is one where the end point is connected to the start
--- point.
--- <br>
--- Alias of `CubicSplineN.set_loop()`.
function CubicSplineN:SetLoop() end

--- Sets point `i` of the spline to the position specified by the table `p`.
function CubicSplineN:set_point(i, p) end

--- Sets point `i` of the spline to the position specified by the table `p`.
--- <br>
--- Alias of `CubicSplineN.set_point()`.
function CubicSplineN:SetPoint(i, p) end

--- Sets whether the spline is polygonal. If the spline is polygonal, then it will have straight lines between
--- the points instead of curves.
function CubicSplineN:set_polygonal() end

--- Sets whether the spline is polygonal. If the spline is polygonal, then it will have straight lines between
--- the points instead of curves.
--- <br>
--- Alias of `CubicSplineN.set_polygonal()`.
function CubicSplineN:SetPolygonal() end

--- Sets the number of points in the spline. You must set the number of points before trying to set the position
--- of any point.
function CubicSplineN:set_size(s) end

--- Sets the number of points in the spline. You must set the number of points before trying to set the position
--- of any point.
--- <br>
--- Alias of `CubicSplineN.set_size()`.
function CubicSplineN:SetSize(s) end

--- Sets the spatial extent of dimension `d` of the spline to `e`.
--- <br>
--- The spatial extent exists to handle numbers that exist in a finite looped space, instead of the flat infinite
--- space.
--- <br>
--- To put it more concretely, spatial extent exists to allow a spline to control rotation with wrapping behavior
--- at 0.0 and 2pi, instead of suddenly jerking from 2pi to 0.0.
function CubicSplineN:set_spatial_extent(d, e) end

--- Sets the spatial extent of dimension `d` of the spline to `e`.
--- <br>
--- The spatial extent exists to handle numbers that exist in a finite looped space, instead of the flat infinite
--- space.
--- <br>
--- To put it more concretely, spatial extent exists to allow a spline to control rotation with wrapping behavior
--- at 0.0 and 2pi, instead of suddenly jerking from 2pi to 0.0.
--- <br>
--- Alias of `CubicSplineN.set_spatial_extent()`.
function CubicSplineN:SetSpatialExtent(d, e) end

--- Solves the spline, setting the coefficients.
function CubicSplineN:solve() end

--- Solves the spline, setting the coefficients.
--- <br>
--- Alias of `CubicSplineN.solve()`.
function CubicSplineN:Solve() end
