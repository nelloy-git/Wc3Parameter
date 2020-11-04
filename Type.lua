--=========
-- Include
--=========

local Class = LibManager.getDepency('LuaClass')

--=======
-- Class
--=======

local ParameterType = Class.new('ParameterType')
---@class ParameterType
local public = ParameterType.public
---@class ParameterTypeClass
local static = ParameterType.static
---@type ParameterTypeClass
local override = ParameterType.override
local private = {}

--=========
-- Private
--=========

private.data = setmetatable({}, {__mode = 'k'})

---@param name string
---@param str_color string
---@param min number
---@param max number
---@return ParameterType
function private.new(name, str_color, min, max)
    local self = Class.allocate(ParameterType)

    local priv = {
        name = name,
        str_color = str_color,
        min = min,
        max = max
    }
    private.data[self] = priv

    return self
end

--========
-- Static
--========

override.enum = {
    PATK = private.new('PATK', 'FFFFFFFF', -(10^10), 10^10),
    PSPD = private.new('PSPD', 'FFFFFFFF', -(10^10), 10^10),
    PDEF = private.new('PDEF', 'FFFFFFFF', -(10^10), 10^10),
    PRES = private.new('PRES', 'FFFFFFFF', -(10^10),     1),
    MATK = private.new('MATK', 'FFFFFFFF', -(10^10), 10^10),
    MSPD = private.new('MSPD', 'FFFFFFFF', -(10^10), 10^10),
    MDEF = private.new('MDEF', 'FFFFFFFF', -(10^10), 10^10),
    MRES = private.new('MRES', 'FFFFFFFF', -(10^10),     1),
    CRIT = private.new('CRIT', 'FFFFFFFF', -(10^10),     1),
    LIFE = private.new('LIFE', 'FFFFFFFF',       10, 10^10),
    REGE = private.new('REGE', 'FFFFFFFF', -(10^10), 10^10),
    MANA = private.new('MANA', 'FFFFFFFF',       10, 10^10),
    RECO = private.new('RECO', 'FFFFFFFF', -(10^10), 10^10),
    MOVE = private.new('MOVE', 'FFFFFFFF', -(10^10),   500),
}

--========
-- Public
--========

---@return string
function public:getName()
    return private.data[self].name
end

---@return string
function public:getStrColor()
    return private.data[self].str_color
end

---@return number
function public:getMin()
    return private.data[self].min
end

---@return number
function public:getMax()
    return private.data[self].max
end

return static