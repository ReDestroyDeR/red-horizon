--- @type  data.ElectricEnergyInterfacePrototype
local entity = {
    type = "electric-energy-interface",
    name = "wind-turbine",
    energy_source = {
        buffer_capacity = "10MJ",
        usage_priority = "primary-output",
        output_flow_limit = "150kW",
        render_no_power_icon = false,
        render_no_network_icon = false,
    },
    energy_production = "10kW",
    is_military_target = false,
    animation = {
        filename = "__red-horizons__/assets/wind-turbine.png",
        height = 512,
        width = 512,
        scale = 0.5,
        shift = {0.0, -0.5},
        frame_count = 20,
        line_length = 5,
        animation_speed = 0.20,
        max_advance = 1.0,
        frame_sequence = { 1, 2, 3, 4, 6, 7, 8, 9, 11, 12, 13, 14, 16, 17, 18, 19, 5, 10, 15, 20 } -- this is because of free spritesheet generator
    },
    collision_box = {{-1.9, -0.1}, {1.9, 1.9}},
    selection_box = {{-2.0, -0.0}, {2.0, 2.0}},
    max_health = 500,
    repair_speed_modifier = 1.5,
    minable = {mining_time = 0.8, result = "wind-turbine"},
    icon = "__red-horizons__/assets/wind-turbine-icon.png",
    icon_size = 64
}

--- @type data.ItemPrototype
local item = {
    name = "wind-turbine",
    type = "item",
    stack_size = 50,
    place_result = "wind-turbine",
    icon = "__red-horizons__/assets/wind-turbine-icon.png",
    icon_size = 64
}

--- @type data.RecipePrototype
local recipe = {
    name = "wind-turbine",
    type = "recipe",
    show_amount_in_title = false,
    category = "crafting",
    subgroup = "energy",
    icon = "__red-horizons__/assets/wind-turbine-icon.png",
    icon_size = 64,
    ingredients = {
        {"accumulator", 2},
        {"steel-plate", 50},
        {"iron-gear-wheel", 20},
        {"advanced-circuit", 5},
    },
    result = "wind-turbine",
    energy_required = 10,
    emissions_multiplier = 2,
}

return {
    entity = entity,
    item = item,
    recipe = recipe
}
