---@meta

---@class MersenneTwister
MersenneTwister = {}

--- Returns a random number. Without arguments, the number is in the range `0..1`.
--- With a single argument (`n`), the number is in the range of `1..n`. With two
--- arguments (`lower`, `upper`), the number is in the range of `l..u`.
---@param n? number
---@param upper? number
---@return number
function MersenneTwister.Random(n, upper) end

--- Sets the seed of the random number generator to `seed`.
---@param seed integer
function MersenneTwister.Seed(seed) end
