--- @type  data.ElectricEnergyInterfacePrototype
local entity = {
    type = "electric-energy-interface",
    name = "wind-turbine",
    energy_source = {
        buffer_capacity = "10MJ",
        usage_priority = "primary-output",
        output_flow_limit = "150kW",
        render_no_power_icon = false,
    },
    energy_production = "10kW",
    gui_mode = "all",
    is_military_target = false,
    picture = {
        filename = "__red-horizons__/assets/wind_idle.png",
        height = 1080,
        width = 1920
    },
    max_health = 500,
    repair_speed_modifier = 1.5,
    minable = {mining_time = 0.8, result = "wind-turbine"},
    icon = "__red-horizons__/assets/wind_idle.png",
    icon_size = 64
}

--- @type data.ItemPrototype
local item = {
    name = "wind-turbine",
    type = "item",
    stack_size = 50,
    place_result = "wind-turbine",
    icon = "__red-horizons__/assets/wind_idle.png",
    icon_size = 64
}

return {
    entity = entity,
    item = item,
}
