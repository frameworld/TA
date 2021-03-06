-- UNITDEF -- CORFHP --
--------------------------------------------------------------------------------

local unitName = "corfhp"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  bmcode             = 0,
  brakeRate          = 0,
  buildCostEnergy    = 5082,
  buildCostMetal     = 1100,
  builder            = true,
  buildPic           = [[CORFHP.png]],
  buildTime          = 17817,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL PLANT NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR]],
  corpse             = [[DEAD]],
  description        = [[Builds Hovercraft]],
  energyStorage      = 200,
  energyUse          = 0,
  explodeAs          = [[LARGE_BUILDINGEX]],
  firestandorders    = 1,
  footprintX         = 8,
  footprintZ         = 7,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 3356,
  maxVelocity        = 0,
  metalStorage       = 200,
  minWaterDepth      = 30,
  mobilestandorders  = 1,
  name               = [[Floating Hovercraft Platform]],
  noAutoFire         = false,
  objectName         = [[CORFHP]],
  radarDistance      = 50,
  seismicSignature   = 0,
  selfDestructAs     = [[LARGE_BUILDING]],
  side               = [[CORE]],
  sightDistance      = 312,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  turnRate           = 0,
  unitname           = [[corfhp]],
  waterline          = 5,
  workerTime         = 200,
  yardMap            = [[wCCCCCCwwCCCCCCwwCCCCCCwwCCCCCCwwCCCCCCwwCCCCCCwwCCCCCCw]],
  buildoptions = {
    [[corch]],
    [[corsh]],
    [[corsnap]],
    [[corah]],
    [[cormh]],
    [[corthovr]],
    [[nsaclash]],
  },
  sounds = {
    build              = [[hoverok2]],
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    unitcomplete       = [[untdone]],
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    select = {
      [[hoversl2]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = false,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Floating Hovercraft Platform Wreckage]],
    energy             = 0,
    footprintX         = 8,
    footprintZ         = 7,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[CORFHP_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
