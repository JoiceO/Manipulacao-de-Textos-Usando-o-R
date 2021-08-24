install.packages("stringr")

library(stringr)

fruit

str_detect(fruit,"a") #detecta se o objeto tem ou não a letra 'a'

str_which(fruit,"a") #retorna a posição no vetor do objeto que tem 'a'

str_count(fruit,"a") #mostra quantas vezes cada objeto tem a letra 'a'

str_locate(fruit,"a") #localiza a posuição da letra 'a' em cada objeto

str_locate_all(fruit,"a")

str_sub(fruit,1,3) #separa as 3 primeiras palavras de cada objeto

str_sub(fruit,-3) #separa as 3 últimas palavras de cada objeto

str_subset(fruit,"b") #cria um subvetor com os objetos que tem a letra 'b'

grep("b", fruit, value = TRUE) #função grep faz o mesmo que a função acima

str_extract(fruit,"[aeiou]")

sentences

str_match(sentences,"(a|the) (\\w+)")

str_length(fruit)

length(fruit)

#Exercícios
#  1. Utilize o conjunto de dados fruit em todos os exercícios
# Verifique, utlizando a função str_which(), se existe alguma fruta no vetor que não contém nenhuma vogal.
fruit[-str_which(fruit, "[aeiou]")]

# 2. Usando apenas uma linha de comando, execute um código que retorna a quantidade de frutas que possuem nome composto
length(str_which(fruit, "\\s"))

# 3. Utilizando apenas uma linha de comando, execute um código que retorna a quantidade de frutas que possuem a letra 'a' como segunda letra do nome
fruit[grep(".a." , str_sub(fruit, 1, 3))]

# 4. Armazene o nome das frutas do exercício anterior em um novo vetor chamado vet_a2
vet_a2 <- fruit[grep(".a." , str_sub(fruit, 1, 3))]
vet_a2

# 5. Substitua somente a letra 'a' presente na segunda letra do nome das frutas por "-". (exemplo: "b-nana")
str_sub(vet_a2, 2, 2) = "-" 
vet_a2