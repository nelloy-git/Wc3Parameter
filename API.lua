LibManager.startLib('Wc3Parameter')

--===========
-- Depencies
--===========

LibManager.addDepency('LuaClass', 'https://github.com/nelloy-git/LuaClass.git')
LibManager.addDepency('Wc3Utils', 'https://github.com/nelloy-git/Wc3Utils.git')

--=====
-- API
--=====

---@class Wc3Parameter
local Wc3Parameter = {}

---@type ParameterTypeClass
local ParameterType = require('Type') or error('')
---@type ParameterValueTypeClass
local ParameterValueType = require('ValueType') or error('')
---@type ParameterContainerClass
Wc3Parameter.Container = require('Container') or error('')
---@type ParameterContainerUnitClass
Wc3Parameter.UnitContainer = require('Container.Unit') or error('')

LibManager.endLib()

return Wc3Parameter