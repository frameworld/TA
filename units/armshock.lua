-- UNITDEF -- ARMSHOCK --
--------------------------------------------------------------------------------

local unitName = "armshock"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.023,
  badTargetCategory  = [[NOWEAPON]],
  bmcode             = 1,
  brakeRate          = 0.1,
  buildCostEnergy    = 54739,
  buildCostMetal     = 3120,
  builder            = false,
  buildPic           = [[ARMSHOCK.png]],
  buildTime          = 61218,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL NOTSUB WEAPON NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[All-Terrain Heavy Plasma Cannon]],
  explodeAs          = [[SHOCKER]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  highTrajectory     = 2,
  idleAutoHeal       = 5,
  idleTime           = 1800,
  immunetoparalyzer  = 1,
  maneuverleashlength = 640,
  mass               = 200000,
  maxDamage          = 15000,
  maxSlope           = 17,
  maxVelocity        = 1.1,
  maxWaterDepth      = 0,
  mobilestandorders  = 1,
  movementClass      = [[HTKBOT4]],
  name               = [[Vanguard]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[ARMSHOCK]],
  seismicSignature   = 0,
  selfDestructAs     = [[SHOCKER]],
  side               = [[ARM]],
  sightDistance      = 625,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 0,
  steeringmode       = 1,
  turnRate           = 231,
  unitname           = [[armshock]],
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
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
      [[kbarmmov]],
    },
    select = {
      [[kbarmsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[NOWEAPON]],
      def                = [[SHOCKER]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  SHOCKER = {
    areaOfEffect       = 256,
    avoidFeature       = false,
    avoidFriendly      = false,
    ballistic          = true,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.5,
    explosionGenerator = [[custom:FLASHSMALLBUILDING]],
    gravityaffected    = [[true]],
    heightBoostFactor  = 1.15,
    impulseBoost       = 1,
    impulseFactor      = 0.123,
    minbarrelangle     = -35,
    name               = [[ShockerHeavyCannon]],
    noSelfDamage       = true,
    predictBoost       = 1,
    range              = 1350,
    reloadtime         = 4,
    renderType         = 4,
    size               = 5,
    soundHit           = [[xplomed2]],
    soundStart         = [[cannhvy5]],
    targetBorder       = 1,
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 610,
    damage = {
      default            = 1250,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Vanguard Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMSHOCK_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Vanguard Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[4X4D]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
