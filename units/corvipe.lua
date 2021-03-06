-- UNITDEF -- CORVIPE --
--------------------------------------------------------------------------------

local unitName = "corvipe"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  badTargetCategory  = [[VTOL]],
  bmcode             = 0,
  brakeRate          = 0,
  buildAngle         = 8192,
  buildCostEnergy    = 19140,
  buildCostMetal     = 980,
  builder            = false,
  buildPic           = [[CORVIPE.png]],
  buildTime          = 19035,
  canAttack          = true,
  canstop            = 1,
  category           = [[ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR]],
  corpse             = [[DEAD]],
  damageModifier     = 0.5,
  defaultmissiontype = [[GUARD_NOMOVE]],
  description        = [[Pop-up Sabot Battery]],
  digger             = 1,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = [[MEDIUM_BUILDINGEX]],
  firestandorders    = 1,
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 3719,
  maxSlope           = 10,
  maxVelocity        = 0,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = [[Viper]],
  noAutoFire         = false,
  noChaseCategory    = [[MOBILE]],
  objectName         = [[CORVIPE]],
  seismicSignature   = 0,
  selfDestructAs     = [[MEDIUM_BUILDING]],
  side               = [[CORE]],
  sightDistance      = 546,
  smoothAnim         = true,
  standingfireorder  = 2,
  turnRate           = 0,
  unitname           = [[corvipe]],
  yardMap            = [[ooooooooo]],
  sounds = {
    canceldestruct     = [[cancel2]],
    cloak              = [[kloak2]],
    uncloak            = [[kloak2un]],
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
      [[servmed1]],
    },
    select = {
      [[servmed1]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[VIPERSABOT]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  VIPERSABOT = {
    areaOfEffect       = 30,
    burnblow           = true,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH2nd]],
    fireStarter        = 70,
    guidance           = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    model              = [[missile]],
    name               = [[Sabot]],
    noSelfDamage       = true,
    range              = 730,
    reloadtime         = 1.5,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[SabotHit]],
    soundStart         = [[SabotFire]],
    startsmoke         = 1,
    startVelocity      = 700,
    targetMoveError    = 0.2,
    texture2           = [[coresmoketrail]],
    tolerance          = 8000,
    tracks             = true,
    turnRate           = 4000,
    turret             = true,
    weaponAcceleration = 300,
    weaponTimer        = 0.1,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 1000,
    damage = {
      default            = 900,
      gunships           = 26,
      hgunships          = 26,
      l1bombers          = 26,
      l1fighters         = 26,
      l1subs             = 5,
      l2bombers          = 26,
      l2fighters         = 26,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 26,
      vtol               = 26,
      vtrans             = 26,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Viper Wreckage]],
    energy             = 0,
    featureDead        = [[DEAD2]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[CORVIPE_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  DEAD2 = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Viper Wreckage]],
    energy             = 0,
    featureDead        = [[HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[CORVIPE_DEAD2]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.216,
    description        = [[Viper Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 2,
    footprintZ         = 2,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.512,
    object             = [[2X2F]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
