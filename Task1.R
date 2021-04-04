## Task 1--> Predict the percentage of an student based on the no. of study hours.
# take data from csv file
r<-read.csv("student_scores - student_scores.csv")
print(r)
relate<-lm(Scores~Hours, data =r )       ##create relationship and get coefficients
print(relate)
summary(relate)     #get the summary of the data

#prediction of percentage score when study for 9.25 h/day ---->

a<-data.frame(Hours=9.25)
perc<-predict(relate,a)
print(perc)            # Hence 92.90985 %

# Visualize regression graphically

png(file="linearregression.jpg")    #create file 
plot(r$Hours,r$Scores,main="Study hour and score",col="red",
     abline(relate),xlab="Hours",ylab="scores",xlim=c(1,10),ylim=c(20,100),pch=16)
dev.off()           #save the file
