-- UNITDEF -- ARMLANCE --
--------------------------------------------------------------------------------

local unitName = "armlance"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.24,
  badTargetCategory  = [[NOTSHIP]],
  bankscale          = 1,
  bmcode             = 1,
  brakeRate          = 7.5,
  buildCostEnergy    = 6598,
  buildCostMetal     = 306,
  builder            = false,
  buildPic           = [[ARMLANCE.png]],
  buildTime          = 15096,
  canAttack          = true,
  canFly             = true,
  canGuard           = false,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  category           = [[ALL NOTLAND MOBILE WEAPON ANTIGATOR NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOTSHIP]],
  collide            = false,
  cruiseAlt          = 120,
  defaultmissiontype = [[VTOL_standby]],
  description        = [[Torpedo Bomber]],
  energyMake         = 1.5,
  energyStorage      = 0,
  energyUse          = 1.5,
  explodeAs          = [[BIG_UNITEX]],
  firestandorders    = 1,
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = [[air]],
  idleAutoHeal       = 5,
  idleTime           = 1800,
  maneuverleashlength = 1280,
  maxDamage          = 1727,
  maxSlope           = 10,
  maxVelocity        = 10.92,
  maxWaterDepth      = 255,
  metalStorage       = 0,
  mobilestandorders  = 1,
  moverate1          = 8,
  name               = [[Lancet]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[ARMLANCE]],
  seismicSignature   = 0,
  selfDestructAs     = [[BIG_UNIT]],
  side               = [[ARM]],
  sightDistance      = 455,
  smoothAnim         = true,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  turnRate           = 462,
  unitname           = [[armlance]],
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
      [[vtolarmv]],
    },
    select = {
      [[vtolarac]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[NOTSHIP]],
      def                = [[ARMAIR_TORPEDO]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  ARMAIR_TORPEDO = {
    areaOfEffect       = 16,
    avoidFriendly      = false,
    burnblow           = true,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH2]],
    guidance           = true,
    impactonly         = 1,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    model              = [[torpedo]],
    name               = [[TorpedoLauncher]],
    noSelfDamage       = true,
    propeller          = 1,
    range              = 500,
    reloadtime         = 8,
    renderType         = 1,
    selfprop           = true,
    soundHit           = [[xplodep2]],
    soundStart         = [[bombrel]],
    startVelocity      = 100,
    tolerance          = 6000,
    tracks             = true,
    turnRate           = 15000,
    turret             = false,
    waterWeapon        = true,
    weaponAcceleration = 15,
    weaponTimer        = 5,
    weaponType         = [[TorpedoLauncher]],
    weaponVelocity     = 100,
    damage = {
      default            = 1500,
      krogoth            = 3000,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
