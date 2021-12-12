# devtools::document("ajoutRep")
# install.packages("gsheet")

# copy all
library("gsheet")

# fonction qui charge la page copyAll
copy.all <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=31083732'))
  table <- table[1:2]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}

# list Desc

# fonction qui charge la page listDesc desc
listDesc.desc <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620050719'))
  table <- table[1:8]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}
# fonction qui charge la page listDesc ec
listDesc.ec <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620050719'))
  table <- table[9:14]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}
# fonction qui charge la page listDesc ter
listDesc.ter <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620050719'))
  table <- table[16:21]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}
# fonction qui charge la page listDesc special
listDesc.special <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620050719'))
  table <- table[23:28]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}

# liste compl

# fonction qui charge la page film
listeCompl.film <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1690868882'))
  table <- table[11:14]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}
# fonction qui charge la page fini
listeCompl.fini <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1690868882'))
  table <- table[16:19]
  table <- data.frame(table)
  na.omit(table)
  print("1-2-3-4")
  print("->")
  return(table)
}
# fonction qui charge la page ec
listeCompl.ec <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1690868882'))
  table <- table[21:24]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}

# prem der all

# fonction qui charge la page prem der
premder.prem.der <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1010487981'))
  table <- table[20:23]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}
# fonction qui charge la page premder
premder.premder <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1010487981'))
  table <- table[25:27]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}
# fonction qui charge la page premder ec
premder.ec <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1010487981'))
  table <- table[29:32]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}
# fonction qui charge la page premder ter
premder.ter <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1010487981'))
  table <- table[34:37]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}

# resume s

# fonction qui charge la page resumeS
resumeS <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=653265366'))
  table <- data.frame(table)
  na.omit(table)
  return(table)
}

# resume m

# fonction qui charge la page resumeM
resumeM <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1595940985'))
  table <- data.frame(table)
  na.omit(table)
  return(table)
}

# smra

# fonction qui charge la page smra
smra <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=284450002'))
  table <- table[1:5]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}
# fonction qui charge la page ordre a terminer
ordreATerm <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=284450002'))
  table <- table[10:13]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}

pageappressup <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=499443320'))
  table <- table[1:16]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}

pageappres <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1597358116'))
  table <- table[1:16]
  table <- data.frame(table)
  na.omit(table)

  return(table)
}

pars2 <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=357008918'))
  table <- table[1:4]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}

affodd <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=958222584'))
  table <- table[1:41]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}

PA <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2002465198'))
  table <- table[1:3]
  table <- data.frame(table)
  na.omit(table)
  return(table)
}


