# devtools::document("ajoutRep")
# install.packages("gsheet")
# usethis::use_vignette("base_de_donnees_principale")
library("gsheet")

# fonction qui charge la page copy
copy <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- cbind(table[13:14],table[18],table[25],table[51],table[56])
  na.omit(table)
  table <- data.frame(table)
  return(table)
}

# fonction qui charge la page copy code
copy.code <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[1:5]
  na.omit(table)
  table <- data.frame(table)
  return(table)
}
# fonction qui charge la page copy conclu
copy.conclu <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[9:16]
  na.omit(table)
  table <- data.frame(table)

  return(table)
}
# fonction qui charge la page copy sem
copy.sem <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[17:23]
  na.omit(table)
  table <- data.frame(table)

  return(table)
}
# fonction qui charge la page copy mois
copy.mois <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[24:30]
  na.omit(table)
  table <- data.frame(table)

  return(table)
}
# fonction qui charge la page copy smra
copy.smra <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[44:49]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}
# fonction qui charge la page copy max
copy.max <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[50:53]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}
# fonction qui charge la page copy eff
copy.eff <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[56:79]
  table <- table[2:max(length(table)),]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}

mainCopy <- function(){
  s <- accueil()
  print(s[1,])
  t <- copy.code()
  print(t[1,])
  u <- copy.conclu()
  print(u[1,])
  v <- copy.sem()
  print(v[1,])
}
