# Estat?stica B?sica

# Parte 3 - Medidas de Posi??o Relativa

# Cuidado: A Linguagem R ? case sensitive!

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/dmpm/Documents/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo dos dados
head(vendas)
tail(vendas)
view(vendas)
View(vendas)
View(Vendas)

# Medidas de Tend?ncia Central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

# Explorando vari?veis num?ricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferen?a entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))