#cleaning the datasets

bruh = tail(control,-2)
bruh2 = tail(experimental,-2)


#make factors use numerical
bruh$Q1 <- as.numeric(as.character(bruh$Q1))
bruh$Q2_1 <- as.numeric(as.character(bruh$Q2_1))
bruh$Q2_2 <- as.numeric(as.character(bruh$Q2_2))
bruh$Q2_3 <- as.numeric(as.character(bruh$Q2_3))
bruh$Q3 <- as.numeric(as.character(bruh$Q3))
bruh$Q5 <- as.numeric(as.character(bruh$Q5))
bruh$Q6 <- as.numeric(as.character(bruh$Q6))

bruh2$Q1 <- as.numeric(as.character(bruh2$Q1))
bruh2$Q2_1 <- as.numeric(as.character(bruh2$Q2_1))
bruh2$Q2_2 <- as.numeric(as.character(bruh2$Q2_2))
bruh2$Q2_3 <- as.numeric(as.character(bruh2$Q2_3))
bruh2$Q3 <- as.numeric(as.character(bruh2$Q3))


#Q1 is same 0-10 scale
#Q2 is 
#Q3 is 1-indexed, with 1 being extremely likely, 4 being neither and 7 being extremely unlikely


#remake them into categorical
bruh$Q1 <- factor(bruh$Q1, levels=c(0,1,2,3,4,5,6,7,8,9,10))
bruh2$Q1 <- factor(bruh2$Q1, levels=c(0,1,2,3,4,5,6,7,8,9,10))

bruh$Q2_1 <- factor(bruh$Q2_1, levels=c(1,2,3,4,5))
bruh2$Q2_1 <- factor(bruh2$Q2_1, levels=c(1,2,3,4,5))

bruh$Q2_2 <- factor(bruh$Q2_2, levels=c(1,2,3,4,5))
bruh2$Q2_2 <- factor(bruh2$Q2_2, levels=c(1,2,3,4,5))

bruh$Q2_3 <- factor(bruh$Q2_3, levels=c(1,2,3,4,5))
bruh2$Q2_3 <- factor(bruh2$Q2_3, levels=c(1,2,3,4,5))

bruh$Q3 <- factor(bruh$Q3, levels=c(1,2,3,4,5,6,7))
bruh2$Q3 <- factor(bruh2$Q3, levels=c(1,2,3,4,5,6,7))

bruh$Q5 <- factor(bruh$Q3, levels=c(1,2,3,4,5,6,7))
bruh$Q6 <- factor(bruh$Q6, levels=c(1,2,3))

#plotting distributions through bar charts

bar_control_Q1 <- ggplot(bruh, aes(x = bruh$Q1))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_control_Q1<-bar_control_Q1 + xlab("Funny Rating")+ ylab("Frequency")
bar_control_Q1<-bar_control_Q1 + ggtitle("Control Group Distribution Of Funny Rating")
bar_control_Q1

bar_experimental_Q1 <- ggplot(bruh2, aes(x = bruh2$Q1))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_experimental_Q1<-bar_experimental_Q1 + xlab("Funny Rating")+ ylab("Frequency")
bar_experimental_Q1<-bar_experimental_Q1 + ggtitle("Experimental Group Distribution Of Funny Rating")
bar_experimental_Q1

bar_control_Q2_1 <- ggplot(bruh, aes(x = bruh$Q2_1))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_control_Q2_1<-bar_control_Q2_1 + xlab("Engagement Rating")+ ylab("Frequency")
bar_control_Q2_1<-bar_control_Q2_1 + ggtitle("Control Group Distribution Of Engagement Rating")
bar_control_Q2_1

bar_experimental_Q2_1 <- ggplot(bruh2, aes(x = bruh2$Q2_1))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_experimental_Q2_1<-bar_experimental_Q2_1 + xlab("Engagement Rating")+ ylab("Frequency")
bar_experimental_Q2_1<-bar_experimental_Q2_1 + ggtitle("Experimental Group Distribution Of Engagement Rating")
bar_experimental_Q2_1

bar_control_Q2_2 <- ggplot(bruh, aes(x = bruh$Q2_2))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_control_Q2_2<-bar_control_Q2_2 + xlab("Entertainment Value Rating")+ ylab("Frequency")
bar_control_Q2_2<-bar_control_Q2_2 + ggtitle("Control Group Distribution Of Entertainment Value Rating")
bar_control_Q2_2

bar_experimental_Q2_2 <- ggplot(bruh2, aes(x = bruh2$Q2_2))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_experimental_Q2_2<-bar_experimental_Q2_2 + xlab("Entertainment Value Rating")+ ylab("Frequency")
bar_experimental_Q2_2<-bar_experimental_Q2_2 + ggtitle("Experimental Group Distribution Of Entertainment Value Rating")
bar_experimental_Q2_2

