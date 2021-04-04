## Task 1 Predict the percentage of an student based on the no. of study hours.
# take data from csv file
r<-read.csv("student_scores - student_scores.csv")
r
relate<-lm(Hours~Scores, data =r )       ##create relationship and get coefficients
relate

summary(relate)     #get the summary of the data
#percentage score when study for 9.25 h/day  
score<-(0.097480*9.25-0.006286)
score            #it is the predicted value
percent<-score*100
percent
# Hence 89.5404 %

# Visualize regression graphically
png(file="linearregression.jpg")    #create file 
plot(r$Hours,r$Scores,main="Study hour and score",col="red",
     xlab="Hours",ylab="scores",pch=16)
dev.off()           #save the file
