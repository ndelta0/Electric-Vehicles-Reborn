data:extend
{
  {
    type = "technology",
    name = "electric-vehicles-electric-cars",
    icon = "__electric-vehicles-reborn__/graphics/technology/electric-cars.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-vehicles-lo-voltage-transformer",
      },--[[
      {
        type = "unlock-recipe",
        recipe = "electric-vehicles-regen-brake-controller",
      },]]
      {
        type = "unlock-recipe",
        recipe = "electric-vehicles-electric-car",
      },
    },
    prerequisites = {"electric-engine", "battery", "automobilism"},
    unit =
    {
      count = 200,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 20,
    },
    order = "e-c",
  },
  {
    type = "technology",
    name = "electric-vehicles-regen-braking",
    icon = "__electric-vehicles-reborn__/graphics/technology/regen-braking.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-vehicles-regen-brake-controller",
      },
    },
    prerequisites = {"advanced-electronics-2", "electric-vehicles-electric-cars", "effectivity-module"},
    unit =
    {
      count = 200,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30,
    },
    order = "b-b-a",
  },
  {
    type = "technology",
    name = "electric-vehicles-high-voltage-transformer",
    icon = "__electric-vehicles-reborn__/graphics/technology/high-voltage-transformer.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-vehicles-hi-voltage-transformer",
      },
    },
    prerequisites = {"electric-vehicles-electric-cars", "electric-energy-distribution-2", "speed-module-2"},
    unit =
    {
      count = 150,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 40,
    },
    order = "b-b-b",
  },
  {
    type = "technology",
    name = "electric-vehicles-electric-trains",
    icon = "__electric-vehicles-reborn__/graphics/technology/electric-trains.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-vehicles-electric-locomotive",
      },
    },
    prerequisites = {"electric-vehicles-electric-cars", "railway", "electric-vehicles-high-voltage-transformer", "effectivity-module-2"},
    unit =
    {
      count = 200,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 20,
    },
    order = "c-g-d",
  },
  {
    type = "technology",
    name = "electric-vehicles-electric-tanks",
    icon = "__electric-vehicles-reborn__/graphics/technology/electric-tanks.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-vehicles-electric-tank",
      },
    },
    prerequisites = {"electric-vehicles-electric-cars", "tanks", "electric-vehicles-high-voltage-transformer", "effectivity-module-3"},
    unit =
    {
      count = 400,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 60,
    },
    order = "e-c-d",
  },
}
