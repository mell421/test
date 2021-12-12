# fonctions qui charge les pages

aAccueil <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1775525986')))
  na.omit(table)
  return(table)
}
aCopyScript <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')))
  na.omit(table)
  return(table)
}
aMaxBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=68509881')))
  na.omit(table)
  return(table)
}

aMaxResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=119775705')))
  na.omit(table)
  return(table)
}
aConcl <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=713025701')))
  na.omit(table)
  return(table)
}
aConclBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1811363331')))
  na.omit(table)
  return(table)
}
aConclResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=290384599')))
  na.omit(table)
  return(table)
}
aEff <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2067255367')))
  na.omit(table)
  return(table)
}
aEffResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1824479592')))
  na.omit(table)
  return(table)
}
aPageApp <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=59254568')))
  na.omit(table)
  return(table)
}
aTestMax <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1262872251')))
  na.omit(table)
  return(table)
}
aTestConclu <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1679144414')))
  na.omit(table)
  return(table)
}
aTestConcluBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620451340')))
  na.omit(table)
  return(table)
}
aTestEff <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=984518513')))
  na.omit(table)
  return(table)
}
aTestResumeF <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1855198732')))
  na.omit(table)
  return(table)
}
aTestResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1190491385')))
  na.omit(table)
  return(table)
}
aResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=382303522')))
  na.omit(table)
  return(table)
}
aCopyAll <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=31083732')))
  na.omit(table)
  return(table)
}
aListDesc <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620050719')))
  na.omit(table)
  return(table)
}
aListes <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=222368973')))
  na.omit(table)
  return(table)
}
aListeCompl <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1690868882')))
  na.omit(table)
  return(table)
}
aPremDer <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1010487981')))
  na.omit(table)
  return(table)
}
aECocc <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1331384491')))
  na.omit(table)
  return(table)
}
aOrdreDate <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=958222584')))
  na.omit(table)
  return(table)
}
aSmra <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=284450002')))
  na.omit(table)
  return(table)
}
aCal21 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=669005205')))
  na.omit(table)
  return(table)
}
aCalAutre <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=484101736')))
  na.omit(table)
  return(table)
}
aBLlist <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=505592808')))
  na.omit(table)
  return(table)
}

# -----------------------------------------------------
aURL <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=202069166')))
  na.omit(table)
  return(table)
}
z0u <- function(ligne){
  table <- data.frame(aURL())[ligne,3]
  table <- data.frame(suppressWarnings(gsheet2tbl(table)))
  na.omit(table)
  return(table)
}
z0n <- function(ligne){
  table <- data.frame(aURL())[ligne,2]
  na.omit(table)
  return(table)
}
#------------------------
aURL13 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1943108506')))
  na.omit(table)
  return(table)
}
z13u <- function(ligne){
  table <- data.frame(aURL13())[ligne,3]
  table <- data.frame(suppressWarnings(gsheet2tbl(table)))
  na.omit(table)
  return(table)
}
z13n <- function(ligne){
  table <- data.frame(aURL13())[ligne,2]
  na.omit(table)
  return(table)
}


# a <- function(){
#   table <- data.frame(suppressWarnings(gsheet2tbl('')))
#   na.omit(table)
#   return(table)
# }

