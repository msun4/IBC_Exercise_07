## Sun_Nima_Wasuwanich_Excercise 07
# Question 1
# Write a function that returns the odd (1, 3, 5, etc.) rows of any dataframe passed as an argument.
oddrows = function(df){
  rownumber = nrow(df)
  if((rownumber %% 2) == 0) {
    row.index = 2*c(1:(rownumber/2))-1
  } else {
    row.index = 2*c(1:((rownumber+1)/2))-1
  }
  print(df[row.index,])
}
#Question 2
#return the number of observations for a given species included in the data set
iris<-read.csv("iris.csv")
num_obs<-function(x, taxa) {
  resultObs<-x[x$Species==taxa,]
  return(nrow(resultObs))
}
#return a dataframe for flowers with Sepal.Width greater than a value specified by the function user
iris<-read.csv("iris.csv")
flowers <- function(x, value) {
  resultFlowers <- x[x$Sepal.Width > value, ]
  return(resultFlowers)
}
#write the data for a given species to a comma-delimited file with the given species name as the file name.
writeFile<-function(x, taxa) {
  subData<-x[x$Species==taxa, ] 
  write.csv(subData, file = paste(taxa, ".csv", sep = "")) 
}