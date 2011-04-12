-- UNITDEF -- MONKEYLORD --
--------------------------------------------------------------------------------

local unitName = "monkeylord"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.09,
  activateWhenBuilt  = true,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.99,
  buildCostEnergy    = 230039,
  buildCostMetal     = 16100,
  builder            = false,
  buildPic           = [[ML_Rampage_Wotan.pcx]],
  buildTime          = 444423,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[CORE KBOT WEAPON NOTAIR NOTSUB]],
  damageModifier     = 1,
  defaultmissiontype = [[Standby]],
  description        = [[Experimental Siege Unit]],
  designation        = [[Spider Siege Kbot]],
  energyMake         = 0.6,
  energyStorage      = 10000,
  energyUse          = 0,
  explodeAs          = [[ATOMIC_BLAST]],
  firestandorders    = 1,
  footprintX         = 5,
  footprintZ         = 5,
  iconType           = [[Krogoth]],
  idleAutoHeal       = 10,
  idleTime           = 30,
  immunetoparalyzer  = 1,
  maneuverleashlength = 1250,
  mass               = 1000000,
  maxDamage          = 96000,
  maxSlope           = 36,
  maxVelocity        = 0.99,
  maxWaterDepth      = 520,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[VKBOT5]],
  name               = [[Cybran Monkeylord Shielded Mech]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[Monkeylord]],
  onoffable          = true,
  ovradjust          = 1,
  radarDistance      = 0,
  script             = [[Monkeylord.cob]],
  seismicSignature   = 5000,
  selfDestructAs     = [[ATOMIC_BLAST]],
  shootme            = 1,
  side               = [[Core]],
  sightDistance      = 900,
  sonarDistance      = 0,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  threed             = 1,
  turnRate           = 225,
  unitname           = [[monkeylord]],
  unitnumber         = 95,
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
      def                = [[Cybran_Monkeylord_Beam]],
      onlyTargetCategory = [[NOTAIR]],
    },
    [3]  = {
      def                = [[Cybran_Monkeylord_Shield]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  Cybran_Monkeylord_Beam = {
    areaOfEffect       = 93,
    avoidFriendly      = false,
    beamlaser          = 1,
    beamTime           = 1,
    beamWeapon         = true,
    coreThickness      = 0.45,
    craterBoost        = 0,
    craterMult         = 0,
    energypershot      = 9,
    explosionGenerator = [[custom:DIESMALL]],
    fireStarter        = 50,
    id                 = 239,
    impulseBoost       = 0,
    impulseFactor      = 0,
    largeBeamLaser     = true,
    laserFlareSize     = 5,
    lineOfSight        = true,
    name               = [[Cybran_Monkeylord_Beam]],
    noSelfDamage       = true,
    range              = 800,
    reloadtime         = 0.00001,
    renderType         = 1,
    rgbColor           = [[1 0 0]],
    soundHit           = [[BFGBANG]],
    soundStart         = [[BFG__X1B]],
    soundTrigger       = false,
    texture1           = [[Type4Beam]],
    texture2           = [[NULL]],
    texture3           = [[NULL]],
    texture4           = [[EMG]],
    thickness          = 17,
    tolerance          = 1820,
    turret             = true,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 250,
    damage = {
      default            = 1050,
    },
  },
  Cybran_Monkeylord_Shield = {
    id                 = 9346,
    isShield           = true,
    name               = [[Praetorian_Shield]],
    range              = 340,
    shieldAlpha        = 0.5,
    shieldBadColor     = [[1 0.2 0.2]],
    shieldEnergyUse    = 1800,
    shieldForce        = 9,
    shieldGoodColor    = [[0.2 1 0.2]],
    shieldInterceptType = 1,
    shieldMaxSpeed     = 3500,
    shieldPower        = 5000,
    shieldPowerRegen   = 50,
    shieldPowerRegenEnergy = 300,
    shieldRadius       = 340,
    shieldRepulser     = true,
    smartShield        = true,
    turret             = true,
    visibleShield      = true,
    visibleShieldRepulse = true,
    weaponType         = [[Shield]],
    damage = {
      default            = 100,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------