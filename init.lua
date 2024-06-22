local function register_tetrahedron(nodename, basedef)
    local base_idx = string.find(nodename, ":")
    local basemod = string.sub(nodename, 1, base_idx-1)
    local basename = string.sub(nodename, base_idx+1)
    local def = table.copy(basedef)
    def.drawtype = "mesh"
    def.mesh = "tetrahedrons_cubefit.obj"
    def.paramtype = "light"
    def.paramtype2 = "facedir"
    minetest.register_node("tetrahedrons:" .. basemod .. "_" .. basename, def)
end

if minetest.get_modpath("default") then
    register_tetrahedron("default:sandstone", minetest.registered_nodes["default:sandstone"])
end

tetrahedrons = {
    register_tetrahedron
}
