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

<div align="center">
<img src="https://user-images.githubusercontent.com/110632350/206465987-76033601-354c-4e18-bcc2-8f13769c8125.png" width="700px" />
</div>

Pode-se verificar através do gráfico acima que os resíduos padronizados observados são distribuídos de maneira a formar uma reta, indicando um formato simétrico da distribuição. Logo, temos um indicativo, com base na amostra observada, de que a hipótese de normalidade é satisfeita. 

Não irei mostrar os resultados dos testes de hipóteses para normalidade por questão de simplificação, mas não rejeitamos a hipótese nula para todos os testes de normalidade ao nível de significância de 5%. Ou seja, há evidências de que a suposição de normalidade dos resíduos é satisfeita. Os testes utilizados foram: Lilliefors, Shapiro - Wilk, Kolmogorov - Smirnov e Anderson - Darling.

⨀ Homocedasticidade e Linearidade

<div align="center">
<img src="https://user-images.githubusercontent.com/110632350/206468350-309b7d36-9c37-47dc-b7c9-53265de74fbd.png" width="700px" />
</div>

Através do gráfico acima tem-se os valores preditos versus os resíduos, onde é possível verificar que as observações estão distribuídas em torno do valor 0 sem apresentar oscilações significativas.

Além disso, é possível notar que os pontos não possuem qualquer tendência particular. Assim há indícios de que as hipóteses de homocedasticidade e linearidade dos resíduos não é violada.

Foi realizado ainda, o teste de Breusch - Pagan para a verificação de homocedasticidade, obtendo um valor - p = 0.3131. Ao nível de significância de 0.05, não rejeitamos a hipótese nula, portanto há evidências de que a suposição de homocedasticidade não foi violada.

⨀ Independência

O banco de dados não traz a informação da ordem seleção dos indivíduos. Logo, não é possível verificar se há independência, portanto será assumido que a suposição de independência dos resíduos está satisfeita.

Como todas as hipóteses sobre os erros estão satisfeitas, então podemos avançar com o processo de seleção das covariáveis

• Selecionando Covariáveis para o Modelo

Nesta seção foram determinados diversos subconjuntos de covariáveis potencialmente úteis, incluindo também covariáveis que sejam essenciais para o modelo, ou seja, iremos selecionar as covariáveis que irão permanecer no modelo segundo alguns critérios e métodos.

Como a base de dados disponibilizada possui um conjunto de covariáveis baixo na nossa amostra, é prudente realizar a seleção utilizando diversos critérios, como: R^2_p, R^2_a,p, C_p, AIC_p e BIC_p.

Ainda, por causa do baixo número de covariáveis o método automático de seleção de covariáveis aconselhável é o backward ou o backward stepwise. Por motivos de que utilizando este método estaremos mais próximos do modelo final escolhido, e serão realizados  menos etapas para alcançar tal desfecho.

Primeiramente vamos utilizar os critérios R^2_p, R^2_a,p, C_p, AIC_p e BIC_p mencionados para cada combinação de covariáveis possíveis para o nosso modelo. Os resultados obtidos estão dispostos na Tabela abixo.

<div align="center">
<img src="https://user-images.githubusercontent.com/110632350/206471875-3ae9a151-cad1-4354-b299-49b42ce5eb6f.PNG" width="700px" />
</div>

Nota-se que o modelo contendo as covariáveis imposto do imóvel X_1 e área construída X_3 possuem os melhores resultados em 4 dos 5 critérios utilizados para a seleção de modelos, pois podemos perceber que, ainda que o R^2_p de X_1 X_3 não tenha sido o maior, vemos que o R^2_a,p é o maior, além disso, os valores de C_p, AIC_p e BIC_p são os menores para esse modelo.

O método aplicado para selecionar o modelo mais parcimonioso foi o backward. Neste, iniciamos com o modelo completo, ou seja, com todas as covariáveis, e a cada passo foram retiradas aquelas que são menos essenciais para o modelo, diminuindo assim a sua complexidade. 

 Ao empregar tal método, os resultados obtidos foram os seguintes:
 
 O algoritmo foi iniciado ajustando-se 4 modelos de regressão linear simples, um para cada variável preditora disponível. 

