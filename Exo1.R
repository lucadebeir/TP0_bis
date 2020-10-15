#Question 2
poids<-c(60,72,57,90,95,72)
taille<-c(1.75,1.80,1.65,1.5,1.74,1.91)
sexe<-c('F','H','F','H','H','H')

#Question 3
bmi<-poids/(taille*taille)

#Question 4
write.table(bmi, "mydata.txt", sep="\t")

#Question 5
bmiSup20<-bmi[bmi>20]

#Question 6
matrice<-matrix(c(poids,taille,bmi,sexe),length(poids))

#Question 7
str(matrice)
#str(a) affiche la structure d'un objet R

#Question 8
save(poids,taille,sexe,bmi,bmiSup20,matrice, file = '.Rdata')

#Question 9
load(file = ".RData")