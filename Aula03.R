# 1. Baixe o arquivo .txt disponibilizado e armazene-o em uma variável
setwd("C:/Users/Joice/Documents/R")

texto <- scan("aula03-texto-poder_do_habito.txt", what = "Character", sep = "\n")

#2. Execute os comandos aprendidos na aula e tenha um vetor de caracteres contendo as palavras do arquivo .txt (cada objeto do vetor precisa ser uma palavra)
texto2 <- paste(texto, collapse = " ")
texto_min <- tolower(texto2)
palavras_texto <- strsplit(texto_min, "\\W")
vetor_palavras <- unlist(palavras_texto)
n_branco <- which(vetor_palavras != "")
vetor_palavras_2 <- vetor_palavras[n_branco]
print(vetor_palavras_2)

# 3.Dê uma olhada no vetor resultante, perceba que, como foi dito e mostrado na aula, ele possui algumas palavras estranhas que dificultariam uma futura análise (ex.: 'come9ara'). Vamos supor que essas palavras não teriam impacto nenhum em nossa análise e vamos desconsiderá-las, fingindo que são erros de código que apareçam no arquivo durante o download.
# Crie uma variável chamada 'vet_num' e armazene nela todas as palavras que contém dígitos e uma variável chamada 'vet_limpo', onde você irá armazenar o texto sem as palavras com os dígitos.
vet_num <- grep("\\d", vetor_palavras_2)
vet_limpo <- vetor_palavras_2[-vet_num]

print(vet_num)

print(vet_limpo)

# 4. Após futura análise, você identificou outro erro de código. Dessa vez, foram identificados diversos objetos de vetor contendo a escrita 'â'. Crie um novo vetor chamado 'vet_a' e atribua a ele todas as palavras que possuem 'â'. Após isso, atualize a variável 'vet_limpo' removendo todas as palavras que possuem 'â'.
vet_a <- grep("â", vet_limpo)
vet_limpo <- vet_limpo[-vet_a]

# 5. Vamos supor que você decida calcular a proporção de palavras errôneas vindas do arquivo .txt. Para isso, você precisa criar um novo vetor contendo as palavras que foram consideradas erros(palavras com dígitos e 'â').
# Após isso, calcule a proporção erro/palavra do arquivo baixado.
vet_erro <- c(vet_num, vet_a)
prop <- length(vet_erro) / length(vetor_palavras_2)
prop