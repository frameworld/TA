-- UNITDEF -- ARMEVP --
--------------------------------------------------------------------------------

local unitName = "armevp"

--------------------------------------------------------------------------------

local unitDef = {
  bmcode             = 0,
  buildAngle         = 1024,
  buildCostEnergy    = 21800,
  buildCostMetal     = 7248,
  builder            = true,
  buildingGroundDecalDecaySpeed = 3000,
  buildingGroundDecalSizeX = 9,
  buildingGroundDecalSizeY = 7,
  buildingGroundDecalType = [[asphalt512.dds]],
  buildTime          = 69990,
  canMove            = false,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ARM PLANT LEVEL3 NOWEAPON NOTAIR NOTSUB]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  description        = [[Produces T3 Vehicles]],
  designation        = [[ARMEVP]],
  energyStorage      = 500,
  energyUse          = 0,
  explodeAs          = [[LARGE_BUILDINGEX]],
  firestandorders    = 1,
  footprintX         = 8,
  footprintZ         = 7,
  frenchdescription  = [[Produit des v�hicules]],
  frenchname         = [[Usine de v�hicules extr�me]],
  germandescription  = [[Baut Fahrzeuge]],
  germanname         = [[Extreme Fahrzeugfabrik]],
  maxDamage          = 12820,
  maxSlope           = 10,
  maxWaterDepth      = 0,
  metalStorage       = 500,
  mobilestandorders  = 1,
  name               = [[Experimental Vehicle Plant]],
  noAutoFire         = false,
  objectName         = [[ARMEVP]],
  radarDistance      = 0,
  selfDestructAs     = [[LARGE_BUILDING]],
  side               = [[ARM]],
  sightDistance      = 230,
  sortbias           = 0,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  threed             = 1,
  unitname           = [[armevp]],
  unitnumber         = 3336,
  useBuildingGroundDecal = true,
  version            = 1,
  workerTime         = 250,
  yardMap            = [[occoocco occcccco occcccco occcccco occcccco occcccco occcccco]],
  zbuffer            = 1,
  buildoptions = {
    [[avtr]],
    [[armsiege]],
    [[nsaagriz]],
    [[armmlrs]],
    [[champ]],
    [[armantar]],
    [[corerex]],
  },
  sounds = {
    build              = [[pvehwork]],
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
      [[pvehactv]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[arm_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Experimental Vehicle Plant Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 8,
    footprintZ         = 7,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[armevp_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Experimental Vehicle Plant Heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 8,
    footprintZ         = 7,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[6x6d]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
