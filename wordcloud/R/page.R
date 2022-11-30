# fonctions qui charge les pages


#dashboard
aDashboard <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1036618758')))
  na.omit(table)
  return(table)
}
#param

#Réponses au formulaire 2
aAccueil <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1775525986')))
  na.omit(table)
  return(table)
}
#LD
aLD <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=136339885')))
  na.omit(table)
  return(table)
}
#data

#menu
aMenu <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1225067668')))
  na.omit(table)
  return(table)
}
#codeSaison
aCodeSaison <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=485468446')))
  na.omit(table)
  return(table)
}
#ALEA
aAlea <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=998240626')))
  na.omit(table)
  return(table)
}
#menu2
aMenu2 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=401482060')))
  na.omit(table)
  return(table)
}
#copy by script
aCopyScript <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')))
  na.omit(table)
  return(table)
}
#max_all
aMax <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=493176507')))
  na.omit(table)
  return(table)
}
#concl
aConcl <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=713025701')))
  na.omit(table)
  return(table)
}
#conclBis
aConclBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1811363331')))
  na.omit(table)
  return(table)
}
#eff
aEff <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2067255367')))
  na.omit(table)
  return(table)
}
#copyGraph

#cps
aCps <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=909204380')))
  na.omit(table)
  return(table)
}
#PA
aPA <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2002465198')))
  na.omit(table)
  return(table)
}
#PAt
aPAt <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=152374649')))
  na.omit(table)
  return(table)
}
#PAR0
aPAR0 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1597358116')))
  na.omit(table)
  return(table)
}
#PARS0
aPARS0 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=499443320')))
  na.omit(table)
  return(table)
}
#PAR
aPAR <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1218394326')))
  na.omit(table)
  return(table)
}
#PARS
aPARS <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=357008918')))
  na.omit(table)
  return(table)
}
#cal21
aCal21 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=669005205')))
  na.omit(table)
  return(table)
}
#calEC
aCalEc <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=919733070')))
  na.omit(table)
  return(table)
}
#calAutre
aCalAutre <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=484101736')))
  na.omit(table)
  return(table)
}
#calAsie
aCalAsie <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2121588304')))
  na.omit(table)
  return(table)
}
#calTest

#cal3
aCal3 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=855661173')))
  na.omit(table)
  return(table)
}
#reste
aReste <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=56639949')))
  na.omit(table)
  return(table)
}
#resteOffset
aResteOffset <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1997076355')))
  na.omit(table)
  return(table)
}
#restePC
aRestePC <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=667284842')))
  na.omit(table)
  return(table)
}
#resteData

#resteBis
aResteBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=654027828')))
  na.omit(table)
  return(table)
}
#copy all bis
aCopyAllBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=900010773')))
  na.omit(table)
  return(table)
}
#ep suiv
aEpSuiv <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1921025619')))
  na.omit(table)
  return(table)
}
#ECocc
aECocc <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1331384491')))
  na.omit(table)
  return(table)
}
#en cours occ
aECocc2 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=878985469')))
  na.omit(table)
  return(table)
}
#OCC_ec
aOCCec <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=22796707')))
  na.omit(table)
  return(table)
}
#EC/TER
aEcTer <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=700070215')))
  na.omit(table)
  return(table)
}
#listes
aListes <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=222368973')))
  na.omit(table)
  return(table)
}
#liste desc
aListDesc <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620050719')))
  na.omit(table)
  return(table)
}
#listes complete
aListeCompl <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1690868882')))
  na.omit(table)
  return(table)
}
#premDerAll
aPremDer <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1010487981')))
  na.omit(table)
  return(table)
}
#choixdate
aChoixDate <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2131083158')))
  na.omit(table)
  return(table)
}
#duree
aDuree <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1741410587')))
  na.omit(table)
  return(table)
}
#ODD_all
aODDall <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=523933003')))
  na.omit(table)
  return(table)
}
#ODD_ssChgmt
aODDsschgmt <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=565258026')))
  na.omit(table)
  return(table)
}
#ODD_ter
aODDter <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1473953539')))
  na.omit(table)
  return(table)
}
#ODD
aODD <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1699908328')))
  na.omit(table)
  return(table)
}
#affODD
aAffODD <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=958222584')))
  na.omit(table)
  return(table)
}
#tisaep
aTisaep <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=168696306')))
  na.omit(table)
  return(table)
}
#smra
aSmra <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=284450002')))
  na.omit(table)
  return(table)
}
#calculSmra
aCalculSmra <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1553969376')))
  na.omit(table)
  return(table)
}
#nbTpsP
aNbTpsP <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=274989067')))
  na.omit(table)
  return(table)
}
#nbTpsPBis
aNbTpsPbis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1276575399')))
  na.omit(table)
  return(table)
}
#URL
aURL <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=202069166')))
  na.omit(table)
  return(table)
}
#rew
aRew <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=509939744')))
  na.omit(table)
  return(table)
}
#rewind22
aRewind <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2019782408')))
  na.omit(table)
  return(table)
}
#tv
aTv <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=134074616')))
  na.omit(table)
  return(table)
}
#emtv

#list finished
aListFinished <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1084004995')))
  na.omit(table)
  return(table)
}
#list ongoing
aListOngoing <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=571487061')))
  na.omit(table)
  return(table)
}
#listToSee
aListToSee <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1272080585')))
  na.omit(table)
  return(table)
}
#tracker
aTracker <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1166635742')))
  na.omit(table)
  return(table)
}
#trackerR

#trackerN

#toTab
aToTab <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=818652206')))
  na.omit(table)
  return(table)
}





# ou aAffODD
aOrdreDate <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=958222584')))
  na.omit(table)
  return(table)
}




# -----------------------------------------------------

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


# a <- function(link){
#   table <- data.frame(suppressWarnings(gsheet2tbl(link)))
#   na.omit(table)
#   return(table)
# }
