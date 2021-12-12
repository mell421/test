# devtools::document("ajoutRep")
# install.packages("gsheet")

# usethis::use_vignette("base_de_donnees_principale")

library("gsheet")

# fonction qui charge la page d'accueil
accueil <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1775525986'))
  table <- table[1:15]
  na.omit(table)
  table <- data.frame(table)

  return(table)
}