O método Backward utiliza o nível de significância de 0.3, que será considerado para saída das covariáveis do modelo. Para este teste inicial a covariável X_2 já foi eliminada do modelo, uma vez que para o teste obteve-se um valor-p alto em relação ao nível de significância de 0.3, assim não rejeitamos a hipótese nula, portanto, a covariável X_2 pode ser excluída do modelo.

Por meio do método Backward, no segundo passo, a covariável X_4 foi eliminada do modelo, pois seu p-valor foi maior que o nível de significância de 0.3.

No 3º Passo do médoto Backward obtemos as covariáveis selecionadas, que neste caso foram $X_1$ e $X_3$ definindo o modelo selecionado.

Por fim, consegue-se ajustar um modelo de regressão obtendo o modelo mais parcimonioso, ou seja, o modelo com melhores valores dos critérios propostos e com variáveis significativas, obteve-se um modelo de regressão com as covariáveis X_1 e X_3, ou seja, um modelo com as covariáveis imposto do imóvel e área construída, uma vez que rejeitamos a hipótese nula e temos um p-valor obtido para ambas as covariáveis menor que 0.3.

As variáveis que não foram significativas para o modelo, consequentemente descartadas foram X_2 e X_4, que são a área do terreno e idade da residência, respectivamente.

• Analisando o Modelo Selecionado

Nesta seção iremos analisar cuidadosamente os efeitos das covariáveis X_1 e X_3 que foram selecionadas para o modelo, sobre a variável resposta e as possíveis interações entre elas.

Dessa forma tem-se que o modelo de regressão reduzido é dado pela seguinte equação:

<div align="center">
<img src="https://user-images.githubusercontent.com/110632350/206476591-2cb65d2e-1196-478f-9d59-c168d69b2a12.PNG" width="700px" />
</div>

A partir das estimativas para as covariáveis X_1 e X_3 e o valor do intercepto. Logo, a reta de regressão que melhor se ajusta à amostra observada é dada pela seguinte equação:

<div align="center">
<img src="https://user-images.githubusercontent.com/110632350/206477860-75fd7a8f-f3f6-4900-aaf2-d749c6bfbb2c.PNG" width="700px" />
</div>

Nota-se que 0 é um valor discrepante em relação às observações da amostra para as covariáveis X_1 (imposto do imóvel) e X_3 (área construída). Dessa forma, a estimativa de beta_0 não é um valor interpretável para esse estudo. 

Considerando que a área construída se mantém constante, estima-se que um acréscimo de 2.297 ocorre no valor do preço médio da venda do imóvel quando aumenta-se em uma unidade o imposto do imóvel. Por fim, considerando que o imposto do imóvel se mantém constante, estima-se um aumento de 13.933 no preço médio de venda do imóvel quando aumenta-se em uma unidade de área a área do terreno. 

O próximo passo foi calcular a porcentagem da variabilidade das observações do preço de venda do imóvel Y que é explicada pelo modelo de regressão contendo como covariável apenas o imposto do imóvel X_1, e depois contendo apenas a covariável área construída X_3.

Pode-se concluir que de acordo com o coeficiente de determinação múltiplo ajustado, aproximadamente 17% da variabilidade das observações do preço de venda do imóvel Y é explicada pelo modelo de regressão considerando apenas a covariável imposto do imóvel X_1.

Pode-se concluir que de acordo com o coeficiente de determinação múltiplo ajustado, aproximadamente 14% da variabilidade das observações do preço de venda do imóvel Y é explicada pelo modelo de regressão considerando apenas a covariável área construída X_3.

Iremos calcular o coeficiente de determinação parcial para cada uma das covariáveis, que mede a redução relativa marginal  da variabilidade das observações da variável resposta ao incluir tais covariáveis no modelo.

