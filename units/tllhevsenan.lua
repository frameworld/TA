-- UNITDEF -- TLLHEVSENAN --
--------------------------------------------------------------------------------

local unitName = "tllhevsenan"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  brakeRate          = 1.5,
  buildCostEnergy    = 2389,
  buildCostMetal     = 523,
  buildDistance      = 600,
  builder            = true,
  buildPic           = [[armhevsenan.png]],
  buildTime          = 10232,
  canGuard           = true,
  canMove            = false,
  canPatrol          = true,
  canreclamate       = 1,
  canstop            = 1,
  cantBeTransported  = true,
  category           = [[TLL NOWEAPON NOTAIR NOTSUB ALL]],
  defaultmissiontype = [[Standby]],
  description        = [[Repairs and builds on big radius]],
  energyStorage      = 0,
  energyUse          = 30,
  explodeAs          = [[NANOBOOM2]],
  floater            = true,
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 380,
  mass               = 999999999999,
  maxDamage          = 600,
  maxSlope           = 10,
  maxVelocity        = 0.0,
  metalStorage       = 0,
  minWaterDepth      = 5,
  name               = [[Floating Nano Turret]],
  noAutoFire         = false,
  objectName         = [[armhevsenan.s3o]],
  reclaimSpeed       = 600,
  repairSpeed        = 500,
  seismicSignature   = 1,
  selfDestructAs     = [[TINY_BUILDINGEX]],
  side               = [[TLL]],
  sightDistance      = 420,
  smoothAnim         = true,
  steeringmode       = 1,
  turnRate           = 1,
  unitname           = [[armhevsenan]],
  upright            = true,
  waterline          = 7,
  workerTime         = 300,
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
