newDir <- here::here("docs","CensusDataReporting")
if (!dir.exists(file.path(newDir))) {
  dir.create(file.path(newDir), recursive=TRUE)
  file.copy(
    list.files(here::here("CensusDataReporting","docs"),full.names = TRUE),
    here::here("docs","CensusDataReporting"),
    recursive=TRUE,
    overwrite=TRUE)
} else {
  print("Directory Exists")
}
      
       

