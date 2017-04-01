# Set path ---------------------------------------------------------------------
if(Sys.info()["sysname"] == "Windows"){
  filepath_base <- "C:/Users/tnauss/permanent/edu/msc-phygeo-environmental-observation/"
} else {
  filepath_base <- "/media/permanent/active/moc/msc-ui/"
}

path_data <- paste0(filepath_base, "data/")

path_gbif <- paste0(path_data, "gbif/")
path_model <- paste0(path_data, "model/")
path_raster <- paste0(path_data, "raster/")
path_dem <- paste0(path_raster, "dem/")
path_climate <- paste0(path_raster, "climate/")
path_corine <- paste0(path_raster, "corine/")
path_forest <- paste0(path_raster, "forest/")

path_rdata <-paste0(path_data, "rdata/")
path_temp <- paste0(path_data, "temp/")

path_vectors <- paste0(path_data, "vector/")
path_admin <- paste0(path_vectors, "DEU_adm_shp/")

# path_aerial_croped <- paste0(path_aerial, "croped/")
# path_aerial_geomoc <- paste0(path_aerial, "geomoc/")
# path_aerial_merged <- paste0(path_aerial, "merged/")
# path_aerial_org <- paste0(path_aerial, "org/")
# path_aerial_preprocessed <- paste0(path_aerial, "preprocessed/")
# 
# path_hessenforst <- paste0(path_data, "hessenforst/")
# 
# path_hydrology <- paste0(path_data, "hydrology/")
# 
# path_lidar <- paste0(path_data, "lidar/")
# path_lidar_rasters <- paste0(path_lidar, "rasters/")
# 
# 
# 
# path_muf_set1m <- paste0(path_data, "muf_set_1m/")
# path_muf_set1m_lcc <- paste0(path_muf_set1m, "lcc/")
# path_muf_set1m_lcc_ta <- paste0(path_muf_set1m_lcc, "training_areas/")
# path_muf_set1m_lcc_ta_rsws091 <- paste0(path_muf_set1m_lcc_ta, "sample_rsws091/")
# path_muf_set1m_lidar <- paste0(path_muf_set1m, "lidar/")
# path_muf_set1m_sample_non_segm <- paste0(path_muf_set1m, "sample_non_segm/")
# path_muf_set1m_sample_segm <- paste0(path_muf_set1m, "sample_segm/")
# path_muf_set1m_sample_segm_rgb_idx <- paste0(path_muf_set1m, "sample_segm_rgb_idx/")
# path_muf_set1m_sample_rses071 <- paste0(path_muf_set1m, "sample_rses071/")
# path_muf_set1m_sample_rsws061 <- paste0(path_muf_set1m, "sample_rsws061/")
# path_muf_set1m_sample_rsws093 <- paste0(path_muf_set1m, "sample_rsws093/")
# path_muf_set1m_sample_test_01 <- paste0(path_muf_set1m, "sample_test_01/")
# 
# 
# 
# path_vectors <- paste0(path_data, "vectors/")


# Libraries --------------------------------------------------------------------
options(java.parameters = "-Xmx5g")
library(dismo)
library(dplyr)
library(maps)
library(maptools)
library(mapview)
library(plyr)
library(raster)
library(rgbif)
library(rgdal)
library(rgeos)
library(rJava)
library(sp)
# library(doParallel)
# library(glcm)
# library(gpm)
# library(mapview)
# library(raster)
# library(rgdal)
# library(rgeos)
# library(satelliteTools)
# library(metTools)
# library(sp)


# Functions --------------------------------------------------------------------
path_functions <- paste0(filepath_base, "scripts/msc-phygeo-environmental-observation/src/functions/")
fcts <- list.files(path_functions, pattern = glob2rx("*.R"), full.names = TRUE)
sapply(fcts[-which(basename(fcts) == "set_environment.R")], source)


# Other settings ---------------------------------------------------------------
# rasterOptions(tmpdir = path_temp)

saga_cmd <- "C:/OSGeo4W64/apps/saga/saga_cmd.exe "
# initOTB("C:/OSGeo4W64/bin/")
# initOTB("C:/OSGeo4W64/OTB-5.8.0-win64/OTB-5.8.0-win64/bin/")
