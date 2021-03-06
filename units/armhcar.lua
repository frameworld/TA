-- UNITDEF -- ARMHCAR --
--------------------------------------------------------------------------------

local unitName = "armhcar"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.02,
  activateWhenBuilt  = true,
  antiweapons        = 1,
  bmcode             = 0,
  brakeRate          = 0.02,
  buildAngle         = 16384,
  buildCostEnergy    = 594934,
  buildCostMetal     = 21852,
  buildTime          = 349755,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ARM SHIP MOBILE NOTAIR NOTSUB NOTLAND ALL]],
  collisionvolumeoffsets = [[0 -6 1]],
  collisionvolumescales = [[128 94 206]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  corpse             = [[dead]],
  damageModifier     = 0.5,
  defaultmissiontype = [[Standby]],
  description        = [[Command Carrier]],
  designation        = [[ASD-SC]],
  energyMake         = 1000,
  energyStorage      = 3000,
  energyUse          = 100,
  explodeAs          = [[NUCLEAR_BLAST]],
  firestandorders    = 1,
  floater            = true,
  footprintX         = 8,
  footprintZ         = 8,
  iconType           = [[sea]],
  immunetoparalyzer  = 1,
  isAirBase          = true,
  isTargetingUpgrade = true,
  maneuverleashlength = 640,
  maxDamage          = 15280,
  maxVelocity        = 1.8,
  metalStorage       = 2000,
  minWaterDepth      = 30,
  mobilestandorders  = 1,
  movementClass      = [[HDBOAT8]],
  name               = [[Atlantis]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[ARMHCAR]],
  onoffable          = true,
  radarDistance      = 3500,
  selfDestructAs     = [[ATOMIC_BLAST]],
  side               = [[ARM]],
  sightDistance      = 1324,
  standingfireorder  = 0,
  standingmoveorder  = 1,
  steeringmode       = 1,
  turnRate           = 64,
  unitname           = [[armhcar]],
  waterline          = 2,
  workerTime         = 750,
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
      def                = [[NUKE_HCAR_ARM]],
    },
    [2]  = {
      def                = [[ROCKET_MCV]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  NUKE_HCAR_ARM = {
    areaOfEffect       = 768,
    avoidFriendly      = false,
    collideFriendly    = false,
    commandfire        = true,
    craterBoost        = 2,
    craterMult         = 1,
    cruise             = 1,
    edgeEffectiveness  = 0.35,
    energypershot      = 90000,
    explosionGenerator = [[custom:FLASHNUKE768]],
    fireStarter        = 100,
    flightTime         = 400,
    guidance           = true,
    impulseBoost       = 0.5,
    impulseFactor      = 0.5,
    lineOfSight        = true,
    metalpershot       = 1000,
    model              = [[hcar_nuke1]],
    name               = [[Operational Nuclear Missile]],
    noautorange        = 1,
    propeller          = 1,
    range              = 5120,
    reloadtime         = 2,
    renderType         = 1,
    selfprop           = true,
    shakeduration      = 2,
    shakemagnitude     = 32,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[megaboom]],
    soundStart         = [[misicbm1]],
    startsmoke         = 1,
    stockpile          = true,
    stockpiletime      = 90,
    targetable         = 1,
    tolerance          = 4000,
    turnRate           = 32768,
    twoPhase           = true,
    vlaunch            = true,
    weaponAcceleration = 75,
    weaponTimer        = 5,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 525,
    damage = {
      anniddm            = 2400,
      blackhydra         = 9600,
      commanders         = 1600,
      default            = 4800,
      heavyunits         = 2400,
      hero               = 9000,
      krogoth            = 6400,
      seadragon          = 9600,
      t4mechs            = 6400,
      tech4              = 9600,
      upgadvtech2        = 3600,
    },
  },
  ROCKET_MCV = {
    areaOfEffect       = 64,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:ARM_FIRE_SMALL]],
    fireStarter        = 0,
    flightTime         = 5,
    guidance           = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[missile]],
    name               = [[Heavy Guided Rockets]],
    noautorange        = 1,
    noSelfDamage       = true,
    proximityPriority  = -1,
    range              = 1500,
    reloadtime         = 0.85,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = .001,
    smokeTrail         = true,
    soundHit           = [[cent_hit]],
    soundStart         = [[mcv_fire1]],
    startsmoke         = 1,
    startVelocity      = 350,
    tolerance          = 6000,
    tracks             = true,
    turnRate           = 68000,
    twoPhase           = true,
    vlaunch            = true,
    weaponAcceleration = 200,
    weaponTimer        = 1,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 1000,
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
      default            = 180,
      dl                 = 10,
      ["else"]           = 10,
      flakboats          = 10,
      flaks              = 10,
      flamethrowers      = 10,
      heavyunits         = 10,
      hero               = 140,
      hgunships          = 120,
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
    category           = [[arm_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Atlantis Wreckage]],
    featurereclamate   = [[smudge01]],
    footprintX         = 8,
    footprintZ         = 8,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[armhcar_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
