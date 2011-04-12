-- UNITDEF -- ARMSILO1 --
--------------------------------------------------------------------------------

local unitName = "armsilo1"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  antiweapons        = 1,
  badTargetCategory  = [[MOBILE]],
  bmcode             = 0,
  brakeRate          = 0,
  buildAngle         = 8192,
  buildCostEnergy    = 134268,
  buildCostMetal     = 8425,
  builder            = false,
  buildPic           = [[ARMSILO.DDS]],
  buildTime          = 178453,
  canAttack          = true,
  canstop            = 1,
  category           = [[ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR]],
  corpse             = [[ARMSILO_DEAD]],
  description        = [[Advanced Nuclear ICBM Launcher]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = [[ATOMIC_BLAST]],
  firestandorders    = 1,
  footprintX         = 7,
  footprintZ         = 7,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 8300,
  maxSlope           = 10,
  maxVelocity        = 0,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = [[Retaliator 2]],
  noAutoFire         = false,
  objectName         = [[ARMSILO]],
  radarDistance      = 50,
  seismicSignature   = 0,
  selfDestructAs     = [[NUCLEAR_MISSILE]],
  side               = [[ARM]],
  sightDistance      = 455,
  smoothAnim         = true,
  standingfireorder  = 0,
  TEDClass           = [[SPECIAL]],
  turnRate           = 0,
  unitname           = [[armsilo1]],
  workerTime         = 0,
  yardMap            = [[ooooooooooooooooooooooooooooooooooooooooooooooooo]],
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
      [[servroc1]],
    },
    select = {
      [[servroc1]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[MOBILE]],
      def                = [[NUCLEAR_MISSILE1]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  NUCLEAR_MISSILE1 = {
    areaOfEffect       = 1480,
    avoidFriendly      = false,
    collideFriendly    = false,
    commandfire        = true,
    craterBoost        = 6,
    craterMult         = 3,
    cruise             = 1,
    edgeEffectiveness  = 0.3,
    energypershot      = 250000,
    explosionGenerator = [[custom:FLASHNUKE1280]],
    fireStarter        = 0,
    flightTime         = 400,
    guidance           = true,
    impulseBoost       = 0.5,
    impulseFactor      = 3.5,
    lineOfSight        = true,
    metalpershot       = 2000,
    model              = [[ballmiss]],
    name               = [[NuclearMissile]],
    noautorange        = 1,
    propeller          = 1,
    range              = 72000,
    reloadtime         = 2,
    renderType         = 1,
    selfprop           = true,
    shakeduration      = 3,
    shakemagnitude     = 50,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[xplomed4]],
    soundStart         = [[misicbm1]],
    startsmoke         = 1,
    stockpile          = true,
    stockpiletime      = 90,
    targetable         = 1,
    tolerance          = 4000,
    turnRate           = 32768,
    twoPhase           = true,
    vlaunch            = true,
    weaponAcceleration = 140,
    weaponTimer        = 5,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 2200,
    damage = {
      commanders         = 2500,
      default            = 13000,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  ARMSILO_DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = 3180,
    description        = [[Retaliator Wreckage]],
    energy             = 0,
    featureDead        = [[ARMSILO_HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 40,
    hitdensity         = 100,
    metal              = 4956,
    object             = [[ARMSILO_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  ARMSILO_HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 1590,
    description        = [[Retaliator Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = 1982,
    object             = [[3X3F]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------