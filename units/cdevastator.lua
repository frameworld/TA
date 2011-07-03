-- UNITDEF -- CDEVASTATOR --
--------------------------------------------------------------------------------

local unitName = "cdevastator"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.00931,
  activateWhenBuilt  = true,
  airHoverFactor     = 0,
  airStrafe          = false,
  badTargetCategory  = [[VTOL]],
  bankscale          = 0.5,
  bmcode             = 1,
  brakeRate          = 0.399,
  buildCostEnergy    = 1670000,
  buildCostMetal     = 284500,
  builder            = false,
  buildTime          = 2600000,
  canAttack          = true,
  canFly             = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[NOTAIR NOTSUB NOTSHIP LEVEL3 ALL]],
  collide            = false,
  collisionvolumeoffsets = [[0 0 18]],
  collisionvolumescales = [[240 138 548]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  corpse             = [[dead]],
  cruiseAlt          = 20,
  defaultmissiontype = [[VTOL_standby]],
  description        = [[Hero (Core)]],
  designation        = [[CBB-001]],
  dontland           = 1,
  energyMake         = 0,
  energyStorage      = 3000,
  energyUse          = 0,
  explodeAs          = [[MEGA_BLAST]],
  firestandorders    = 1,
  footprintX         = 20,
  footprintZ         = 24,
  hoverAttack        = true,
  iconType           = [[air]],
  maneuverleashlength = 500,
  maxDamage          = 1250000.0,
  maxSlope           = 10,
  maxVelocity        = 0.995,
  maxWaterDepth      = 255,
  metalStorage       = 1000,
  metalUse           = 0,
  mobilestandorders  = 1,
  name               = [[DEVASTATOR]],
  noAutoFire         = false,
  noChaseCategory    = [[NOTAIR BIG]],
  objectName         = [[CDevastator]],
  radarDistance      = 0,
  scale              = 1,
  script             = [[cdevastator.cob]],
  seismicSignature   = 0,
  selfDestructAs     = [[MEGA_BLAST1]],
  side               = [[CORE]],
  sightDistance      = 494,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  TEDClass           = [[VTOL]],
  turnRate           = 66.50,
  unitname           = [[cdevastator]],
  upright            = true,
  workerTime         = 0,
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    arrived = {
      [[bigstop]],
    },
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
      [[biggo]],
    },
    select = {
      [[bigsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[MountedAntimatterAccelerator]],
      mainDir            = [[1 0 0.2]],
      maxAngleDif        = 190,
    },
    [2]  = {
      def                = [[MountedAntimatterAccelerator]],
      mainDir            = [[-1 0 0.2]],
      maxAngleDif        = 190,
    },
    [3]  = {
      def                = [[MountedAntimatterAccelerator]],
      mainDir            = [[1 0 0]],
      maxAngleDif        = 140,
    },
    [4]  = {
      def                = [[MountedAntimatterAccelerator]],
      mainDir            = [[-1 0 0]],
      maxAngleDif        = 140,
    },
    [5]  = {
      def                = [[MountedAntimatterAccelerator]],
      mainDir            = [[1 0 -0.2]],
      maxAngleDif        = 180,
    },
    [6]  = {
      def                = [[MountedAntimatterAccelerator]],
      mainDir            = [[-1 0 -0.2]],
      maxAngleDif        = 180,
    },
    [7]  = {
      def                = [[CapitalShipMinigun]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 280,
    },
    [8]  = {
      def                = [[CapitalShipMinigun]],
    },
    [9]  = {
      def                = [[CapitalShipMinigun]],
      mainDir            = [[0 0 -1]],
      maxAngleDif        = 280,
    },
    [10] = {
      def                = [[DevastatorRockets]],
      mainDir            = [[1 0 0.2]],
      maxAngleDif        = 180,
    },
    [11] = {
      def                = [[DevastatorRockets]],
      mainDir            = [[-1 0 0.2]],
      maxAngleDif        = 180,
    },
    [12] = {
      def                = [[DevastatorRockets]],
      mainDir            = [[1 0 -0.2]],
      maxAngleDif        = 180,
    },
    [13] = {
      def                = [[DevastatorRockets]],
      mainDir            = [[-1 0 -0.2]],
      maxAngleDif        = 180,
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  CapitalShipMinigun = {
    accuracy           = 10,
    areaOfEffect       = 80,
    beamWeapon         = true,
    burnblow           = false,
    burst              = 2,
    burstrate          = .1,
    coreThickness      = 1,
    craterBoost        = 0,
    craterMult         = 0,
    duration           = 0.04,
    energypershot      = 0,
    explosionGenerator = [[custom:shotgunImpact]],
    guidance           = true,
    id                 = 243,
    impulseBoost       = 0,
    intensity          = 1,
    lineOfSight        = true,
    name               = [[Capital Ship Minigun]],
    range              = 900,
    reloadtime         = 0.30,
    renderType         = 0,
    rgbColor           = [[1 1 1]],
    rgbColor2          = [[0.5 0.5 0.5]],
    selfprop           = true,
    soundHit           = [[hit-metal-1]],
    soundStart         = [[MG1]],
    soundStartVolume   = 15,
    soundTrigger       = true,
    startsmoke         = 1,
    texture1           = [[NarrowBoltNoisy]],
    texture2           = [[NULL]],
    texture3           = [[NULL]],
    thickness          = 2.5,
    tolerance          = 2000,
    tracks             = true,
    turnRate           = 10000,
    turret             = true,
    unitsonly          = 1,
    weaponTimer        = 1,
    weaponType         = [[LaserCannon]],
    weaponVelocity     = 1450,
    damage = {
      default            = 32,
    },
  },
  DevastatorRockets = {
    areaOfEffect       = 182,
    btracks            = 1,
    burnblow           = true,
    craterBoost        = 0,
    craterMult         = 0,
    edgeofeffectiveness = 0.5,
    energypershot      = 0,
    explosionart       = [[explode3]],
    explosiongaf       = [[fx]],
    explosionGenerator = [[custom:MININUKES]],
    fireStarter        = 0,
    flightTime         = 7,
    guidance           = true,
    id                 = 216,
    impulseBoost       = 0,
    lavaexplosionart   = [[explode3]],
    lavaexplosiongaf   = [[fx]],
    lineOfSight        = true,
    model              = [[DevastatorRocket]],
    name               = [[DevastatorRockets]],
    noautorange        = 1,
    pitchtolerance     = 3000,
    range              = 1800,
    reloadtime         = 1.330,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = .1,
    smokeTrail         = true,
    soundHit           = [[DevastatorRocket_hit]],
    soundStart         = [[DevastatorRocket]],
    soundTrigger       = true,
    startsmoke         = 0,
    startVelocity      = 350,
    tolerance          = 3000,
    tracks             = true,
    turnRate           = 30000,
    turret             = true,
    vlaunch            = true,
    waterexplosionart  = [[explode3]],
    waterexplosiongaf  = [[fx]],
    weaponAcceleration = 280,
    weaponTimer        = 2,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 550,
    damage = {
      default            = 2100,
    },
  },
  MountedAntimatterAccelerator = {
    areaOfEffect       = 300,
    beamlaser          = 1,
    beamTime           = 1.5,
    burnblow           = true,
    coreThickness      = 0.5,
    craterBoost        = 0,
    craterMult         = 0,
    endsmoke           = 1,
    energypershot      = 0,
    explosionGenerator = [[custom:DIESMALL]],
    fireStarter        = 20,
    id                 = 168,
    impulseBoost       = 0,
    largeBeamLaser     = true,
    laserFlareSize     = 8,
    lineOfSight        = true,
    name               = [[Mounted antimatter accelerator]],
    noExplode          = false,
    pitchtolerance     = 100,
    range              = 1800,
    reloadtime         = 4,
    renderType         = 4,
    rgbColor           = [[1 0 0]],
    soundHit           = [[thunder_clap]],
    soundStart         = [[arrfire]],
    soundTrigger       = true,
    startsmoke         = 1,
    targetMoveError    = 0.4,
    texture1           = [[Type6Beam]],
    texture2           = [[NULL]],
    texture3           = [[NULL]],
    texture4           = [[EMG4]],
    thickness          = 25,
    tolerance          = 100,
    turret             = true,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 1500,
    damage = {
      commanders         = 1500,
      default            = 18000,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[core_corpses]],
    damage             = 1242480,
    description        = [[Devastator Wreckage]],
    featurereclamate   = [[smudge01]],
    footprintX         = 14,
    footprintZ         = 8,
    height             = 50,
    hitdensity         = 100,
    metal              = 62473,
    object             = [[CDevastator_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------