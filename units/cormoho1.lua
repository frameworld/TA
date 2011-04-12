-- UNITDEF -- CORMOHO1 --
--------------------------------------------------------------------------------

local unitName = "cormoho1"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  activateWhenBuilt  = true,
  bmcode             = 0,
  brakeRate          = 0,
  buildAngle         = 2048,
  buildCostEnergy    = 7677,
  buildCostMetal     = 598,
  builder            = false,
  buildPic           = [[CORMOHO.DDS]],
  buildTime          = 14125,
  category           = [[ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR]],
  corpse             = [[CORMOHO_DEAD]],
  damageModifier     = 0.25,
  description        = [[Advanced Metal Extractor / Storage]],
  energyStorage      = 0,
  energyUse          = 45,
  explodeAs          = [[SMALL_BUILDINGEX]],
  extractsMetal      = 0.0040,
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 8000,
  maxSlope           = 20,
  maxVelocity        = 0,
  maxWaterDepth      = 20,
  metalStorage       = 1000,
  name               = [[Safe Moho Mine]],
  noAutoFire         = false,
  objectName         = [[CORMOHO1]],
  onoffable          = true,
  script             = [[cormoho.cob]],
  seismicSignature   = 0,
  selfDestructAs     = [[SMALL_BUILDING]],
  side               = [[CORE]],
  sightDistance      = 273,
  smoothAnim         = true,
  TEDClass           = [[METAL]],
  turnRate           = 0,
  unitname           = [[cormoho1]],
  workerTime         = 0,
  yardMap            = [[ooooooooooooooooooooooooo]],
  sounds = {
    activate           = [[mohorun2]],
    canceldestruct     = [[cancel2]],
    deactivate         = [[mohooff2]],
    underattack        = [[warning1]],
    working            = [[mohorun2]],
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    ok = {
      [[twractv3]],
    },
    select = {
      [[mohoon2]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  CORMOHO_DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = 2100,
    description        = [[Moho Mine Wreckage]],
    energy             = 0,
    featureDead        = [[CORMOHO_HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 5,
    footprintZ         = 5,
    height             = 20,
    hitdensity         = 100,
    metal              = 318,
    object             = [[CORMOHO_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  CORMOHO_HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 1050,
    description        = [[Moho Mine Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 5,
    footprintZ         = 5,
    height             = 4,
    hitdensity         = 100,
    metal              = 137,
    object             = [[5X5A]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------