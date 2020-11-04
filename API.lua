LibManager.startLib('Wc3Parameter')

--===========
-- Depencies
--===========

LibManager.addDepency('LuaClass', 'https://github.com/nelloy-git/LuaClass.git')
--LibManager.addDepency('Wc3Damage', 'https://github.com/nelloy-git/Wc3Damage.git')
LibManager.addDepency('Wc3Utils', 'https://github.com/nelloy-git/Wc3Utils.git')

--=====
-- API
--=====

---@class Wc3Parameter
local Wc3Parameter = {}

---@type ParameterTypeModule
local ParameterTypeModule = require('Type') or error('')
Wc3Parameter.ParamType = ParameterTypeModule.Enum or error('')
Wc3Parameter.paramToStr = ParameterTypeModule.toStr or error('')
Wc3Parameter.paramToColor = ParameterTypeModule.toColor or error('')
---@type ParameterValueTypeModule
local ParameterValueTypeModule = require('ValueType') or error('')
Wc3Parameter.ValueType = ParameterValueTypeModule.Enum

---@type ParameterContainerClass
Wc3Parameter.Container = require('Container') or error('')
---@type ParameterContainerUnitClass
Wc3Parameter.UnitContainer = require('Container.Unit') or error('')

---@type ParameterDamageEvent
local DamageEvent = require('Damage')

Lib.finish()

return Wc3Parameter