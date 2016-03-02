ggplot(sent_df, aes(x=polarity)) +
geom_bar(aes(y=..count.., fill=polarity)) +
scale_fill_brewer(palette="RdGy") +
labs(x="polarity categories", y="number of tweets") +
ggtitle("Sentiment Analysis of Tweets about Trump\n(classification by polarity)") +
theme(plot.title = element_text(size=12, face="bold"))