Há uma redução de aproximadamente 56%  na variabilidade das observações do preço do imóvel Y  quando incluímos a covariável área construída  no modelo que já continha a covariável imposto do imóvel.

Há uma redução de aproximadamente 48%  na variabilidade das observações do preço do imóvel Y quando incluímos a covariável imposto do imóvel no modelo que já continha a covariável área construída.

Conduziremos agora um teste F para decidir se a covariável X_1 pode ser descartada do modelo de regressão dado que X_3 é mantida.

Como f = 22.07 e o quantil f_c = 4.26, segue que f > f_c e, portanto, para essa amostra observada, rejeitamos a hipótese nula a um nível de significância de 5%. Em outras palavras, temos evidências de que a covariável X_1 pode ser mantida no modelo de regressão que já possui como covariável X_3 quando consideramos um nível de significância de 0.05.

Conduziremos agora um teste F para decidir se a covariável X_3 pode ser descartada do modelo de regressão dado que X_1 é mantida. 

Como f = 30.46 e o quantil f_c = 4.26, segue que f > f_c e, portanto, para essa amostra observada, rejeitamos a hipótese nula a um nível de significância de 5%. Em outras palavras, temos evidências de que a covariável X_3 pode ser mantida no modelo de regressão que já possui como covariável X_1 quando consideramos um nível de significância de 0.05.

Com os resultados obtidos acima confirmamos a escolha do modelo dada pelos critérios e método utilizados, uma vez que X_1 e X_3 são essenciais para explicar a variável resposta Y (preço de venda do imóvel).

• Análise dos Resíduos do Modelo Escolhido

Será verificado se as suposições de normalidade, homocedasticidade, linearidade e independência dos erros do modelo escolhido com as duas covariáveis continuam sendo atendidas através dos resíduos, então foram realizadas análises gráficas e aplicação de testes de hipóteses para comprovar essas suposições.

Como as hipóteses sobre os erros não foram violadas temos que os resultados obtidos para o modelo selecionado são válidos. Não mostrarei a análise diagnóstica do modelo selecionado, pois ela é igual a relizada anteriormente para o modelo completo.

## Considerações finais

Ao longo do estudo, observamos que as suposições iniciais de significância das covariáveis imposto do imóvel X_1, área do terreno X_2, área construída X_3 e idade da residência X_4, feitas na análise descritiva para explicar o  preço de venda do imóvel Y, não foram totalmente suportadas na análise de regressão. Ou seja, alguns dos indícios que tivemos na análise descritiva não foram satisfeitos por meio dos procedimentos formais das análises realizadas.

\quad Com base na análise descritiva dos dados, foi verificado através dos gráficos de dispersão e da matriz de correlação, que as covariáveis imposto do imóvel X_1 e área do terreno X_3 apresentavam uma alta correlação. Logo, havia um indicativo de que X_1 e X_3 continham muito da mesma informação, ou seja, esperávamos que houvesse multicolinearidade. Contudo, ao usarmos a medida VIF (fator de inflação da variância) obtivemos resultados contrários ao esperado, constatando a ausência de multicolinearidade. 

\quad Além disso, esperava-se também que a covariável idade da residência X_4 fosse excluída do modelo, já que ela possui uma correlação baixa com a variável resposta, o que foi confirmado por meio do método Backward na etapa da seleção das covariáveis para o modelo. Ademais, a covariável área do terreno X_2 foi descartada do modelo, também pelo método de seleção de variáveis Backward, o que não era previsto, uma vez que analisando o gráfico de correlação entre as variáveis, a covariável X_2 tinha uma correlação consideravelmente alta com Y.

## Referências Bibliográficas

⨁ FERREIRA, R.. Notas de aula da disciplina Análise de Regressão.

⨁ Método de Seleção de Variáveis. Disponível em: {https://olsrr.rsquaredacademy.com/articles/variable_selection.html#stepwise-forward-regression}

⨁ Teste Breusch-Pagan para homocedasticidade. Disponível em: {https://www.statology.org/breusch-pagan-test-r/}

