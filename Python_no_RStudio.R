
# Como Utilizar Python no R: Integrando o Melhor dos Dois Mundos ---------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 29/04/25 ---------------------------------------------------------------------------------------------------------------------------

# Instalando e Configurando o reticulate ---------------------------------------------------------------------------------------------------

install.packages("reticulate")
library(reticulate)

# Exemplo 1: Executando Código Python no R -------------------------------------------------------------------------------------------------

## Executando um script Python simples

py_run_string("
x = 10
y = 20
z = x + y
print(z)
")

# Exemplo 2: Usando Pacotes Python no R ----------------------------------------------------------------------------------------------------

np <- import("numpy")

# Criando um array numpy

arr <- np$array(c(1, 2, 3, 4, 5))
print(arr)

# Calculando a média com numpy

media <- np$mean(arr)
print(paste("Média:", media))