bar_control_Q2_3 <- ggplot(bruh, aes(x = bruh$Q2_3))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_control_Q2_3<-bar_control_Q2_3 + xlab("Content Rating")+ ylab("Frequency")
bar_control_Q2_3<-bar_control_Q2_3 + ggtitle("Control Group Distribution Of Content Rating")
bar_control_Q2_3

bar_experimental_Q2_3 <- ggplot(bruh2, aes(x = bruh2$Q2_3))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_experimental_Q2_3<-bar_experimental_Q2_3 + xlab("Content Rating")+ ylab("Frequency")
bar_experimental_Q2_3<-bar_experimental_Q2_3 + ggtitle("Experimental Group Distribution Of Content Rating")
bar_experimental_Q2_3

bar_control_Q3 <- ggplot(bruh, aes(x = bruh$Q3))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_control_Q3<-bar_control_Q3 + xlab("Rewatch Likelihood Rating")+ ylab("Frequency")
bar_control_Q3<-bar_control_Q3 + ggtitle("Control Group Distribution Of Rewatch Likelihood Rating")
bar_control_Q3

bar_experimental_Q3 <- ggplot(bruh2, aes(x = bruh2$Q3))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_experimental_Q3<-bar_experimental_Q3 + xlab("Rewatch Likelihood Rating")+ ylab("Frequency")
bar_experimental_Q3<-bar_experimental_Q3 + ggtitle("Experimental Group Distribution Of Rewatch Likelihood Rating")
bar_experimental_Q3

grid.arrange(bar_control_Q1, bar_experimental_Q1, bar_control_Q2_1, bar_experimental_Q2_1)
grid.arrange(bar_control_Q2_1, bar_experimental_Q2_1, bar_control_Q2_2, bar_experimental_Q2_3, bar_control_Q2_3, bar_experimental_Q2_3)
grid.arrange(bar_control_Q1, bar_experimental_Q1, bar_control_Q3, bar_experimental_Q3)

bar_control_Q5 <- ggplot(bruh, aes(x = bruh$Q5))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_control_Q5<-bar_control_Q5 + xlab("Funny Rating Influence Likelihood")+ ylab("Frequency")
bar_control_Q5<-bar_control_Q5 + ggtitle("Control Group Distribution Of Funny Rating Influence Likelihood")
bar_control_Q5

#correlation for Q5 and Q1
cor(as.numeric(bruh$Q1), as.numeric(bruh$Q5))

bar_control_Q6 <- ggplot(bruh, aes(x = bruh$Q6))+ geom_bar(color="black", fill="grey") + scale_fill_discrete(drop=FALSE) + scale_x_discrete(drop=FALSE)
bar_control_Q6<-bar_control_Q6 + xlab("Keeping/Removing/No Preference For Laugh Track")+ ylab("Frequency")
bar_control_Q6<-bar_control_Q6 + ggtitle("Control Group Distribution Of Keeping/Removing/No Preference For Laugh Track")
bar_control_Q6

#correlation for Q5 and Q1
cor(as.numeric(bruh$Q1), as.numeric(bruh$Q6))





#SUMMARY STATS

#CENTERS
#for control
mean(as.numeric(bruh$Q1))
median(as.numeric(bruh$Q1))

mean(as.numeric(bruh$Q2_1))
median(as.numeric(bruh$Q2_1))
mean(as.numeric(bruh$Q2_2))
median(as.numeric(bruh$Q2_2))
mean(as.numeric(bruh$Q2_3))
median(as.numeric(bruh$Q2_3))

mean(as.numeric(bruh$Q3))
median(as.numeric(bruh$Q3))

#for experimental
mean(as.numeric(bruh2$Q1))
median(as.numeric(bruh2$Q1))

mean(as.numeric(bruh2$Q2_1))
median(as.numeric(bruh2$Q2_1))
mean(as.numeric(bruh2$Q2_2))
median(as.numeric(bruh2$Q2_2))
mean(as.numeric(bruh2$Q2_3))
median(as.numeric(bruh2$Q2_3))

mean(as.numeric(bruh2$Q3))
median(as.numeric(bruh2$Q3))

#t-tests
t.test(as.numeric(bruh$Q1), as.numeric(bruh2$Q1), alternative = "two.sided", var.equal = FALSE)

t.test(as.numeric(bruh$Q2_1), as.numeric(bruh2$Q2_1), alternative = "two.sided", var.equal = FALSE)

t.test(as.numeric(bruh$Q2_2), as.numeric(bruh2$Q2_2), alternative = "two.sided", var.equal = FALSE)

t.test(as.numeric(bruh$Q2_3), as.numeric(bruh2$Q2_3), alternative = "two.sided", var.equal = FALSE)

t.test(as.numeric(bruh$Q3), as.numeric(bruh2$Q3), alternative = "two.sided", var.equal = FALSE)


#remove outlier testing
bruh3 <- subset(bruh2, as.numeric(bruh2$Q1) > 1)
t.test(as.numeric(bruh$Q1), as.numeric(bruh3$Q1), alternative = "two.sided", var.equal = FALSE)
