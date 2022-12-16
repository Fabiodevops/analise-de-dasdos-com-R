#caminho de trabalho

setwd("C:/Users/fabio/programas e anotacoes/linguagem R")
getwd()

#carregar o dataset
vendas <- read.csv("vendas.csv", fileEncoding = "windows-1252")

#resumo dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

#media
?mean
mean(vendas$Valor)
mean(vendas$Custo)

#media ponderada 
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

#mediana
median(vendas$Valor)
median(vendas$Custo)

#moda

moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# obtendo a moda
resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

#criando grafico de media de valor por estado com ggplot2 

install.packages("ggplot2")
library(ggplot2)

#criar o grafico 

ggplot(vendas) +
  stat_summary(aes(x = Estado,
                   y = Valor),
                   fun = mean,
                   geom = "bar",
                   fill = "lightgreen",
                   col = "grey50") +
  labs(title = "Media de Valor Por Estado")


