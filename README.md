## Regressão Linear Múltipla

Olá,

Durante o segundo semestre do ano de 2020 cursei a disciplina de Análise de Regressão Linear na faculdade de estatística na UFSCar. Onde desenvolvi um modelo de regressão múltipla. Pretendo apresentar os resultados obtidos sobre este estudo por meio deste repositório.

## Introdução

A Regressão Linear Múltipla consiste em um conjunto de procedimentos estatísticos que é normalmente utilizado para estudar a relação linear entre um conjunto de covariáveis e uma determinada variável resposta.

É comum utilizar essa técnica estatística para explicar o preço de venda de imóveis a partir de outras variáveis (variáveis explicativas).

O presente estudo teve por objetivo explicar o preço de venda  de imóveis com base em algumas covariáveis, sendo elas: Imposto do imóvel, Área do terreno, Área construída e Idade da residência.

## Amostra

Para esta análise foi considerada uma amostra de 27 imóveis, onde foram coletadas informações a respeito de 5 variáveis. 

Os dados amostrados estão dispostos no arquivo carregado nesse repositório com o nome de "imoveis" no formato de texto.

O conjunto de dados descreve os registros para os 27 imóveis amostrados, onde as características Preço de venda, Imposto do imóvel, Área do terreno, Área construída e Idade da residência foram avaliadas.

## Busca de dados faltantes


Na descrição do conjunto de dados foi realizado o entendimento da base de dados. Aqui é comum entender as covariáveis e verificarmos se existe dados faltantes. Após a busca por estes, percebe-se que não existem covariáveis sem preenchimento

## Objetivos

O objetivo principal desta análise foi estudar se existe relação linear entre a variável preço de venda do imóvel (em 1.000 USD) e as covariáveis apresentadas anteriormente. Ou seja, temos interesse em avaliar se a variável resposta preço da venda pode ser explicada pelas covariáveis presentes na base de dados sob estudo e quais delas são significativas para um modelo de regressão linear múltipla.

## Metodologia

O presente estudo caracterizou-se pelo desenvolvimento de uma metodologia estatística aplicada na investigação e modelagem da relação linear entre variáveis, essa metodologia consiste na Regressão Linear Múltipla. 

As etapas metodológicas foram as seguintes:

• Análise Descritiva

• Análise de Regressão

• Padronização das Variáveis

• Multicolinearidade

• Análise de Diagnóstico para o modelo completo

• Seleção de Covariáveis

• Análise de Diagnóstico para o modelo selecionado

Nome da Variável\Nomenclatura

Imposto do imóvel\X_1      

Área do terreno\X_2   

Área construída\X_3   

Idade da residência\X_4 

Preço do imóvel\Y    

## Resultados

Agora, será apresentado os resultados da análise desenvolvida, que foi dividia entre Análise descritiva e exploratória de dados e Análise de Regressão.

• Análise descritiva e exploratória de dados

<div align="center">
<img src="https://user-images.githubusercontent.com/110632350/206352293-a8e3ce17-59b4-490c-8200-c98b7067d0e6.jpeg" width="700px" />
</div>


Pode-se observar pela Figura acima que, no triângulo inferior, estão as correlações das variáveis e, no triângulo superior seus respectivos valores de correlação, na diagonal principal está representada a densidade para cada covariável (X_1, X_2, X_3 e X_4) e a variável resposta Y.

Nota-se que há uma correlação forte de 0.832 entre as covariáveis X_1 (imposto do imóvel) e X_3 (área construída), onde há indícios de que exista multicolinearidade, com base na amostra observada. 

Ainda, tem-se um indicativo de que a variável resposta Y (preço do imóvel) e a covariável X_4 (idade da residência) são pouco relacionadas, apresentando uma correlação de -0.310. 

Além disso, podemos perceber que X_1 e X_3 possuem forte correlação com a variável resposta Y de 0.915 e 0.929, respectivamente, o que pode ser notado também pelos gráficos de dispersão das mesmas, em que observa-se que a nuvem de pontos está mais próxima de uma reta.

Através dos gráficos de dispersão há indicativos de que todas as covariáveis tem uma relação linear positiva crescente em relação à variável resposta, exceto apenas pela covariável X_4 que aparentemente não tem relação linear com a variável resposta Y.

Foi realizada a análise descritiva para cada covariável separadamente, por meio de gráficos de boxplots e tabelas resumindo algumas medidas descritivas, mas esta parte do estudo não será apresentada aqui por motivo de simplificação.


