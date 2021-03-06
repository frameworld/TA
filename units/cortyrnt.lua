-- UNITDEF -- CORTYRNT --
--------------------------------------------------------------------------------

local unitName = "cortyrnt"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.015,
  activateWhenBuilt  = true,
  bmcode             = 1,
  brakeRate          = 0.03,
  buildAngle         = 16384,
  buildCostEnergy    = 879466,
  buildCostMetal     = 42496,
  buildTime          = 366872,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[CORE MOBILE WEAPON NOTAIR NOTSUB NOTLAND ALL]],
  collisionvolumeoffsets = [[0 -16 0]],
  collisionvolumescales = [[74 98 228]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  corpse             = [[dead]],
  damageModifier     = 0.5,
  defaultmissiontype = [[Standby]],
  description        = [[Super Battleship]],
  designation        = [[SB-AS9U]],
  energyMake         = 50,
  energyStorage      = 1500,
  energyUse          = 0,
  explodeAs          = [[NUCLEAR_BLAST]],
  firestandorders    = 1,
  floater            = true,
  footprintX         = 8,
  footprintZ         = 8,
  iconType           = [[sea]],
  immunetoparalyzer  = 1,
  maneuverleashlength = 640,
  maxDamage          = 93025,
  maxVelocity        = 1.75,
  metalStorage       = 0,
  minWaterDepth      = 30,
  mobilestandorders  = 1,
  movementClass      = [[HDBOAT8]],
  name               = [[Tyrant]],
  noAutoFire         = false,
  objectName         = [[CORTYRNT]],
  radarDistance      = 2000,
  selfDestructAs     = [[NUCLEAR_BLAST]],
  side               = [[CORE]],
  sightDistance      = 1024,
  sonarDistance      = 0,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  turnRate           = 96,
  unitname           = [[cortyrnt]],
  unitnumber         = 27174,
  waterline          = 6,
  weapon4_badtargetcategory = [[ANTILASER]],
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
      badTargetCategory  = [[VTOL]],
      def                = [[CANNON_TYRNT]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[ROCKET_KROG]],
      onlyTargetCategory = [[VTOL]],
    },
    [3]  = {
      def                = [[BLOD_DOOM]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [4]  = {
      def                = [[BLOD_DOOM]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  BLOD_DOOM = {
    areaOfEffect       = 32,
    beamlaser          = 1,
    beamTime           = 0.3,
    coreThickness      = 0.3,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 1250,
    explosionGenerator = [[custom:FLASH3blue]],
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    laserFlareSize     = 22,
    lineOfSight        = true,
    name               = [[Doomsday Weapon]],
    noSelfDamage       = true,
    range              = 900,
    reloadtime         = 2.5,
    renderType         = 0,
    rgbColor           = [[0 0 1]],
    soundHit           = [[xplosml3]],
    soundStart         = [[annigun1]],
    targetMoveError    = 0.3,
    thickness          = 6,
    tolerance          = 1000,
    turret             = true,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 1000,
    damage = {
      blackhydra         = 2000,
      commanders         = 700,
      default            = 1500,
      flakboats          = 1300,
      jammerboats        = 1300,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
      otherboats         = 1300,
      seadragon          = 2000,
      t4mechs            = 2200,
      tech4              = 2500,
    },
  },
  CANNON_TYRNT = {
    accuracy           = 375,
    areaOfEffect       = 128,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 2500,
    explosionart       = [[lrpcboom]],
    explosiongaf       = [[lrpcboom]],
    gravityaffected    = [[true]],
    holdtime           = 1,
    lavaexplosionart   = [[lavasplashlg]],
    lavaexplosiongaf   = [[fx]],
    minbarrelangle     = -25,
    name               = [[Heavy Plasma Cannon]],
    range              = 4080,
    reloadtime         = 0.60,
    renderType         = 4,
    soundHit           = [[S_rocket_hit]],
    soundStart         = [[tyrnt_fire]],
    startsmoke         = 1,
    tolerance          = 750,
    turret             = true,
    waterexplosionart  = [[h2oboom2]],
    waterexplosiongaf  = [[fx]],
    weaponType         = [[Cannon]],
    weaponVelocity     = 742.15899658203,
    damage = {
      blackhydra         = 1000,
      commanders         = 500,
      default            = 750,
      flakboats          = 625,
      jammerboats        = 625,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
      otherboats         = 625,
      seadragon          = 1000,
      t4mechs            = 1125,
      tech4              = 1250,
    },
  },
  ROCKET_KROG = {
    areaOfEffect       = 80,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASHSMALLBUILDINGEX]],
    fireStarter        = 70,
    flightTime         = 5,
    guidance           = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[fmdmisl]],
    name               = [[Heavy Rockets]],
    noSelfDamage       = true,
    proximityPriority  = -1,
    range              = 1100,
    reloadtime         = 1.25,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = .1,
    smokeTrail         = true,
    soundHit           = [[xplosml2]],
    soundStart         = [[rocklit1]],
    startsmoke         = 1,
    startVelocity      = 350,
    tolerance          = 9000,
    tracks             = true,
    turnRate           = 63000,
    twoPhase           = true,
    vlaunch            = true,
    weaponAcceleration = 200,
    weaponTimer        = 1,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 800,
    damage = {
      amphibious         = 10,
      anniddm            = 10,
      antibomber         = 10,
      antifighter        = 10,
      antiraider         = 10,
      atl                = 10,
      blackhydra         = 10,
      commanders         = 10,
      crawlingbombs      = 10,
      default            = 393,
      dl                 = 10,
      ["else"]           = 10,
      flakboats          = 10,
      flaks              = 10,
      flamethrowers      = 10,
      heavyunits         = 10,
      hero               = 200,
      hgunships          = 300,
      jammerboats        = 10,
      krogoth            = 10,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
      mechs              = 10,
      mines              = 10,
      nanos              = 10,
      otherboats         = 10,
      plasmaguns         = 10,
      radar              = 10,
      seadragon          = 10,
      spies              = 10,
      t4mechs            = 10,
      tech4              = 10,
      tl                 = 10,
      upgadvtech2        = 10,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = false,
    category           = [[core_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Tyrant Wreckage]],
    featurereclamate   = [[smudge01]],
    footprintX         = 8,
    footprintZ         = 8,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[cortyrnt_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
