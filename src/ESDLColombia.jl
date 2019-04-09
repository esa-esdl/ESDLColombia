__precompile__(false)
module ESDLColombia
import ESDL

colombia_staticvars = ["Bioma_IAvH2",
 "CKCM_hidrosig",
 "CKC_hidrosig",
 "CKe_hidrosig",
 "KDE_hidrosig",
 "bio_units",
 "canopy_height",
 "municipios"]
foreach(i->push!(ESDL.Cubes.ESDLZarr.static_vars,i),colombia_staticvars)

ESDL.Cubes.ESDLZarr.known_names["Bioma_IAvH2"] = "Biome"
ESDL.Cubes.ESDLZarr.known_names["municipios"]  = "Municipio"

biomedict = include("Bioma_IAvH2_ID.jl")
municipiosdict = include("municipios_ID.jl")
ESDL.Cubes.ESDLZarr.known_labels["Bioma_IAvH2"] = biomedict
ESDL.Cubes.ESDLZarr.known_labels["municipios"]  = municipiosdict

end # module
