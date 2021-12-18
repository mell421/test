# fonctions qui charge les pages

#1
aAccueil <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1775525986')))
  na.omit(table)
  return(table)
}

#2
aMenu <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1225067668')))
  na.omit(table)
  return(table)
}

#3
aMenu2 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=401482060')))
  na.omit(table)
  return(table)
}

#4
aTest2 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1025381187')))
  na.omit(table)
  return(table)
}

#5 ok

#6
aCopyScript <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')))
  na.omit(table)
  return(table)
}

#7
aMax <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=493176507')))
  na.omit(table)
  return(table)
}

#8
aMaxResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=119775705')))
  na.omit(table)
  return(table)
}

#9
aConcl <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=713025701')))
  na.omit(table)
  return(table)
}

#10
aConclBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1811363331')))
  na.omit(table)
  return(table)
}

#11
aConclResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=290384599')))
  na.omit(table)
  return(table)
}

#12
aEff <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2067255367')))
  na.omit(table)
  return(table)
}

# 13 14

#15
aEffResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1824479592')))
  na.omit(table)
  return(table)
}

# 16

#17
aPA <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=2002465198')))
  na.omit(table)
  return(table)
}

#18
aPAR0 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1597358116')))
  na.omit(table)
  return(table)
}

#19
aPARS0 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=499443320')))
  na.omit(table)
  return(table)
}

#20
aPARS <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=357008918')))
  na.omit(table)
  return(table)
}

#21
aPAR <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1218394326')))
  na.omit(table)
  return(table)
}

#22
aResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=382303522')))
  na.omit(table)
  return(table)
}

#23
aCal21 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=669005205')))
  na.omit(table)
  return(table)
}

#24
aCalAutre <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=484101736')))
  na.omit(table)
  return(table)
}

#25
aCal3 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=484101736')))
  na.omit(table)
  return(table)
}

#25
aCalEc <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=919733070')))
  na.omit(table)
  return(table)
}

#26
aReste <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=56639949')))
  na.omit(table)
  return(table)
}

#27
aResteOffset <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1997076355')))
  na.omit(table)
  return(table)
}

#28
aResteTri <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1582376183')))
  na.omit(table)
  return(table)
}

#29
aResteBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=654027828')))
  na.omit(table)
  return(table)
}

#30
aTestMax <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1262872251')))
  na.omit(table)
  return(table)
}

#31
aTestConclu <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1679144414')))
  na.omit(table)
  return(table)
}

#32
aTestConcluBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620451340')))
  na.omit(table)
  return(table)
}

#33
aTestMS <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=891019417')))
  na.omit(table)
  return(table)
}

#34
aTestEff <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=984518513')))
  na.omit(table)
  return(table)
}

#35
aTestDerJour <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=53057760')))
  na.omit(table)
  return(table)
}

#36
aTestResume <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1190491385')))
  na.omit(table)
  return(table)
}

#37
aTestPA <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=533338717')))
  na.omit(table)
  return(table)
}

#38
aCopyAll <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=31083732')))
  na.omit(table)
  return(table)
}

#39
aCopyAllBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=213693280')))
  na.omit(table)
  return(table)
}

#40
aEpSuiv <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1921025619')))
  na.omit(table)
  return(table)
}

#41
aLettreCode <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=184245758')))
  na.omit(table)
  return(table)
}

# 42 43 44

#45
aBLlist <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=505592808')))
  na.omit(table)
  return(table)
}

#46
aListDesc <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=620050719')))
  na.omit(table)
  return(table)
}

# 47

#48
aCps <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=909204380')))
  na.omit(table)
  return(table)
}

#49
aCps <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=982897317')))
  na.omit(table)
  return(table)
}

#50
aListes <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=222368973')))
  na.omit(table)
  return(table)
}

#51
aListeCompl <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1690868882')))
  na.omit(table)
  return(table)
}

#52
aAnalyseR <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1470233433')))
  na.omit(table)
  return(table)
}

#53
aAnalyseR2 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1348628472')))
  na.omit(table)
  return(table)
}

#54
aPremDer <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1010487981')))
  na.omit(table)
  return(table)
}

#55
aECocc <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1331384491')))
  na.omit(table)
  return(table)
}

#56
aECocc2 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=878985469')))
  na.omit(table)
  return(table)
}

#57
aDureeSsAuj <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=273641146')))
  na.omit(table)
  return(table)
}

#58
aDuree <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1741410587')))
  na.omit(table)
  return(table)
}

#59
aECocc80 <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=438259555')))
  na.omit(table)
  return(table)
}

# 60

#61
aODDall <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=523933003')))
  na.omit(table)
  return(table)
}

#62
aODDsschgmt <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=565258026')))
  na.omit(table)
  return(table)
}

#63
aODDssauj <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=572398384')))
  na.omit(table)
  return(table)
}

#64
aODDter <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1473953539')))
  na.omit(table)
  return(table)
}

#65
aODD <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1699908328')))
  na.omit(table)
  return(table)
}

#66
aAffODD <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=958222584')))
  na.omit(table)
  return(table)
}

#66
aTisaep <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=168696306')))
  na.omit(table)
  return(table)
}

#67
aSmra <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=284450002')))
  na.omit(table)
  return(table)
}

#68
aArms <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=746053607')))
  na.omit(table)
  return(table)
}

#69
aNbTpsP <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=274989067')))
  na.omit(table)
  return(table)
}

#70 URL https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=202069166
aURL <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=202069166')))
  na.omit(table)
  return(table)
}

#71 URLBIS	https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1943108506
aURLBIS <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1943108506')))
  na.omit(table)
  return(table)
}

#72 FILES	https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1479066256
aFiles <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1479066256')))
  na.omit(table)
  return(table)
}

#73 FilesSheets	https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=830358802
aFilesSh <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=830358802')))
  na.omit(table)
  return(table)
}

#74 stats	https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=543512625
aStats <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=543512625')))
  na.omit(table)
  return(table)
}

# 75

#76 date_code	https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1392877912
aDateCode <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1392877912')))
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


# a <- function(){
#   table <- data.frame(suppressWarnings(gsheet2tbl('')))
#   na.omit(table)
#   return(table)
# }

