-- UNITDEF -- ARMCSPID --
--------------------------------------------------------------------------------

local unitName = "armcspid"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.15,
  bmcode             = 1,
  brakeRate          = 0.15,
  buildCostEnergy    = 2865,
  buildCostMetal     = 117,
  buildDistance      = 90,
  builder            = true,
  buildTime          = 1896,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canreclamate       = 1,
  canstop            = 1,
  category           = [[ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Tech Level 1]],
  designation        = [[ARM-CSPID]],
  energyMake         = 0.7,
  energyStorage      = 65,
  energyUse          = 0.7,
  explodeAs          = [[BIG_UNITEX]],
  footprintX         = 3,
  footprintZ         = 3,
  maneuverleashlength = 640,
  maxDamage          = 879,
  maxVelocity        = 1.45,
  maxWaterDepth      = 27,
  metalStorage       = 65,
  mobilestandorders  = 1,
  movementClass      = [[TKBOT3]],
  name               = [[All-Terrain Construction Kbot]],
  noAutoFire         = false,
  objectName         = [[ARMCSPID]],
  ovradjust          = 1,
  radarDistance      = 50,
  selfDestructAs     = [[BIG_UNIT]],
  shootme            = 1,
  side               = [[ARM]],
  sightDistance      = 235,
  spanishdescription = [[Tecnología de Nivel 1]],
  spanishname        = [[Kbot Todoterreno de Constr.]],
  standingmoveorder  = 1,
  steeringmode       = 1,
  threed             = 1,
  turnRate           = 1020,
  unitname           = [[armcspid]],
  unitnumber         = 4333,
  version            = 1.2,
  workerTime         = 100,
  zbuffer            = 1,
  buildoptions = {
    [[corsolar]],
    [[coradvsol]],
    [[corwin]],
    [[corgeo]],
    [[cormstor]],
    [[corestor]],
    [[cormex]],
    [[corexp]],
    [[cormakr]],
    [[corlab]],
    [[corvp]],
    [[corap]],
    [[corsy]],
    [[corhp]],
    [[armblab]],
    [[cornanotc]],
    [[coreyes]],
    [[corrad]],
    [[cordrag]],
    [[cormaw]],
    [[corllt]],
    [[hllt]],
    [[corhlt]],
    [[corpun]],
    [[corrl]],
    [[madsam]],
    [[corerad]],
    [[cordl]],
    [[corjamt]],
    [[cjuno]],
    [[cmortor]],
    [[corech3]],
  },
  sounds = {
    build              = [[nanlath1]],
    canceldestruct     = [[cancel2]],
    capture            = [[capture1]],
    repair             = [[repair1]],
    underattack        = [[warning1]],
    working            = [[reclaim1]],
    cant = {
      [[cantdo4]],
    },
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    ok = {
      [[spider2]],
    },
    select = {
      [[spiderse]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[arm_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[All-Terrain Construction Kbot Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 40,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMCSPID_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[All-Terrain Construction Kbot Heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[3x3a]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
