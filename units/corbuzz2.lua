-- UNITDEF -- CORBUZZ2 --
--------------------------------------------------------------------------------

local unitName = "corbuzz2"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0,
  antiweapons        = 1,
  badTargetCategory  = [[MOBILE]],
  bmcode             = 0,
  brakeRate          = 0,
  buildAngle         = 29096,
  buildCostEnergy    = 541404,
  buildCostMetal     = 42460,
  builder            = false,
  buildPic           = [[CORBUZZ.png]],
  buildTime          = 880630,
  canAttack          = true,
  canstop            = 1,
  category           = [[CORE WEAPON NOTAIR NOTSUB NOTSHIP LEVEL3 NOTLAND ALL]],
  collisionvolumeoffsets = [[0 -19 0]],
  collisionvolumescales = [[65 150 90]],
  collisionvolumetest = 0,
  collisionvolumetype = [[CylY]],
  corpse             = [[DEAD]],
  defaultmissiontype = [[GUARD_NOMOVE]],
  description        = [[Rapid-fire Long-Range Plasma Cannon]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = [[ATOMIC_BLAST]],
  firestandorders    = 3,
  footprintX         = 8,
  footprintZ         = 8,
  iconType           = [[building]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maxDamage          = 29960,
  maxSlope           = 13,
  maxVelocity        = 0,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = [[Rapid-Buzzsaw]],
  objectName         = [[CORBUZZ]],
  seismicSignature   = 0,
  selfDestructAs     = [[ATOMIC_BLAST]],
  side               = [[CORE]],
  sightDistance      = 273,
  smoothAnim         = true,
  standingfireorder  = 3,
  turnRate           = 0,
  unitname           = [[corbuzz2]],
  workerTime         = 0,
  yardMap            = [[oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],
  sfxtypes = {
    explosiongenerators = {
      [[custom:vulcanflare]],
    },
  },
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
      [[servlrg4]],
    },
    select = {
      [[servlrg4]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[MOBILE]],
      def                = [[CORBUZZ_WEAPON3]],
      onlyTargetCategory = [[NOTAIR]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  CORBUZZ_WEAPON3 = {
    accuracy           = 750,
    areaOfEffect       = 256,
    ballistic          = true,
    collideFriendly    = false,
    color              = 2,
    craterBoost        = 0.15,
    craterMult         = 0.15,
    edgeEffectiveness  = 0.8,
    energypershot      = 13500,
    explosionGenerator = [[custom:FLASHBIGBUILDING]],
    gravityaffected    = [[true]],
    impulseBoost       = 0.5,
    impulseFactor      = 0.5,
    name               = [[RapidfireLRPC]],
    noSelfDamage       = true,
    randomdecay        = 11,
    range              = 7200,
    reloadtime         = 0.5,
    renderType         = 4,
    soundHit           = [[rflrpc3]],
    soundStart         = [[XPLONUK4]],
    startsmoke         = 1,
    turret             = true,
    weaponTimer        = 14,
    weaponType         = [[Cannon]],
    weaponVelocity     = 985.90057373047,
    damage = {
      blackhydra         = 3000,
      default            = 1700,
      flakboats          = 3000,
      jammerboats        = 3000,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
      otherboats         = 3000,
      seadragon          = 3000,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  CORBUZZ_HEAP = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Buzzsaw Heap]],
    energy             = 0,
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 7,
    footprintZ         = 7,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[7X7A]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
  DEAD = {
    blocking           = true,
    category           = [[corpses]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Rapid Buzzsaw Wreckage]],
    energy             = 0,
    featureDead        = [[CORBUZZ_HEAP]],
    featurereclamate   = [[SMUDGE01]],
    footprintX         = 7,
    footprintZ         = 7,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[CORBUZZ_DEAD]],
    reclaimable        = true,
    seqnamereclamate   = [[TREE1RECLAMATE]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
