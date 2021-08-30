# devtools::document("ajoutRep")
# install.packages("gsheet")
# usethis::use_vignette("base_de_donnees_principale")
# devtools::document("ajoutRep")
# devtools::install("ajoutRep")

loadMesSources <- function(){
  source("~/GitHub/ajoutRep/ajoutRep/R/accueil.R")
  source("~/GitHub/ajoutRep/ajoutRep/R/copy.R")
  source("~/GitHub/ajoutRep/ajoutRep/R/nombre.R")
  source("~/GitHub/ajoutRep/ajoutRep/R/max.resume.R")
  source("~/GitHub/ajoutRep/ajoutRep/R/resume.R")
  source("~/GitHub/ajoutRep/ajoutRep/R/page.R")
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
}



loadMesPackages <- function(){
  library("gsheet")
  library("tm")
  library("SnowballC")
  library("wordcloud")
  library("RColorBrewer")
  library("syuzhet")
  library("ggplot2")
  library(utf8)
  # library(dplyr)
}

loadMesPackages()
loadMesSources()
