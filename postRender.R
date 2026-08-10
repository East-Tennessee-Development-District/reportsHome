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
cnameLoc <- here::here("docs","CNAME")
if (!file.exists(cnameLoc)){
  file.create(cnameLoc)
}
fileConn<-file(cnameLoc)
writeLines("reports.etdd.org", fileConn)
close(fileConn)
