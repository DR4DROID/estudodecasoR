#Em relação aos gráfi cos, existem inúmeras opções como histograma,
#pizza, barra, dispersão, entre outros, em que cada um tem a sua aplica bilidade.
# Diante disso, pede-se que crie os seguintes gráficos:
#
#  a) Mostre a frequência das quatros variáveis: Sepal.Lenght, 
#     Sepal.Width, Petal.Length e Petal.Width.
#     
#     

#GRAFICO COMPRIMENTO DA SÉPALA
hist(DT$Sepal.Length,
     main = "Comp Sépala",
     xlab = "Comprimento da Sépala",
     ylab = "Frequencia Absoluta",
     col = "green",
     border = TRUE,
     xlim = c(4.1,8),
     ylim = c(0,35),
     labels = TRUE
     )

#Gráfico LArgura da Sépala

hist(DT$Sepal.Width,
     main = "Largura Sépala",
     xlab = "Largura da Sépala",
     ylab = "Frequencia Absoluta",
     col = c("lightgreen","green","darkgreen"),
     xlim = c(2.0,4.5),
     ylim = c(0,40),
     border = TRUE,
     labels = TRUE
)

#Gráfico Comprimento da Pétala

hist(DT$Petal.Length,
     main = "Comprimento Pétala",
     xlab = "Comprimento Pétala",
     ylab = "Frequência Absoluta",
     col = c("lightblue","blue","lightgrey"),
     xlim = c(1,7),
     ylim =c(1,40),
     labels = TRUE
     
)

#Gráfico Largura da Pétala

hist(DT$Petal.Width,
     main = "LArgura Pétala",
     xlab = "Largura Pétala",
     ylab = "Frequência Absoluta",
     col = c("lightblue","blue","lightgrey"),
     xlim = c(0.1,2.9),
     ylim =c(0,35),
     labels = TRUE
     
)

#b) Crie um gráfi co de dispersão usando o pacote ggplot2 que exiba a
#relação entre o tamanho da sépala e o tamanho da pétala dos lírios.

ggplot(data = DT) +
  geom_point(mapping = aes(x = Sepal.Length, y = Petal.Length), color='red')

#c) Crie um gráfico de dispersão usando o pacote ggplot2 que exiba a
#relação entre a largura da sépala e a largura da pétala dos lírios.
#

ggplot(data = DT) +
  geom_point(mapping = aes(x = Sepal.Width, y = Petal.Width), color='red')

#d) Crie uma faceta que exiba a relação entre o tamanho da sépala e o
#tamanho da pétala dos lírios classificados (divididos) pelas espécies:
#  Setosa, Virginica e Versicolor.

ggplot(data = DT) +
  geom_point(mapping = aes(x = Sepal.Length, y = Petal.Length, color= Species)) +
  facet_wrap(~ Species)


#representando grafico em box
#

box <- ggplot(DT,aes(x=Species, y=Sepal.Length))
  box + geom_boxplot(aes(fill=Species))