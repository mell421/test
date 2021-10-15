# devtools::document("ajoutRep")
# install.packages("gsheet")

# usethis::use_vignette("base_de_donnees_principale")
library("gsheet")

# fonction qui charge la page maxResume date
max.resume.date <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=119775705'))
  table <- table[1:5]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}
# fonction qui charge la page maxResume pc
max.resume.pc <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=119775705'))
  table <- table[9:13]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}
# fonction qui charge la page concluResume date
conclu.resume.date <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=290384599'))
  table <- table[1:5]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}
# fonction qui charge la page concluResume pc
conclu.resume.pc <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=290384599'))
  table <- table[7:11]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}
