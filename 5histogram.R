# plot distribution of emotions
ggplot(sent_df, aes(x=emotion)) +
geom_bar(aes(y=..count.., fill=emotion)) +
scale_fill_brewer(palette="Dark2") +
labs(x="emotion categories", y="number of tweets") +
ggtitle("Sentiment Analysis of Tweets about Webjet\n(classification by emotion)") +
theme(plot.title = element_text(size=12, face="bold"))
