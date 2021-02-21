#1 reading the file
read.csv("C:\\Users\\KhaulA\\R_Practise\\MODULE5-LINEAR_REGRESSION\\Customer_Churn.csv")->data1

data1
head(data1)
names(data1)

#2 splitting  the function  usign sample.split SplitRatio 0.7
#imporitng caTools

library(caTools)
 sample.split(data1$tenure,SplitRatio=0.7)->div1
div1 
subset(data1,div1==T)->train1
subset(data1,div1==F)->test1

names(data1)


#3 building the model
lm(tenure~Partner,data=train)->model1
summary(model1)
model1


#4 prediction the model
predict(model1,newdata=test)-> pred_model1

  pred_model1
#5  binding actual and predicted  storing it in final
cbind(actual=test$tenure,predicted=pred_model1)->final
head(final)

actual=test$tenure
actual

predicted

#6  calculatinfg error actual-predicted storin in error
actual-predicted->error
head(error)


#7  binding final and error
cbind(final,error)->final_error
head(final_error)



#8	Finding the root mean square error

     sqrt(mean((final_error)^2))
     (sqrt(mean(final_error)^2))
     