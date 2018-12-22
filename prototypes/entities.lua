local car = table.deepcopy(data.raw.car.car)
car.name = "electric-vehicles-electric-car"
car.icon = "__electric-vehicles-reborn__/graphics/icons/electric-car.png"
car.minable.result = "electric-vehicles-electric-car"
car.equipment_grid = "electric-vehicles-electric-car"
car.equipment_categories = {"armor", "electric-vehicles-equipment"}
car.burner =
{
  effectivity = 1,
  fuel_inventory_size = 0,
}
car.sound_no_fuel = 
{
  filename = "__electric-vehicles-reborn__/audio/no-energy.ogg",
  volume = 0.4,
}
car.working_sound = 
{
  sound =
  {
    filename = "__electric-vehicles-reborn__/audio/vehicle-motor.ogg",
    volume = 0.4,
  },
  match_speed_to_activity = true,
}
car.consumption = "250kW"

local tank = table.deepcopy(data.raw.car.tank)
tank.name = "electric-vehicles-electric-tank"
tank.icon = "__electric-vehicles-reborn__/graphics/icons/electric-tank.png"
tank.minable.result = "electric-vehicles-electric-tank"
tank.equipment_grid = "electric-vehicles-electric-tank"
tank.equipment_categories = {"armor", "electric-vehicles-equipment"}
tank.burner =
{
  effectivity = 1,
  fuel_inventory_size = 0,
}
tank.sound_no_fuel = 
{
  filename = "__electric-vehicles-reborn__/audio/no-energy.ogg",
  volume = 0.4,
}
tank.working_sound =
{
  sound =
  {
    filename = "__electric-vehicles-reborn__/audio/vehicle-motor.ogg",
    volume = 0.4,
  },
  match_speed_to_activity = true,
}
-- Give the tank more oomph compared to the vanilla one since it's quite expensive to build and research
tank.braking_power = "600kW"
tank.consumption = "800kW"
--tank.terrain_friction_modifier = 0.2
tank.turret_rotation_speed = 0.7 / 60
tank.turret_return_timeout = 150
tank.rotation_speed = 0.007

data:extend(
{
  car,
  tank,
  {
    type = "locomotive",
    name = "electric-vehicles-electric-locomotive",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "electric-vehicles-electric-locomotive"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 2000,
    max_speed = 1.2,
    max_power = 1 .. "MW",
    reversing_power_modifier = 1.0,
    braking_force = 15,
    friction_force = 0.50,
    vertical_selection_shift = -0.5,
    -- this is a percentage of current speed that will be subtracted
    air_resistance = 0.0075,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    equipment_grid = "electric-vehicles-electric-locomotive",
    equipment_categories = {"electric-vehicles-equipment"},
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    burner =
    {
      effectivity = 1,
      fuel_inventory_size = 0,
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.11, g = 0.96, b = 0.96, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 238,
          height = 230,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5}
        },
        {
          priority = "very-low",
          flags = { "mask" },
          width = 236,
          height = 228,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5},
          apply_runtime_tint = true
        },
        {
          priority = "very-low",
          flags = { "compressed" },
          width = 253,
          height = 212,
          direction_count = 256,
          draw_as_shadow = true,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {1, 0.3}
        }
      }
    },
    wheels = standard_train_wheels,
    rail_category = "regular",
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__electric-vehicles-reborn__/audio/train-braking.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__electric-vehicles-reborn__/audio/vehicle-motor.ogg",
        volume = 0.4,
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  },
})
