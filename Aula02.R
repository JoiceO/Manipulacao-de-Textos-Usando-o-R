#1.Execute os comandos a seguir:
# a. Crie o seguinte vetor de caracteres
vet1 <- c("morder","correndo","dançar","comendo","dançando","amassar","dançam","corro","danço")
print(vet1)

#b. Suponha que você queira saber qual é a proporção de palavras derivadas do verbo "dançar" existem no vetor. Como você faria isso?
vetor1 <- grep("danç",vet1, value = TRUE)
print(vetor1)
length(vetor1) / length(vet1)

#c. Faça o mesmo do item anterior, mas agora você quer saber a proporção de palavras derivadas do verbo "correr".
vetor2 <- grep("corr",vet1, value = TRUE)
print(vetor2)
length(vetor2) / length(vet1)

#2. Crie o seguinte vetor e execute os comandos a seguir:
vet2 <- c("torre","garrafão","careta","carro","moer","correnteza","core","churrasqueira","escorrega","chore","escore","cabo")
print(vet2)

#a. Armazene em um novo vetor as palavras que possuem a letra 'o', seguida de no mínimo 1 'r', seguida da letra 'e'
novovetor <- grep("or+e",vet2,value = TRUE) # + é quantificador que significa 'pelo menos 1 vez'
print(novovetor)

#b. b. Armazene em um novo vetor as palavras que possuem 'rr' e terminam em 'o'
novovetor2 <- grep("rr|o$",vet2,value = TRUE) # | é um caractere para classes ou grupos que significa "ou"
novovetor3 <- grep("o$", novovetor2, value = TRUE) # $ é uma âncora para indicar como a string termina. neste caso, com 'o'
novovetor4 <- grep("rr", novovetor3, value = TRUE)
print(novovetor4)

# c. Armazene em um novo vetor as palavras que contém até uma letra 'r' (sem ser 'rr') e terminam em 'a'
novovetor5 <- grep("rr",vet2)  
novovetor6 <- vet2[-novovetor5]
novovetor7 <- grep("r", novovetor6, value = TRUE)
novovetor7 <- grep("a$", novovetor7, value = TRUE)
print(novovetor7)

# 3. Crie o seguinte vetor e execute os comandos a seguir:
vet3 <- c("3vezes","3_vezes","3 vezes","três vezes","três_vezes","tres vezes","tres_vezes","vezes3","vezes_3","vezes 3",3)
print(vet3)

#a. Armazene em um novo vetor os itens que possuem número
novovetor8 <- grep("\\d",vet3, value = TRUE) # \\d == possuem número
print(novovetor8)

# b. Armazene em um novo vetor os itens que possuem número e espaço
novovetor9 <- grep("\\s", novovetor8, value = TRUE) # \\s == possuem espaço
print(novovetor9)

#c. Armazene em um novo vetor os itens que possuem número no final e possuem algum sinal de pontuação
novovetor10 <- grep("\\d$", vet3, value = TRUE)
novovetor10 <- grep("[[:punct:]]", novovetor10, value = TRUE) # [[:punct:]] == possuem algum sinal de pontuação
print(novovetor10)

#d. Armazene em um novo vetor os itens que não possuem dígito nem espaço
novovetor11 <- grep("\\d|\\s", vet3)
novovetor12 <- vet3[-novovetor11]
print(novovetor12)