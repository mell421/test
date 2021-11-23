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
wcSimple <- function(words,freq){
  wordcloud(words = words,
            freq = freq,
            min.freq = 1,
            max.words=1500,
            random.order=FALSE,
            rot.per=0.35,
            colors=brewer.pal(8, "Dark2")
            )
}
barplotSimple <- function(freq,word,titre){
  barplot(freq,
          las = 2,
          names.arg = word,
          col =brewer.pal(8, "Dark2"),
          main =titre,
          ylab = "Word frequencies")
}
wcDouble <- function(data,forme,titreImg,delayW){
  my_graph <- wordcloud2(data = data,
                         color = "random-light",
                         backgroundColor ="black",
                         shape=forme)
  saveWidget(my_graph,"tmp.html",selfcontained = F)
  webshot("tmp.html",titreImg, delay =delayW, vwidth = 700, vheight=700)
}

