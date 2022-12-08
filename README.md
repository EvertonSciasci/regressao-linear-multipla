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

• Análise de Regressão

‣ Padronização das Variáveis

Com base no conjunto de dados, observa-se que as covariáveis não possuem a mesma unidade de medida, uma vez que o imposto do imóvel X_1 foi medido em 100 USD, as covariáveis X_2 e X_3, Área do terreno e Área construída, respectivamente, foram medidas em 1.000 pés quadrados, a Idade da residência X_4 representada em anos e a variável resposta Y Preço de venda do imóvel medida em 1.000 USD. Sendo assim, com o intuito de deixar as variáveis em uma unidade de medida comum, realizou-se a padronização das mesmas.

A partir da transformação correlação foi gerada a matriz com os valores das covariáveis e da variável resposta padronizada.

Os valores das covariáveis e da variável resposta padronizados estão compreendidos no intervalo de -1 e 1. 

Assim sendo, com as variáveis na mesma unidade de medida podemos utiliza-lás para as próximas etapas do estudo.

‣ Análise da Existência de Multicolinearidade

Quando as covariáveis presentes em um modelo de regressão são altamente correlacionadas dizemos que existe multicolinearidade, ou seja, elas explicam a variável resposta da mesma maneira. Nesta etapa é verificado a existência de multicolinearidade no modelo.

Com base nos valores da diagonal da Inversa da Matriz de correlação verifica-se que VIF_4= 1.357404 é bem próximo de 1, dando indícios de ausência de colinearidade para a variável X_4 idade da residência. Para as demais covariáveis, repara-se que o VIF tem valores maiores, contudo, como nenhum é muito próximo de 10, foi decidido não excluir nenhuma covariável do modelo, porque apesar de ter sido verificado uma correlação significante entre algumas covariáveis, obteve-se um baixo valor de VIF para as covariáveis.

‣ Análise de Resíduos no Modelo Completo

Dessa forma, será verificado se as suposições de normalidade, homocedasticidade, linearidade e independência dos erros do modelo completo são atendidas através dos resíduos, então foram realizadas análises gráficas e aplicação de testes de hipóteses para comprovar essas suposições.

⨀ Normalidade



