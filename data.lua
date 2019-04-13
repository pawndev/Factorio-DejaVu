data:extend({
    {
        
    type = "car",
    name = "car",
    icon = "__base__/graphics/icons/car.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
    minable = {mining_time = 0.4, result = "car"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 450,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(0, -13),
    energy_per_hit_point = 1,
    crash_trigger = crash_trigger(),
    resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "impact",
        percent = 30,
        decrease = 50
      },
      {
        type = "acid",
        percent = 20
      },
    },
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    effectivity = 0.6,
    braking_power = "200kW",

    burner =
    {
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.25, 0.25},
          frequency = 200,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "150kW",
    friction = 2e-3,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      }
    },
    render_layer = "object",
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 102,
          height = 86,
          frame_count = 2,
          direction_count = 64,
          shift = {0, -0.1875},
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
            {
             filename = "__base__/graphics/entity/car/car-1.png",
             width_in_frames = 2,
             height_in_frames = 22
            },
            {
             filename = "__base__/graphics/entity/car/car-2.png",
             width_in_frames = 2,
             height_in_frames = 22
            },
            {
             filename = "__base__/graphics/entity/car/car-3.png",
             width_in_frames = 2,
             height_in_frames = 20
            }
          },
          hr_version =
          {
            priority = "low",
            width = 201,
            height = 172,
            frame_count = 2,
            scale = 0.5,
            direction_count = 64,
            shift = util.by_pixel(0+2, -11.5+8.5),
            animation_speed = 8,
            max_advance = 0.2,
            stripes =
            {
              {
                filename = "__base__/graphics/entity/car/hr-car-1.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-2.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-3.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-4.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-5.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-6.png",
                width_in_frames = 2,
                height_in_frames = 9
              }
            }
          }
        },
        {
          priority = "low",
          width = 100,
          height = 75,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          max_advance = 0.2,
          line_length = 2,
          shift = {0, -0.171875},
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/car/car-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22
            },
            {
              filename = "__base__/graphics/entity/car/car-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22
            },
            {
              filename = "__base__/graphics/entity/car/car-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20
            }
          }),
          hr_version =
          {
            priority = "low",
            width = 199,
            height = 147,
            frame_count = 2,
            apply_runtime_tint = true,
            scale = 0.5,
            axially_symmetrical = false,
            direction_count = 64,
            max_advance = 0.2,
            shift = util.by_pixel(0+2, -11+8.5),
            line_length = 1,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 13
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 13
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 13
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-4.png",
                width_in_frames = 1,
                height_in_frames = 13
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-5.png",
                width_in_frames = 1,
                height_in_frames = 12
              }
            })
          }
        },
        {
          priority = "low",
          width = 114,
          height = 76,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.28125, 0.25},
          max_advance = 0.2,
          stripes = util.multiplystripes(2,
          {
           {
            filename = "__base__/graphics/entity/car/car-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 22
           },
           {
            filename = "__base__/graphics/entity/car/car-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 22
           },
           {
            filename = "__base__/graphics/entity/car/car-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 20
           }
          })
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/car/car-turret.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 29,
          frame_count = 1,
          direction_count = 64,
          shift = {0.03125, -0.890625},
          animation_speed = 8,
          hr_version =
          {
            priority = "low",
            width = 71,
            height = 57,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 64,
            shift = util.by_pixel(0+2, -33.5+8.5),
            animation_speed = 8,
            scale = 0.5,
            stripes =
            {
              {
                filename = "__base__/graphics/entity/car/hr-car-turret-1.png",
                width_in_frames = 1,
                height_in_frames = 32
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-turret-2.png",
                width_in_frames = 1,
                height_in_frames = 32
              }
            }
          }
        },
        {
          filename = "__base__/graphics/entity/car/car-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 46,
          height = 31,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.875, 0.359375}
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      }
    },
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          }
        }
      }
    },
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__DejaVu__/sound/deja-vu.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = false
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.015,
    weight = 700,
    guns = { "vehicle-machine-gun" },
    inventory_size = 80
    }
})