set.seed(123)

workers <- data.frame(
  id = 1:400,
  name = paste("Worker",1:400,sep="_"),
  gender = sample(c("Male","Female"),400,replace=TRUE),
  salary = sample(5000:30000,400,replace=TRUE)
)
for(i in 1:nrow(workers)){

  level <- "Normal"

  if(workers$salary[i] > 10000 & workers$salary[i] < 20000){
    level <- "A1"
  }

  else if(workers$salary[i] > 7500 & workers$salary[i] < 30000 & workers$gender[i]=="Female"){
    level <- "A5-F"
  }

  cat("---------------------------\n")
  cat("Payment Slip\n")
  cat("Worker ID:",workers$id[i],"\n")
  cat("Name:",workers$name[i],"\n")
  cat("Gender:",workers$gender[i],"\n")
  cat("Salary:",workers$salary[i],"\n")
  cat("Employee Level:",level,"\n")
}