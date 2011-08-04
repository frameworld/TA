-- UNITDEF -- ARMORCO --
--------------------------------------------------------------------------------

local unitName = "armorco"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.108,
  badTargetCategory  = [[ANTILASER]],
  bmcode             = 1,
  brakeRate          = 0.238,
  buildCostEnergy    = 341957,
  buildCostMetal     = 24467,
  builder            = false,
  buildPic           = [[ARMORCO.PCX]],
  buildTime          = 319801,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[KBOT WEAPON ALL NOTSUB NOTAIR]],
  collisionvolumeoffsets = [[0 -9 0]],
  collisionvolumescales = [[104 106 68]],
  collisionvolumetype = [[Ell]],
  corpse             = [[Dead]],
  damageModifier     = 1,
  defaultmissiontype = [[Standby]],
  description        = [[Experimental Assault Kbot]],
  energyMake         = 35.1,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = [[NUCLEAR_MISSILE2]],
  firestandorders    = 1,
  footprintX         = 5,
  footprintZ         = 5,
  immunetoparalyzer  = 1,
  maneuverleashlength = 640,
  mass               = 190000,
  maxDamage          = 192000,
  maxSlope           = 17,
  maxVelocity        = 1.24,
  maxWaterDepth      = 12,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[VKBOT5]],
  name               = [[Orcone]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[ARMORCO]],
  radarDistance      = 0,
  selfDestructAs     = [[CRBLMSSL]],
  selfDestructCountdown = 10,
  shootme            = 1,
  side               = [[ARM]],
  sightDistance      = 910,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  turnRate           = 396,
  unitname           = [[armorco]],
  unitnumber         = 263,
  upright            = true,
  workerTime         = 0,
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
      badTargetCategory  = [[VTOL]],
      def                = [[ARMORCO_FIRE]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [2]  = {
      def                = [[ATAD]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [3]  = {
      def                = [[CORKROG_ROCKET]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARMORCO_FIRE = {
    areaOfEffect       = 48,
    color              = 2,
    id                 = 6,
    impulseFactor      = 2,
    lineOfSight        = true,
    minbarrelangle     = -50,
    name               = [[GaussCannon]],
    noExplode          = true,
    pitchtolerance     = 12000,
    range              = 590,
    reloadtime         = 0.9,
    renderType         = 4,
    soundHit           = [[xplomed2]],
    soundStart         = [[Krogun1]],
    startsmoke         = 1,
    tolerance          = 2400,
    turret             = true,
    weaponType         = [[EmgCannon]],
    weaponVelocity     = 530,
    damage = {
      anniddm            = 190,
      default            = 250,
    },
  },
  ATAD = {
    areaOfEffect       = 12,
    beamlaser          = 1,
    beamTime           = 0.3,
    coreThickness      = 0.75,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 500,
    explosionGenerator = [[custom:FLASH3blue]],
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    laserFlareSize     = 22,
    lineOfSight        = true,
    name               = [[ATAD]],
    noSelfDamage       = true,
    range              = 900,
    reloadtime         = 6,
    renderType         = 0,
    rgbColor           = [[0.2 0.2 1]],
    soundHit           = [[xplosml3]],
    soundStart         = [[annigun1]],
    targetMoveError    = 0.3,
    thickness          = 3,
    tolerance          = 10000,
    turret             = true,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 1500,
    damage = {
      anniddm            = 2500,
      commanders         = 999,
      default            = 5000,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
  CORKROG_ROCKET = {
    areaOfEffect       = 96,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:STARFIRE]],
    fireStarter        = 70,
    guidance           = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[fmdmisl]],
    name               = [[HeavyRockets]],
    noSelfDamage       = true,
    proximityPriority  = -1,
    range              = 800,
    reloadtime         = 2.75,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[xplosml2]],
    soundStart         = [[rocklit1]],
    startsmoke         = 1,
    startVelocity      = 200,
    texture2           = [[coresmoketrail]],
    tolerance          = 9000,
    tracks             = true,
    turnRate           = 50000,
    twoPhase           = true,
    vlaunch            = true,
    weaponAcceleration = 230,
    weaponTimer        = 2,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 4000,
    damage = {
      anniddm            = 270,
      default            = 360,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  Dead = {
    blocking           = true,
    category           = [[arm_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Orcone Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 60,
    hitdensity         = 150,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[Armorco_dead]],
    reclaimable        = true,
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Orcone Debris]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 2,
    hitdensity         = 105,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[5x5a]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
