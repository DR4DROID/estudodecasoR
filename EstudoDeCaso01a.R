# A - criando um script que exibe apenas as colunas "Species" e "Sepal.Lenght"

#solucionando
#carregar library dplyr para utilizar função select.

library(dplyr)
select(DT,Species,Sepal.Length)
 
# B Exibir apenas os lírios da espécie setosa que possuam tamanho da
#   pétala entre o intervalo de <= a 1.4 e <= 1.7.

DT %>% filter(Species == "setosa" & Petal.Length >= 1.4 & Petal.Length <= 1.7)
 
 
#C Exibir todos os lírios da espécie setosa que possuam o tamanho da
# sépala entre 4.7 e 5.9. Os dados devem estar ordenados em ordem
# crescente pelo tamanho da sépala. (Exponha as colunas: “Species”,
# “Sepal.Lenght” e “Petal.Lenght”).

DT %>% filter(Species == "setosa" & Sepal.Length >= 4.7 & Petal.Length <=5.9) %>%
  arrange(Sepal.Length) %>% select(Species, Sepal.Length, Petal.Length)

#d  Exiba a média e o desvio padrão do tamanho da sépala de cada espécie de lírio..

DT %>% group_by(Species) %>% summarise(medsep = mean(Sepal.Length), sdsep = sd(Sepal.Length))
