
# classify emotion
class_emo = classify_emotion(get_txt, algorithm="bayes", prior=1.0)
# get emotion best fit
emotion = class_emo[,7]
# substitute NA's by "unknown"
emotion[is.na(emotion)] = "unknown"
 
# classify polarity
class_pol = classify_polarity(get_txt, algorithm="bayes")
# get polarity best fit
polarity = class_pol[,4]
sent_df = data.frame(text=get_txt, emotion=emotion,
polarity=polarity, stringsAsFactors=FALSE)
 
# sort data frame
sent_df = within(sent_df,
emotion <- factor(emotion, levels=names(sort(table(emotion), decreasing=TRUE))))