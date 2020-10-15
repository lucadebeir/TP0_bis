#Question 1
irisP<-data.frame(sapply(irisP,unlist))
write.table(irisP, "irisP.txt", quote=FALSE, sep="\t",row.names=FALSE)

#Question 2
save(irisP, file = '.Rdata')

#Question 3
load(file = ".RData")
