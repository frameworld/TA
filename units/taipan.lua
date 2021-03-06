-- UNITDEF -- TAIPAN --
--------------------------------------------------------------------------------

local unitName = "taipan"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.06,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.21,
  buildCostEnergy    = 20234,
  buildCostMetal     = 464,
  builder            = false,
  buildTime          = 23659,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[KBOT MOBILE ALL NOTSUB NOWEAPON NOTAIR]],
  cloakCost          = 50,
  cloakCostMoving    = 100,
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Cloakable Assault KBot]],
  designation        = [[ARM-K-74]],
  downloadable       = 1,
  energyMake         = 51,
  energyStorage      = 500,
  energyUse          = 5,
  explodeAs          = [[SMALL_UNIT]],
  firestandorders    = 1,
  footprintX         = 2,
  footprintZ         = 2,
  frenchdescription  = [[Kbot d'assaut occultable]],
  frenchname         = [[K-74 Taipan]],
  germandescription  = [[Tarnbarer Angriffs Kbot]],
  germanname         = [[K-74 Taipan]],
  healtime           = 10,
  initCloaked        = true,
  italiandescription = [[Cloakable Assault KBot]],
  italianname        = [[K-74 Taipan]],
  maneuverleashlength = 640,
  maxDamage          = 1798,
  maxSlope           = 19,
  maxVelocity        = 1.9,
  maxWaterDepth      = 14,
  metalStorage       = 0,
  minCloakDistance   = 40,
  mobilestandorders  = 1,
  movementClass      = [[KBOT2]],
  name               = [[K-74 Taipan]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[TAIPAN]],
  onoffable          = true,
  radarDistance      = 450,
  selfDestructAs     = [[BIG_UNITEX]],
  shootme            = 1,
  side               = [[ARM]],
  sightDistance      = 250,
  spanishdescription = [[Cloakable Assault KBot]],
  spanishname        = [[K-74 Taipan]],
  standingfireorder  = 2,
  standingmoveorder  = 1,
  stealth            = true,
  steeringmode       = 2,
  threed             = 1,
  turnRate           = 1005,
  unitname           = [[taipan]],
  unitnumber         = 345665,
  upright            = true,
  version            = 3,
  workerTime         = 0,
  zbuffer            = 1,
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
      badTargetCategory  = [[VTOL]],
      def                = [[ARM_FAST7]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[arm_FAST7]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [3]  = {
      def                = [[CORKBOT_ROCKET7]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  CORKBOT_ROCKET7 = {
    areaOfEffect       = 48,
    explosionart       = [[explode3]],
    explosiongaf       = [[fx]],
    explosionGenerator = [[custom:GDLIGHTROCKET]],
    fireStarter        = 70,
    id                 = 121,
    lavaexplosionart   = [[lavasplash]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[missile10]],
    name               = [[Rockets]],
    range              = 400,
    reloadtime         = 3.7,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = .1,
    smokeTrail         = true,
    soundHit           = [[xplosml2]],
    soundStart         = [[rocklit1]],
    startsmoke         = 1,
    startVelocity      = 250,
    turret             = true,
    waterexplosionart  = [[h2o]],
    waterexplosiongaf  = [[fx]],
    weaponAcceleration = 120,
    weaponTimer        = 2,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 250,
    damage = {
      default            = 300,
    },
  },
  arm_FAST7 = {
    areaOfEffect       = 8,
    beamWeapon         = true,
    burstrate          = .2,
    color              = 177,
    color2             = 57,
    duration           = .02,
    explosionart       = [[explode5]],
    explosiongaf       = [[fx]],
    explosionGenerator = [[custom:LASER]],
    fireStarter        = 50,
    id                 = 83,
    lavaexplosionart   = [[lavasplashsm]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    name               = [[Laser]],
    range              = 210,
    reloadtime         = .8,
    renderType         = 0,
    soundHit           = [[lashit]],
    soundStart         = [[lasrfast]],
    soundTrigger       = true,
    turret             = true,
    waterexplosionart  = [[h2oboom1]],
    waterexplosiongaf  = [[fx]],
    weaponType         = [[LaserCannon]],
    weaponVelocity     = 400,
    damage = {
      default            = 135,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[arm_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Taipan Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[taipan_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Taipan Debris]],
    featurereclamate   = [[smudge01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[2x2c]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
