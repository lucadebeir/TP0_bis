#Question 1

#Le tableau de données iris contient 150 observations de 5 variables :
  
#Sepal.Length : longueur de la sépale
#Sepal.Width : largeur de la sépale
#Petal.Length : longueur du pétale
#Petal.Width : largeur du pétale
#Species : espèce de la fleur.

#Question 2
table(iris$Species)

#Donne le nombre d'iris de chaque espèce

#Question 3

###Pour les length et width

## HISTOGRAMME
hist(iris$Sepal.Length, 
     col = c("orange"),
     main = paste("Histogramme pour la variable Sepal.Length"),
     ylab = "Effectifs",
     xlab = "Longueur du sépale")

####Pour les espèces

#effectif
table_Species<-table(iris$Species)
#proportion
prop.table(table_Species)
#barplot
barplot(table_Species, main="Répartition des espèces", 
        xlab="Nombre d'iris",
        col="orange")

#Question 4
summary(iris)

#Question 5
boxplot(iris[,c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width')],
        col = c("yellow"),                 #Pour la couleur
        main = paste("Boxplot"),     #Pour le titre
        ylab = "Quantiles")              #Pour le titre de l’axe des ordonnées


boxplot(iris$Sepal.Length ~ iris$Species,
        col = c("yellow"),
        main = paste("Boxplot pour la variable Sepal.Length, par espèce d'iris"),
        ylab = "Quantiles")