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

# --- WORDCLOUD

myRemoveList <- c("conclu", "conclubis","conclucompi","conclucompibis" ,"eff","the","sem","mois","premderall","last48tri","last46","offset3","nbPageTri","nbPage","nbTpsPc","titre","na")
myToSpaceList <- c("@","\\|","'<'","\\'","/")

toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
removeAccentE <- content_transformer(function (x , pattern ) gsub(pattern, "e", x))
removeAccentA <- content_transformer(function (x , pattern ) gsub(pattern, "a", x))
removeC <- content_transformer(function (x , pattern ) gsub(pattern, "c", x))
removeSpace <- content_transformer(function (x , pattern ) gsub(pattern, "", x))
wc <- function(text){
  TextDoc <- Corpus(VectorSource(text))

  TextDoc <- tm_map(TextDoc, toSpace, myToSpaceList)
  TextDoc <- tm_map(TextDoc, content_transformer(tolower))
  TextDoc <- tm_map(TextDoc, removeWords, myRemoveList)
  TextDoc <- tm_map(TextDoc, removeNumbers)
  TextDoc <- tm_map(TextDoc, removePunctuation)
  TextDoc <- tm_map(TextDoc, stripWhitespace)
  # TextDoc <- tm_map(TextDoc, removeNumbers)
  # TextDoc <- tm_map(TextDoc, removeWords, stopwords("english"))
  # TextDoc <- gsub("[[:blank:]]", "", TextDoc)
  # TextDoc <- tm_map(TextDoc, stemDocument)


  # Build a term-document matrix
  TextDoc_dtm <- TermDocumentMatrix(TextDoc)
  dtm_m <- as.matrix(TextDoc_dtm)
  # Sort by descearing value of frequency
  dtm_v <- sort(rowSums(dtm_m),decreasing=TRUE)
  dtm_d <- data.frame(word = names(dtm_v),freq=dtm_v)
  return(dtm_d)
}

