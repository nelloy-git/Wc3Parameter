--=========
-- Include
--=========

local Class = LibManager.getDepency('LuaClass') or error('')
---@type Wc3Utils
local Wc3Utils = LibManager.getDepency('Wc3Utils') or error('')
local isTypeErr = Wc3Utils.isTypeErr or error('')
local Log = Wc3Utils.Log or error('')

---@type ParameterValueTypeClass
local ValueType = require('ValueType') or error('')

--=======
-- Class
--=======

local ParameterValue = Class.new('ParameterValue')
---@class ParameterValue
local public = ParameterValue.public
---@class ParameterValueClass
local static = ParameterValue.static
---@type ParameterValueClass
local override = ParameterValue.override
local private = {}

--========
-- Static
--========

---@return ParameterValue
function override.new()
    local instance = Class.allocate(ParameterValue)
    private.newData(instance)

    return instance
end

--========
-- Public
--========

---@param val_type ParameterValueType
---@param val number
function public:add(val_type, val)
    isTypeErr(val_type, ValueType, 'val_type')
    isTypeErr(val, 'number', 'val')
    local priv = private.data[self]

    priv.list[val_type] = priv.list[val_type] + val
    priv.res = ValueType.getResult(priv.list)

    return priv.res
end

---@param val_type ParameterValueType
---@return number
function public:get(val_type)
    isTypeErr(val_type, ValueType, 'val_type')
    return private.data[self].list[val_type]
end

---@return number
function public:getResult()
    return private.data[self].res
end

--=========
-- Private
--=========

private.data = setmetatable({}, {__mode = 'k'})

---@param self ParameterValue
function private.newData(self)
    local priv = {
        list = ValueType.newList(),
        res = 0,
    }
    private.data[self] = priv
end

return static