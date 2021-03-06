-- UNITDEF -- ARMUWADVMS --
--------------------------------------------------------------------------------

local unitName = "armuwadvms"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = 0,
  buildAngle         = 5049,
  buildCostEnergy    = 10493,
  buildCostMetal     = 705,
  builder            = false,
  buildPic           = [[ARMUWADVMS.png]],
  buildTime          = 20391,
  category           = [[ALL NOTSUB NOWEAPON NOTAIR]],
  corpse             = [[DEAD]],
  description        = [[Increases Metal Storage (10000)]],
  designation        = [[CP-AUMS]],
  downloadable       = 1,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = [[LARGE_BUILDINGEX]],
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 9300,
  maxSlope           = 20,
  maxWaterDepth      = 9999,
  metalStorage       = 10000,
  name               = [[Hardened Metal Storage]],
  noAutoFire         = false,
  noshadow           = 1,
  objectName         = [[ARMUWADVMS]],
  seismicSignature   = 0,
  selfDestructAs     = [[LARGE_BUILDING]],
  side               = [[ARM]],
  sightDistance      = 195,
  smoothAnim         = true,
  threed             = 1,
  unitname           = [[armuwadvms]],
  version            = 1.2,
  workerTime         = 0,
  yardMap            = [[oooooooooooooooo]],
  zbuffer            = 1,
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    select = {
      [[stormtl1]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Advanced Metal Storage Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 9,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMUWADVMS_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[all]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Advanced Metal Storage Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 4,
    footprintZ         = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[4X4A]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[all]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
