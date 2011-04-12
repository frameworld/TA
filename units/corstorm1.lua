-- UNITDEF -- CORSTORM1 --
--------------------------------------------------------------------------------

local unitName = "corstorm1"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.108,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.188,
  buildCostEnergy    = 853,
  buildCostMetal     = 131,
  builder            = false,
  buildPic           = [[CORSTORM.DDS]],
  buildTime          = 1722,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[CORE KBOT MOBILE WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
  corpse             = [[CORSTORM_DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Rocket Kbot]],
  energyMake         = 0.6,
  energyStorage      = 0,
  energyUse          = 0.6,
  explodeAs          = [[BIG_UNITEX]],
  firestandorders    = 1,
  footprintX         = 2,
  footprintZ         = 2,
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 640,
  maxDamage          = 970,
  maxSlope           = 14,
  maxVelocity        = 2.15,
  maxWaterDepth      = 21,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[KBOT2]],
  name               = [[upg Storm]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[CORSTORM1]],
  seismicSignature   = 0,
  selfDestructAs     = [[BIG_UNIT]],
  side               = [[CORE]],
  sightDistance      = 344.5,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  turnRate           = 1103,
  unitname           = [[corstorm1]],
  upright            = true,
  workerTime         = 0,
  sfxtypes = {
    explosiongenerators = {
      [[custom:rocketflare]],
    },
  },
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
      [[kbcormov]],
    },
    select = {
      [[kbcorsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[CORE_KBOT_ROCKET1]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  CORE_KBOT_ROCKET1 = {
    areaOfEffect       = 48,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:VSMLMISSILE_EXPLOSION]],
    fireStarter        = 70,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[missile]],
    name               = [[Rockets]],
    noSelfDamage       = true,
    range              = 605,
    reloadtime         = 2.4,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[xplosml2]],
    soundStart         = [[rocklit1]],
    startsmoke         = 1,
    startVelocity      = 190,
    texture2           = [[coresmoketrail]],
    trajectoryHeight   = 0.65,
    turret             = true,
    weaponAcceleration = 120,
    weaponTimer        = 2,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 190,
    damage = {
      default            = 167,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  CORSTORM_DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = 402,
    description        = [[Storm Wreckage]],
    energy             = 0,
    featureDead        = [[CORSTORM_HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 20,
    hitdensity         = 100,
    metal              = 55,
    object             = [[CORSTORM_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  CORSTORM_HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 201,
    description        = [[Storm Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = 22,
    object             = [[2X2C]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------