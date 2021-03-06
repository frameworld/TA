-- UNITDEF -- ARM_FURIE --
--------------------------------------------------------------------------------

local unitName = "arm_furie"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.09,
  bmcode             = 1,
  brakeRate          = 0.20,
  buildCostEnergy    = 486664,
  buildCostMetal     = 35089,
  builder            = false,
  buildTime          = 502193,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  cantBeTransported  = true,
  category           = [[KBOT WEAPON ALL NOTSUB NOTAIR]],
  collisionvolumeoffsets = [[0 -10 -3]],
  collisionvolumescales = [[54 69 40]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[The Legendary Kbot]],
  designation        = [[ARM-KL]],
  downloadable       = 1,
  energyMake         = 1.1,
  energyStorage      = 0,
  energyUse          = 1.1,
  explodeAs          = [[NUCLEAR_MISSILE2]],
  firestandorders    = 1,
  footprintX         = 5,
  footprintZ         = 5,
  frenchdescription  = [[Kbot Expérimental]],
  germandescription  = [[Experimental-Kbot]],
  immunetoparalyzer  = 1,
  maneuverleashlength = 640,
  mass               = 200000,
  maxDamage          = 300489,
  maxSlope           = 17,
  maxVelocity        = 1.1,
  maxWaterDepth      = 12,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[VKBOT5]],
  name               = [[Arm Furie]],
  noAutoFire         = false,
  objectName         = [[ARM_FURIE]],
  radarDistance      = 0,
  selfDestructAs     = [[CRBLMSSL1]],
  selfDestructCountdown = 20,
  shootme            = 1,
  side               = [[ARM]],
  sightDistance      = 485,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  threed             = 1,
  turnRate           = 560,
  unitname           = [[arm_furie]],
  unitnumber         = 7218,
  version            = 3.1,
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
      [[krogok1]],
    },
    select = {
      [[krogsel1]],
    },
  },
  weapons = {
    [1]  = {
      def                = [[ARM_FURIE_HEAD]],
      onlyTargetCategory = [[Notair]],
    },
    [2]  = {
      def                = [[ARM_FURIE_FIRE]],
      onlyTargetCategory = [[Notair]],
    },
    [3]  = {
      def                = [[ARM_FURIE_ROCKET]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARM_FURIE_FIRE = {
    areaOfEffect       = 8,
    craterBoost        = 0,
    craterMult         = 0,
    explosionart       = [[explode5]],
    explosiongaf       = [[fx]],
    id                 = 238,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lavaexplosionart   = [[lavasplashsm]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    name               = [[Gauss Cannon2]],
    range              = 800,
    reloadtime         = .1,
    renderType         = 4,
    soundHit           = [[xplomed2]],
    soundStart         = [[gatling]],
    startsmoke         = 1,
    tolerance          = 10000,
    turret             = true,
    waterexplosionart  = [[h2oboom1]],
    waterexplosiongaf  = [[fx]],
    weaponType         = [[Cannon]],
    weaponVelocity     = 450,
    damage = {
      default            = 180,
    },
  },
  ARM_FURIE_HEAD = {
    areaOfEffect       = 8,
    beamWeapon         = true,
    color              = 148,
    color2             = 217,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 2100,
    explosionart       = [[explode5]],
    explosiongaf       = [[fx]],
    fireStarter        = 90,
    id                 = 217,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lavaexplosionart   = [[lavasplashsm]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    name               = [[Annihilator Weapon2]],
    range              = 1000,
    reloadtime         = 9,
    renderType         = 0,
    soundHit           = [[xplolrg1]],
    soundStart         = [[fireplasma]],
    tolerance          = 500,
    turret             = true,
    waterexplosionart  = [[h2oboom1]],
    waterexplosiongaf  = [[fx]],
    weaponType         = [[LaserCannon]],
    weaponVelocity     = 1500,
    damage = {
      commanders         = 2100,
      default            = 5000,
    },
  },
  ARM_FURIE_ROCKET = {
    areaOfEffect       = 80,
    craterBoost        = 0,
    craterMult         = 0,
    explosionart       = [[explode3]],
    explosiongaf       = [[fx]],
    fireStarter        = 70,
    flightTime         = 4,
    guidance           = true,
    id                 = 182,
    impulseBoost       = 0,
    impulseFactor      = 0,
    lavaexplosionart   = [[lavasplash]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[fmdmisl]],
    name               = [[Heavy Rockets2]],
    range              = 1100,
    reloadtime         = 1.1,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = .1,
    smokeTrail         = true,
    soundHit           = [[xplosml2]],
    soundStart         = [[rocklit1]],
    startsmoke         = 1,
    startVelocity      = 250,
    tolerance          = 9000,
    tracks             = true,
    turnRate           = 63000,
    vlaunch            = true,
    waterexplosionart  = [[h2o]],
    waterexplosiongaf  = [[fx]],
    weaponAcceleration = 200,
    weaponTimer        = 2,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 550,
    damage = {
      armaca             = 383,
      armatlas           = 383,
      armbrawl           = 383,
      armca              = 383,
      armfig             = 383,
      armhawk            = 383,
      armlance           = 383,
      armpeep            = 383,
      armpnix            = 383,
      armthund           = 383,
      coraca             = 383,
      corape             = 383,
      corca              = 383,
      corfink            = 383,
      corhurc            = 383,
      corshad            = 383,
      cortitan           = 383,
      corvalk            = 383,
      corvamp            = 383,
      corveng            = 383,
      default            = 700,
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
    description        = [[Legendary Wreckage]],
    featureDead        = [[furie_heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[arm_furie_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  furie_heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Legendary Heap]],
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
