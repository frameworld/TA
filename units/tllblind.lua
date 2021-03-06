-- UNITDEF -- TLLBLIND --
--------------------------------------------------------------------------------

local unitName = "tllblind"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.06,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.15,
  buildCostEnergy    = 45875,
  buildCostMetal     = 6540,
  builder            = false,
  buildTime          = 243145,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[TLL KBOT LEVEL3 WEAPON NOTAIR NOTSUB]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Heavy Armored Riot Kbot]],
  designation        = [[TLL-BLD]],
  energyMake         = 1.8,
  energyStorage      = 0,
  energyUse          = 0.8,
  explodeAs          = [[BIG_UNITEX]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  frenchdescription  = [[Kbot d'assaut blind�]],
  germandescription  = [[Gepanzerter Gefechts-Kbot]],
  italiandescription = [[Kbot armato d'assalto]],
  maneuverleashlength = 640,
  mass               = 1e+12,
  maxDamage          = 56900,
  maxSlope           = 14,
  maxVelocity        = 0.99,
  maxWaterDepth      = 21,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[hkbot4]],
  name               = [[Dreadnought]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[TLLBLIND]],
  ovradjust          = 1,
  radarDistance      = 0,
  selfDestructAs     = [[BANTHA_NUKE]],
  shootme            = 1,
  side               = [[TLL]],
  sightDistance      = 545,
  smoothAnim         = true,
  spanishdescription = [[Kbot de artiller�a pesada]],
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  threed             = 1,
  turnRate           = 950,
  unitname           = [[tllblind]],
  unitnumber         = 9103,
  upright            = true,
  version            = 1,
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
      def                = [[COR_GOL]],
      onlyTargetCategory = [[NOTAIR]],
          },
    [2]  = {
      def                = [[PACKO_MISSILE]],
         },
    [3]  = {
      def                = [[BLIND_LASER]],
      onlyTargetCategory = [[NOTAIR]],
     },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  BLIND_LASER = {
    areaOfEffect       = 10,
    beamWeapon         = true,
    beamTime           = 0.55,
    coreThickness      = 1.8,
    color              = 83,
    color2             = 84,
    energypershot      = 78,
    explosionart       = [[explode5]],
    explosiongaf       = [[fx]],
    fireStarter        = 90,
    id                 = 239,
    lavaexplosionart   = [[lavasplashsm]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    name               = [[High Energy Laser]],
    range              = 450,
    reloadtime         = 1.95,
    renderType         = 0,
    soundHit           = [[lasrhit1]],
    soundStart         = [[Lasrmas2]],
    tolerance          = 800,
    turret             = true,
    waterexplosionart  = [[h2oboom1]],
    waterexplosiongaf  = [[fx]],
    weaponType         = [[LaserCannon]],
    weaponVelocity     = 1000,
    damage = {
      default            = 805,
      t3mechs            = 1600,
      t4mechs            = 2400,
    },
  },
  COR_GOL = {
    areaOfEffect       = 292,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH96]],
    gravityaffected    = [[true]],
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    name               = [[HeavyCannon]],
    noSelfDamage       = true,
    range              = 600,
    reloadtime         = 0.93,
    renderType         = 4,
    soundHit           = [[xplomed4]],
    soundStart         = [[cannhvy2]],
    startsmoke         = 1,
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 310,
    damage = {
      default            = 825,
      gunships           = 55,
      hgunships          = 55,
      l1bombers          = 55,
      l1fighters         = 55,
      l1subs             = 5,
      l2bombers          = 55,
      l2fighters         = 55,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 55,
      vtol               = 55,
      vtrans             = 55,
    },
  },
  PACKO_MISSILE = {
    areaOfEffect       = 16,
    burst              = 2,
    burstrate          = 0.2,
    canattackground    = false,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 0,
    explosionGenerator = [[custom:FLASH2]],
    fireStarter        = 72,
    flightTime         = 2,
    guidance           = true,
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[missile]],
    name               = [[AA2Missile]],
    noSelfDamage       = true,
    proximityPriority  = 1,
    range              = 900,
    reloadtime         = 1.1,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[packohit]],
    soundStart         = [[packolau]],
    soundTrigger       = true,
    startsmoke         = 1,
    startVelocity      = 520,
    texture2           = [[armsmoketrail]],
    toAirWeapon        = true,
    tolerance          = 9950,
    tracks             = true,
    turnRate           = 68000,
    turret             = true,
    weaponAcceleration = 160,
    weaponTimer        = 2,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 820,
    wobble             = 120,
    damage = {
      default            = 560,
      gunships           = 95,
      hgunships          = 95,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[tll_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[tllblind_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Wreckage]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[3x3c]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
