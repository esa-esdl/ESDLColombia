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
foreach(i->push!(ESDL.CubeAPI.static_vars,i),colombia_staticvars)

ESDL.CubeAPI.known_names["Bioma_IAvH2"] = "Biome"
ESDL.CubeAPI.known_names["municipios"]  = "Municipio"

biomedict = include("Bioma_IAvH2_ID.jl")
municipiosdict = include("municipios_ID.jl")
ESDL.CubeAPI.known_labels["Bioma_IAvH2"] = biomedict
ESDL.CubeAPI.known_labels["municipios"]  = municipiosdict

end # module
