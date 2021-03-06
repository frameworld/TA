-- UNITDEF -- CORMLS --
--------------------------------------------------------------------------------

local unitName = "cormls"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.046,
  bmcode             = 1,
  brakeRate          = 0.06,
  buildCostEnergy    = 3902,
  buildCostMetal     = 241,
  buildDistance      = 200,
  builder            = true,
  buildPic           = [[CORMLS.png]],
  buildTime          = 5352,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL NOWEAPON NOTSUB NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Naval Engineer]],
  energyMake         = 0.5,
  energyStorage      = 0,
  energyUse          = 0.5,
  explodeAs          = [[SMALL_UNITEX]],
  floater            = true,
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = [[sea]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 640,
  maxDamage          = 1438,
  maxVelocity        = 2.1,
  metalStorage       = 0,
  minWaterDepth      = 15,
  mobilestandorders  = 1,
  movementClass      = [[BOAT4]],
  name               = [[Pathfinder]],
  noAutoFire         = false,
  objectName         = [[CORMLS]],
  seismicSignature   = 0,
  selfDestructAs     = [[SMALL_UNIT]],
  side               = [[core]],
  sightDistance      = 260,
  smoothAnim         = true,
  standingmoveorder  = 1,
  steeringmode       = 1,
  terraformSpeed     = 1200,
  turnRate           = 377,
  unitname           = [[cormls]],
  workerTime         = 400,
  buildoptions = {
    [[cortide]],
    [[coruwmex]],
    [[corasy]],
    [[csubpen]],
    [[corfhp]],
    [[corhevsenan]],
    [[coreyes]],
    [[corfrad]],
    [[corsonar]],
    [[corfmine3]],
    [[corfhlt]],
    [[cortl]],
    [[corfrt]],
    [[corcs]],
    [[corpt]],
    [[coresupp]],
    [[corroy]],
    [[corsub]],
    [[cormuskrat]],
    [[corbats]],
  },
  sounds = {
    build              = [[nanlath2]],
    canceldestruct     = [[cancel2]],
    repair             = [[repair2]],
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
      [[shcormov]],
    },
    select = {
      [[shcorsel]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Pathfinder Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[CORMLS_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Pathfinder Heap]],
    energy             = 0,
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[4X4A]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
