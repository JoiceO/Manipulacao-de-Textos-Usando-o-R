# 1. Crie as variáveis a seguir e realize as operações em seguida
# a. var_1 com valor 100
var_1 <- 100
# b. "var_2" com valor 2
var_2 <- 2
# c. "var_3" com valor 1500
var_3 <- 1500
# d. "var_4" com valor 1000
var_4 <- 1000
# e. "var_5" com valor "10"
var_5 <- "10"
# f. utilize a função class() para ver as classes das variáveis "var_1" e "var_5"
class(var_1)
class(var_5)

# #2. A partir das variáveis criadas acima:
# a. multiplique duas e obtenha o número 2000
var_2 * var_4
# b. divida duas e obtenha o número 50
var_1 / var_2
# c. some duas e obtenha o número 1600
var_1 + var_3
# d. subtraia duas variáveis e obtenha o número -1400
var_1 - var_3
# e. faça uma operação entre duas variáveis e obtenha o valor atribuído à var_1
var_4 / as.numeric(var_5)


# 3. Crie as variáveis a seguir e realize as operações em seguida:
# a. crie uma variável chamada "vet_1" e atribua os valores 5,10,15,20,25
vet_1 = c(5,10,15,20,25) #c é a função concatenar
# b. crie uma variável chamada "vet_2" e atribua os valores 1,10,100
vet_2 = c(1,10,100)
# c. crie uma variável chamada "vet_3" e atribua os valores 2,4,6,8,10
vet_3 = c(2,4,6,8,10)
# d. crie uma variável chamada "vet_4" e atribua os valores "1","2","3","4","5"
vet_4 = c("1","2","3","4","5")
# e. utilize a função class() para ver a classe das variáveis vet_1 e vet_4
class(vet_1)
class(vet_4)

# 4. A partir dos vetores acima:
# a. realize uma única operação e obtenha os valores 1,2,3,4,5
vet_3 / 2
# b. obtenha os valores 1,100 e 10000
vet_2 ^ 2
# c.obtenha os valores 3,6,9,12,15
vet_1 - vet_3
# d. realize uma operação entre dois vetores e obtenha os valores 5,20,45,80 e 125
vet_1 * as.numeric(vet_4)


# 5. Execute os seguintes comandos:
# a. crie o dataframe a seguir:
#   dataframe1 = data.frame("retorno_ativo_1" = c(0.50, 0.03, -0.20, 1.30, -0.40), "retorno_ativo_2" = c(-0.30, 0.01, 0.40, -2.00, 0.90))
dataframe1 = data.frame("retorno_ativo_1" = c(0.50, 0.03, -0.20, 1.30, -0.40), "retorno_ativo_2" = c(-0.30, 0.01, 0.40, -2.00, 0.90))

# b. esse valores representam uma certa porcentagem. A partir do dataframe criado, crie um novo dataframe com os valores expressos em %
dataframe2 = data.frame("retorno_ativo_1" = c(0.50, 0.03, -0.20, 1.30, -0.40) *100, "retorno_ativo_2" = c(-0.30, 0.01, 0.40, -2.00, 0.90) *100)


# c. a função cor() nos retorna a correlação entre dois conjuntos de dados. Utilizando-a com os argumentos x e y, qual é a correlação entre o retorno dos 2 ativos?
cor.test(dataframe2$retorno_ativo_1, dataframe2$retorno_ativo_2)
