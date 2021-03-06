-- UNITDEF -- AACH --
--------------------------------------------------------------------------------

local unitName = "aach"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.12,
  bmcode             = 1,
  brakeRate          = 0.004,
  buildCostEnergy    = 18370,
  buildCostMetal     = 2396,
  buildDistance      = 150,
  builder            = true,
  buildTime          = 38495,
  canGuard           = true,
  canHover           = true,
  canMove            = true,
  canPatrol          = true,
  canreclamate       = 1,
  canstop            = 1,
  category           = [[ALL HOVER MOBILE WEAPON NOTSUB NOTSHIP NOTAIR]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Tech Level 2]],
  designation        = [[ARM-AHC2]],
  downloadable       = 1,
  energyMake         = 22,
  energyStorage      = 160,
  energyUse          = 2,
  explodeAs          = [[BIG_UNITEX]],
  footprintX         = 4,
  footprintZ         = 4,
  frenchdescription  = [[Niveau Tech 2]],
  frenchname         = [[Hovercraft de constr. �volu�]],
  germandescription  = [[Tech Level 2]],
  germanname         = [[Verb. Konstruktions-Hovecraft]],
  italiandescription = [[Tecnologia Livello 2]],
  italianname        = [[Hovercraft da costruzione Spec.]],
  maneuverleashlength = 640,
  maxDamage          = 2423,
  maxSlope           = 16,
  maxVelocity        = 1.6,
  maxWaterDepth      = 0,
  metalMake          = 0.6,
  metalStorage       = 100,
  mobilestandorders  = 1,
  movementClass      = [[TANKHOVER4]],
  name               = [[Advanced Construction Hover]],
  noAutoFire         = false,
  objectName         = [[AACH]],
  selfDestructAs     = [[BIG_UNIT]],
  shootme            = 1,
  side               = [[ARM]],
  sightDistance      = 270,
  spanishdescription = [[Nivel Tecn. 2]],
  spanishname        = [[Hovercraft Av. de Constr.]],
  standingmoveorder  = 1,
  steeringmode       = 1,
  threed             = 1,
  turnRate           = 220,
  unitname           = [[aach]],
  unitnumber         = 11000,
  version            = 1.2,
  workerTime         = 560,
  zbuffer            = 1,
  buildoptions = {
    [[armuwfus]],
    [[armuwfus1]],
    [[armfus]],
    [[armuwmme]],
    [[armuwmmm]],
    [[armmoho]],
    [[armmmkr]],
    [[armuwadves]],
    [[armuwadvms]],
    [[armfatf]],
    [[armplat]],
    [[armasy]],
    [[asubpen]],
    [[aahp]],
    [[aahpns]],
    [[armason]],
    [[armfflak]],
    [[armatl]],
    [[armflosh]],
    [[armarad]],
    [[armveil]],
    [[armfort]],
    [[armasp]],
    [[armtarg]],
    [[armsd]],
    [[armgate]],
    [[amgeo]],
    [[armflak]],
    [[mercury]],
    [[armemp]],
    [[armamd]],
    [[armsilo]],
    [[armbrtha]],
    [[armvulc]],
    [[armdf]],
  },
  sounds = {
    build              = [[nanlath1]],
    canceldestruct     = [[cancel2]],
    repair             = [[repair1]],
    underattack        = [[warning1]],
    working            = [[reclaim1]],
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
      [[hovmdok1]],
    },
    select = {
      [[hovmdsl1]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[arm_corpses]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Advanced construction hover wreckage ]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 4,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[aach_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
