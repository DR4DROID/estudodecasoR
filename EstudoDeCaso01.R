
#o conjunto de dados Iris (uma espécie de flor) que
#é popularmente conhecida como lírios. Esse conjunto de dados contém
#três espécies (classes) cadastradas: setosa, versicolor ou virginica.
#Também contém as medidas (em centímetros) associadas a cada espécie
#que são: o comprimento e a largura das pétalas e o comprimento e
#a largura das sépalas
# instalando package e carregar dataset para estudo de caso

install.packages("dataset")
library("dataset")
data(iris) 
iris

#converta para data.table
#nao pode esquecer de carregar os pacotes data.table e deplyr

DT <- data.table(iris)
DT