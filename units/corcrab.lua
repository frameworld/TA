-- UNITDEF -- CORCRAB --
--------------------------------------------------------------------------------

local unitName = "corcrab"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.251,
  activateWhenBuilt  = true,
  amphibious         = 1,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.152,
  buildCostEnergy    = 13510,
  buildCostMetal     = 2270,
  builder            = false,
  buildTime          = 20988,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[All Terrain Assault Kbot]],
  designation        = [[C-CB1]],
  downloadable       = 1,
  energyMake         = -2,
  energyStorage      = 0,
  energyUse          = 5,
  explodeAs          = [[BIG_UNIT]],
  firestandorders    = 1,
  footprintX         = 3,
  footprintZ         = 3,
  maneuverleashlength = 640,
  maxDamage          = 7655,
  maxVelocity        = 1.2,
  maxWaterDepth      = 100,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[AMPHKBOT]],
  name               = [[Tarantel]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[CORCRAB]],
  radarDistance      = 120,
  selfDestructAs     = [[BIG_UNIT]],
  shootme            = 1,
  side               = [[CORE]],
  sightDistance      = 320,
  sonarDistance      = 410,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  threed             = 1,
  turnRate           = 1020,
  unitname           = [[corcrab]],
  unitnumber         = 10005,
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
      [[kbcormov]],
    },
    select = {
      [[kbcorsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[COR_GOL2]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[CORE_LIGHTLASER2]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [3]  = {
      def                = [[CORSMART_TORPEDO2]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  CORE_LIGHTLASER2 = {
    areaOfEffect       = 8,
    beamlaser          = 1,
    beamTime           = 0.08,
    burnblow           = true,
    color              = 111,
    color2             = 33,
    energypershot      = 10,
    explosionart       = [[explode5]],
    explosiongaf       = [[fx]],
    explosionGenerator = [[custom:LASER6]],
    fireStarter        = 30,
    id                 = 81,
    impulseFactor      = 0,
    laserFlareSize     = 10,
    lavaexplosionart   = [[lavasplashsm]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    name               = [[Light Laser]],
    range              = 600,
    reloadtime         = .34,
    renderType         = 0,
    soundHit           = [[lasrhit2]],
    soundStart         = [[lasrfir3]],
    soundTrigger       = true,
    targetmoveerro     = 0.2,
    tolerance          = 700,
    turret             = true,
    waterexplosionart  = [[h2oboom1]],
    waterexplosiongaf  = [[fx]],
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 800,
    damage = {
      default            = 90,
    },
  },
  CORSMART_TORPEDO2 = {
    areaOfEffect       = 16,
    burnblow           = true,
    explosionart       = [[explode3]],
    explosiongaf       = [[fx]],
    guidance           = true,
    id                 = 13,
    lavaexplosionart   = [[lavasplashsm]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    model              = [[torpedo5]],
    name               = [[Guided Torpedo]],
    propeller          = 1,
    range              = 575,
    reloadtime         = 3.28,
    renderType         = 1,
    selfprop           = true,
    soundHit           = [[xplodep3]],
    soundStart         = [[torpedo2]],
    startVelocity      = 100,
    tolerance          = 32767,
    tracks             = true,
    turnRate           = 10000,
    turret             = false,
    waterexplosionart  = [[h2oboom1]],
    waterexplosiongaf  = [[fx]],
    waterWeapon        = true,
    weaponAcceleration = 15,
    weaponTimer        = 3,
    weaponType         = [[TorpedoLauncher]],
    weaponVelocity     = 100,
    damage = {
      armsub             = 600,
      corsub             = 600,
      default            = 310,
    },
  },
  COR_GOL2 = {
    areaOfEffect       = 210,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    explosionart       = [[explode2]],
    explosiongaf       = [[fx]],
    explosionGenerator = [[custom:HPLASMA]],
    gravityaffected    = [[true]],
    id                 = 62,
    intensity          = 1,
    lavaexplosionart   = [[lavasplash]],
    lavaexplosiongaf   = [[fx]],
    name               = [[Heavy Cannon]],
    range              = 520,
    reloadtime         = 5,
    renderType         = 4,
    rgbColor           = [[0 1 0]],
    rgbColor2          = [[1 1 1]],
    size               = 6,
    soundHit           = [[xplomed4]],
    soundStart         = [[cannhvy2]],
    startsmoke         = 1,
    thickness          = 2,
    turret             = true,
    waterexplosionart  = [[h2o]],
    waterexplosiongaf  = [[fx]],
    weaponType         = [[Cannon]],
    weaponVelocity     = 264.95281982422,
    damage = {
      default            = 1150,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[core_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Crab Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[corcrab_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Crab Heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[4x4a]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
