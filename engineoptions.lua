--  Custom Options Definition Table format

--  NOTES:
--  - using an enumerated table lets you specify the options order

--
--  These keywords must be lowercase for LuaParser to read them.
--
--  key:      the string used in the script.txt
--  name:     the displayed name
--  desc:     the description (could be used as a tooltip)
--  type:     the option type
--  def:      the default value
--  min:      minimum value for number options
--  max:      maximum value for number options
--  step:     quantization step, aligned to the def value
--  maxlen:   the maximum string length for string options
--  items:    array of item strings for list options
--  scope:    'global', 'player', 'team', 'allyteam'
--

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  Example EngineOptions.lua
--

local options = {
   --Need to remove after next release  
  {
    key    = 'GameMode',
    name   = 'Game end condition',
    desc   = 'Determines what condition triggers the defeat of a player',
    type   = 'list',
    section= "ta_modes",
    def    = '0',
    items  = 
    {
      { 
        key  = '0',
        name = 'Kill everything',
        desc = 'The player will lose when all his units have died',
      },
      {
        key  = '1',
        name = 'Commander ends',
        desc = 'The player will lose when his commander dies',
      },
      {
        key  = '2',
        name = 'Commander lineage ends',
        desc = 'This is a stricter form of commander ends\nevery unit will inherit the lineage from the player whom built it\neven if shared, when the commander dies the unit will still die',
      },
    },
  },
  --end
   
  
   {
       key="ta_others",
       name="Tech Annihilation - Other Settings",
       name="Tech Annihilation - Other Settings",
       type="section",
    },
  {
    key    = 'MaxUnits',
    name   = 'Max units',
    desc   = 'Maximum number of units (including buildings) for each team allowed at the same time',
    type   = 'number',
    def    = 500,
    min    = 1,
    max    = 10000, --- engine caps at lower limit if more than 3 team are ingame
    step   = 1,  -- quantization is aligned to the def value
                    -- (step <= 0) means that there is no quantization
    section= "ta_others",

  },

  {
    key    = 'LimitDgun',
    name   = 'Limit D-Gun range',
    desc   = "The commander's D-Gun weapon will be usable only close to the player's starting location",
    type   = 'bool',
    def    = false,
    section= "ta_others",
       
  },

  {
    key    = 'GhostedBuildings',
    name   = 'Ghosted buildings',
    desc   = "Once an enemy building will be spotted\na ghost trail will be placed to memorize location even after the loss of the line of sight",
    type   = 'bool',
    def    = true,
    section= "ta_others",
  },
  {
    key    = 'FixedAllies',
    name   = 'Fixed ingame alliances',
    desc   = 'Disables the possibility of players to dynamically change alliances ingame',
    type   = 'bool',
    def    = false,
    section= "ta_others",
  },

  {
    key    = 'LimitSpeed',
    name   = 'Speed Restriction',
    desc   = 'Limits maximum and minimum speed that the players will be allowed to change to',
    type   = 'section',
  },

  {
    key    = 'MaxSpeed',
    name   = 'Maximum game speed',
    desc   = 'Sets the maximum speed that the players will be allowed to change to',
    type   = 'number',
    section= 'LimitSpeed',
    def    = 3,
    min    = 0.1,
    max    = 100,
    step   = 0.1,  -- quantization is aligned to the def value
                    -- (step <= 0) means that there is no quantization
  },

  {
    key    = 'MinSpeed',
    name   = 'Minimum game speed',
    desc   = 'Sets the minimum speed that the players will be allowed to change to',
    type   = 'number',
    section= 'LimitSpeed',
    def    = 0.3,
    min    = 0.1,
    max    = 100,
    step   = 0.1,  -- quantization is aligned to the def value
                    -- (step <= 0) means that there is no quantization
  },

  {
    key    = 'DisableMapDamage',
    name   = 'Undeformable map',
    desc   = 'Prevents the map shape from being changed by weapons',
    type   = 'bool',
    def    = false,
    section= "ta_others",
  },
--[[
-- the following options can create problems and were never used by interface programs, thus are commented out for the moment

  {
    key    = 'NoHelperAIs',
    name   = 'Disable helper AIs',
    desc   = 'Disables luaui ai usage for all players',
    type   = 'bool',
    def    = false,
  },
--]]
}

return options
