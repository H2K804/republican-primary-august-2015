harvest_tweets = searchTwitter("trump", n=1000, lang="en")
 
get_txt = sapply(some_tweets, function(x) x$getText())