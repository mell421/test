# fonctions qui charge les pages

#1
bAffStats <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=576807038')))
  na.omit(table)
  return(table)
}

bTest <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=1128964994')))
  na.omit(table)
  return(table)
}

bTestStats <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=219183720')))
  na.omit(table)
  return(table)
}

bTestAll <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=407308580')))
  na.omit(table)
  return(table)
}


bTestDerJour <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=1696344291')))
  na.omit(table)
  return(table)
}


bTestMax <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=723150772')))
  na.omit(table)
  return(table)
}

bTestConclu <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=1106418621')))
  na.omit(table)
  return(table)
}

bTestConcluBis <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=237600700')))
  na.omit(table)
  return(table)
}

bTestSem <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=2031605160')))
  na.omit(table)
  return(table)
}

bTestMois <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=495609838')))
  na.omit(table)
  return(table)
}

bTestEff <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=1883262832')))
  na.omit(table)
  return(table)
}
bEC <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=1193160827')))
  na.omit(table)
  return(table)
}
bECpage <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1mFolz9PsT4CSUxE0ZFg8mXR10qfiIUZVE6hyxBHNID8/edit#gid=1016144867')))
  na.omit(table)
  return(table)
}


bVide <- function(){
  table <- data.frame(suppressWarnings(gsheet2tbl('')))
  na.omit(table)
  return(table)
}
#2
