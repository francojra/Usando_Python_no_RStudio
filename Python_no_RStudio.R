
# Como Utilizar Python no R: Integrando o Melhor dos Dois Mundos ---------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 29/04/25 ---------------------------------------------------------------------------------------------------------------------------

# Instalando e Configurando o reticulate ---------------------------------------------------------------------------------------------------

install.packages("reticulate")
library(reticulate)

# Exemplo 1: Executando Código Python no R -------------------------------------------------------------------------------------------------

# Executando um script Python simples

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

# Exemplo 3: Criando um Gráfico com Matplotlib ---------------------------------------------------------------------------------------------

plt <- import("matplotlib.pyplot")

# Gráfico 1

# Dados

x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 5, 7, 11)

# Criando o gráfico

plt$plot(x, y)
plt$xlabel("Eixo X")
plt$ylabel("Eixo Y")
plt$title("Gráfico Gerado no Python via R")
plt$show()

# Limpa a figura atual antes do próximo gráfico
plt$clf()  # Clear figure

# Gráfico 2

tempo_meses <- c("Fevereiro", "Abril", "Junho", "Agosto", "Outubro")
cresc_planta_cm <- c(3, 5, 7.4, 9.3, 12)

# Criando o gráfico

plt$bar(tempo_meses, cresc_planta_cm)
plt$xlabel("Tempo (meses)")
plt$ylabel("Crescimento de uma planta (cm)")
plt$show()

# Mostra todas as figuras

plt$subplot(1, 2, 1) # 1 linha, duas colunas, grafico 1
plt$plot(x, y)
plt$xlabel("Eixo X")
plt$ylabel("Eixo Y")

plt$subplot(1, 2, 2) # 1 linha, duas colunas, grafico 2
plt$bar(tempo_meses, cresc_planta_cm)
plt$xlabel("Tempo (meses)")
plt$ylabel("Crescimento de uma planta (cm)")

plt$show()  # Mostra os dois gráficos lado a lado
