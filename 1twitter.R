library(twitteR)
library(wordcloud)
library(RColorBrewer)
library(plyr)
library(ggplot2)
library(sentiment)
options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
 
api_key = "xxxxxxxxxxxxxxxxxxxxxx"
api_secret = "xxxxxxxxxxxxxxxxxxx"
access_token = "xxxxxxxxxxxxxxxxxxx"
access_token_secret = "xxxxxxxxxxxxxxxxxxx"
 
setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)