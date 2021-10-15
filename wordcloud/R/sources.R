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
  library("gsheet")
  library("ggplot2")
  library(ggraph)
  library("htmlwidgets")
  library(Hmisc)
  library("tm")
  library(tidygraph)
  library("RColorBrewer")
  library("SnowballC")
  library("syuzhet")
  suppressWarnings(library(tidyverse))
  library("utf8")
  library("wordcloud")
  library(wordcloud2)
  library("webshot")

  require(devtools)
}

loadMesPackages()
loadMesSources()
