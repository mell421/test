# devtools::document("ajoutRep")
# install.packages("gsheet")
# usethis::use_vignette("base_de_donnees_principale")
# devtools::document("ajoutRep")
# devtools::install("ajoutRep")

loadMesSources <- function(){
  source("./R/accueil.R")
  source("./R/copy.R")
  source("./R/nombre.R")
  source("./R/max.resume.R")
  source("./R/resume.R")
  source("./R/page.R")
  source("./R/page2.R")
  source("./R/word.R")
}
installMesPackages <- function(){
  install.packages("gsheet")
  install.packages("tm")
  install.packages("SnowballC")
  install.packages("wordcloud")
  install.packages("RColorBrewer")
  install.packages("syuzhet")
  install.packages("ggplot2")
  install.packages(utf8)
  install.packages(dplyr)
  webshot::install_phantomjs(force = TRUE)
  install.packages("Hmisc")

}



loadMesPackages <- function(){
  library(car)
  library(dplyr)
  library(DT)
  require("gsheet")
  library("ggplot2")
  library(ggraph)
  library("htmlwidgets")
  library(Hmisc)
  library("tm")
  library(tidygraph)
  library("RColorBrewer")
  library("SnowballC")
  library("syuzhet")
  suppressWarnings(require(tidyverse))
  require("utf8")
  require("wordcloud")
  require(wordcloud2)
  require("webshot")
  require(vtable)
  require(devtools)
}

loadMesPackages()
loadMesSources()
