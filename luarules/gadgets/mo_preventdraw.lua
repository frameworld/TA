--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
  return {
    name      = "mo_preventdraw",
    desc      = "mo_preventdraw",
    author    = "TheFatController",
    date      = "Aug 31, 2009",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

if (not gadgetHandler:IsSyncedCode()) then
  return false
end

if (Spring.GetModOptions().deathmode~="com") and (not Game.commEnds) then
  return false
end

local enabled = tonumber(Spring.GetModOptions().mo_preventdraw) or 0

if (enabled == 0) then 
  return false
end

local GetAllUnits = Spring.GetAllUnits

local COM_BLAST = {
  [WeaponDefNames['commander_blast1'].id] = true,
  [WeaponDefNames['commander_blast4'].id] = true,
  [WeaponDefNames['commander_blast5'].id] = true,
  [WeaponDefNames['commander_blast6'].id] = true,
  [WeaponDefNames['commander_blast7'].id] = true,
  [WeaponDefNames['commander_blast8'].id] = true,
}

local DGUN = {
  [WeaponDefNames['armcom_arm_disintegrator'].id] = true,
  [WeaponDefNames['armcom1_arm_disintegrator'].id] = true,
  [WeaponDefNames['armcom4_arm_disintegrator1'].id] = true,
  [WeaponDefNames['armcom5_arm_disintegrator2'].id] = true,
  [WeaponDefNames['armcom6_arm_disintegrator2'].id] = true,
  [WeaponDefNames['armcom7_arm_disintegrator2'].id] = true,
  [WeaponDefNames['corcom_arm_disintegrator'].id] = true,
  [WeaponDefNames['corcom1_arm_disintegrator'].id] = true,
  [WeaponDefNames['corcom3_arm_disintegrator1'].id] = true,
  [WeaponDefNames['corcom5_arm_disintegrator2'].id] = true,
  [WeaponDefNames['corcom6_arm_disintegrator2'].id] = true,
  [WeaponDefNames['corcom7_arm_disintegrator2'].id] = true,
  [WeaponDefNames['tllcom_arm_disintegrator3'].id] = true,
  [WeaponDefNames['tllcom3_tll_disintegrator1'].id] = true,
  [WeaponDefNames['tllcom5_tll_disintegrator2'].id] = true,
  [WeaponDefNames['tllcom6_tll_disintegrator2'].id] = true,
  [WeaponDefNames['tllcom7_tll_disintegrator2'].id] = true,
}

local COMMANDER = {
  [UnitDefNames["corcom"].id] = true,
  [UnitDefNames["armcom"].id] = true,
}

local watchList = {}

local immuneCom = nil
local ctrlCom = nil
local cantFall = nil

function gadget:UnitPreDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, 
                            weaponID, attackerID, attackerDefID, attackerTeam)  
  if cantFall and (cantFall == unitID) and (weaponID < 0) then      
    return 0, 0
  end     
  if (weaponID == DGUN) then
    if (immuneCom == unitID) then
      return 0, 0
    elseif COMMANDER[attackerDefID] and COMMANDER[unitDefID] then
      for _, uID in ipairs(GetAllUnits()) do
        if (uID ~= unitID) and (uID ~= attackerID) then
          if COMMANDER[Spring.GetUnitDefID(uID)] then
            return damage
          end
        end
      end
      immuneCom = unitID
      watchList[unitID] = Spring.GetGameFrame() + 30
      Spring.DestroyUnit(attackerID,false,false,unitID)
      Spring.Echo("Commander Ends No Draw: Reversal of Fortune!")
      return 0, 0
    end             
  elseif (weaponID == COM_BLAST) and COMMANDER[unitDefID] then
    for _, uID in ipairs(GetAllUnits()) do
      if uID ~= unitID then
        if COMMANDER[Spring.GetUnitDefID(uID)] and (not Spring.GetUnitIsDead(uID)) then
          return damage
        end
      end
    end
    Spring.MoveCtrl.Enable(unitID)
    ctrlCom = unitID
    cantFall = unitID
    watchList[unitID] = Spring.GetGameFrame() + 30
    return 0, 0
  end
  return damage,1
end

function gadget:GameFrame(n)
  for unitID,t in pairs(watchList) do
    if (n > t) then
      if (immuneCom == unitID) then
        immuneCom = nil
        break
      elseif (ctrlCom == unitID) then
        local x,_,z = Spring.GetUnitPosition(unitID)
        local y = Spring.GetGroundHeight(x,z) 
        Spring.MoveCtrl.SetPosition(unitID, x,y,z)
        Spring.MoveCtrl.Disable(unitID)
        watchList[unitID] = Spring.GetGameFrame() + 220
        ctrlCom = nil
        break
      elseif (cantFall == unitID) then
        cantFall = nil
        break
      else
        watchList[unitID] = nil
      end     
    end
  end 
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------