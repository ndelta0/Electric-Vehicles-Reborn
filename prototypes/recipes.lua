data:extend
{
  {
    type = "recipe",
    name = "electric-vehicles-lo-voltage-transformer",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 10},
      {"copper-cable", 50},
    },
    result = "electric-vehicles-lo-voltage-transformer",
  },
  {
    type = "recipe",
    name = "electric-vehicles-hi-voltage-transformer",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 30},
      {"plastic-bar", 10},
      {"copper-cable", 200},
      {type = "fluid", name = "lubricant", amount = 5},
    },
    result = "electric-vehicles-hi-voltage-transformer",
    category = "crafting-with-fluid",
  },
  {
    type = "recipe",
    name = "electric-vehicles-regen-brake-controller",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 1},
      {"effectivity-module", 1},
    },
    result = "electric-vehicles-regen-brake-controller",
  },
  {
    type = "recipe",
    name = "electric-vehicles-electric-locomotive",
    enabled = false,
    ingredients =
    {
      {"electric-engine-unit", 20},
      {"advanced-circuit", 10},
      {"steel-plate", 30},
      {"effectivity-module", 1},
      {"speed-module", 1},
    },
    result = "electric-vehicles-electric-locomotive",
  },
  {
    type = "recipe",
    name = "electric-vehicles-electric-car",
    enabled = false,
    ingredients =
    {
      {"electric-engine-unit", 8},
      {"iron-plate", 20},
      {"advanced-circuit", 5},
      {"effectivity-module", 1},
      {"speed-module", 1},
    },
    result = "electric-vehicles-electric-car",
  },
  {
    type = "recipe",
    name = "electric-vehicles-electric-tank",
    enabled = false,
    ingredients =
    {
      {"electric-engine-unit", 16},
      {"steel-plate", 50},
      {"iron-gear-wheel", 15},
      {"processing-unit", 100},
      {"effectivity-module-3", 5},
      {"speed-module-3", 5},
    },
    result = "electric-vehicles-electric-tank",
  },
}
