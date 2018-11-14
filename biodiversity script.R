library(spocc)
library(raster)

epitheca <- occ(query = 'Epitheca cynosura', from = 'gbif')
print(epitheca)
view(epitheca)
df = as.data.frame(occ2df(epitheca$gbif))
map_leaflet(epitheca)
