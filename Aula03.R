# 1. Baixe o arquivo .txt disponibilizado e armazene-o em uma vari�vel
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

# 3.D� uma olhada no vetor resultante, perceba que, como foi dito e mostrado na aula, ele possui algumas palavras estranhas que dificultariam uma futura an�lise (ex.: 'come9ara'). Vamos supor que essas palavras n�o teriam impacto nenhum em nossa an�lise e vamos desconsider�-las, fingindo que s�o erros de c�digo que apare�am no arquivo durante o download.
# Crie uma vari�vel chamada 'vet_num' e armazene nela todas as palavras que cont�m d�gitos e uma vari�vel chamada 'vet_limpo', onde voc� ir� armazenar o texto sem as palavras com os d�gitos.
vet_num <- grep("\\d", vetor_palavras_2)
vet_limpo <- vetor_palavras_2[-vet_num]

print(vet_num)

print(vet_limpo)

# 4. Ap�s futura an�lise, voc� identificou outro erro de c�digo. Dessa vez, foram identificados diversos objetos de vetor contendo a escrita '�'. Crie um novo vetor chamado 'vet_a' e atribua a ele todas as palavras que possuem '�'. Ap�s isso, atualize a vari�vel 'vet_limpo' removendo todas as palavras que possuem '�'.
vet_a <- grep("�", vet_limpo)
vet_limpo <- vet_limpo[-vet_a]

# 5. Vamos supor que voc� decida calcular a propor��o de palavras err�neas vindas do arquivo .txt. Para isso, voc� precisa criar um novo vetor contendo as palavras que foram consideradas erros(palavras com d�gitos e '�').
# Ap�s isso, calcule a propor��o erro/palavra do arquivo baixado.
vet_erro <- c(vet_num, vet_a)
prop <- length(vet_erro) / length(vetor_palavras_2)
prop