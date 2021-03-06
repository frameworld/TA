-- UNITDEF -- ARMROY --
--------------------------------------------------------------------------------

local unitName = "armroy"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.054,
  activateWhenBuilt  = true,
  badTargetCategory  = [[SHIP]],
  bmcode             = 1,
  brakeRate          = 0.13,
  buildAngle         = 16384,
  buildCostEnergy    = 5671,
  buildCostMetal     = 987,
  builder            = false,
  buildPic           = [[ARMROY.png]],
  buildTime          = 13391,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[Standby]],
  description        = [[Destroyer]],
  energyMake         = 2,
  energyStorage      = 0,
  energyUse          = 2,
  explodeAs          = [[BIG_UNITEX]],
  firestandorders    = 1,
  floater            = true,
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = [[sea]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 640,
  maxDamage          = 2575,
  maxVelocity        = 3.34,
  metalStorage       = 0,
  minWaterDepth      = 12,
  mobilestandorders  = 1,
  movementClass      = [[BOAT4]],
  name               = [[Crusader]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[ARMROY]],
  scale              = 0.5,
  seismicSignature   = 0,
  selfDestructAs     = [[BIG_UNIT]],
  side               = [[ARM]],
  sightDistance      = 490,
  smoothAnim         = true,
  sonarDistance      = 400,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  turnRate           = 199,
  unitname           = [[armroy]],
  workerTime         = 0,
  waterline          = 1,
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
      [[sharmmov]],
    },
    select = {
      [[sharmsel]],
    },
  },
  weapons = {
    [1]  = {
      def                = [[ARM_ROY]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[DEPTHCHARGE]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARM_ROY = {
    areaOfEffect       = 32,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH3]],
    gravityaffected    = [[true]],
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    minbarrelangle     = -25,
    name               = [[HeavyCannon]],
    noSelfDamage       = true,
    range              = 600,
    reloadtime         = 1.4,
    renderType         = 4,
    soundHit           = [[xplomed2]],
    soundStart         = [[cannon3]],
    startsmoke         = 1,
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 300,
    damage = {
      default            = 160,
      gunships           = 41,
      hgunships          = 41,
      l1bombers          = 41,
      l1fighters         = 41,
      l1subs             = 5,
      l2bombers          = 41,
      l2fighters         = 41,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 41,
      vtol               = 41,
      vtrans             = 41,
    },
  },
  DEPTHCHARGE = {
    areaOfEffect       = 32,
    avoidFriendly      = false,
    burnblow           = true,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.99,
    explosionGenerator = [[custom:FLASH2]],
    guidance           = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    model              = [[DEPTHCHARGE]],
    name               = [[DepthCharge]],
    noSelfDamage       = true,
    propeller          = 1,
    range              = 400,
    reloadtime         = 2.5,
    renderType         = 1,
    selfprop           = true,
    soundHit           = [[xplodep2]],
    soundStart         = [[torpedo1]],
    startVelocity      = 100,
    tolerance          = 1000,
    tracks             = true,
    turnRate           = 1700,
    turret             = true,
    waterWeapon        = true,
    weaponAcceleration = 15,
    weaponTimer        = 3,
    weaponType         = [[TorpedoLauncher]],
    weaponVelocity     = 100,
    damage = {
      default            = 210,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = false,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Crusader Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    footprintX         = 5,
    footprintZ         = 5,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[ARMROY_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Crusader Heap]],
    energy             = 0,
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[5X5B]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
