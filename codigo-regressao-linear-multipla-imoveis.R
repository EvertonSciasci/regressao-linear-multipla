X1<- as.numeric(imoveis$V1)
X2<- as.numeric(imoveis$V2)
X3<- as.numeric(imoveis$V3)
X4<- as.numeric(imoveis$V4)
Y<- as.numeric(imoveis$V5)
plot(imoveis)
View(imoveis)
library(ggplot2)
ggplot(imoveis, aes(y = X1)) +
  geom_boxplot(fill = "skyblue") +
  labs(x = "X1", y = "Imposto(em 100 USD)", title = "Imposto do Im ́ovel") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
ggplot(imoveis, aes(y = X2)) +
  geom_boxplot(fill = "skyblue") +
  labs(x = "X2", y = " ́Area(em 1.000 p ́es quadrados)", title = " ́Area do Terreno")+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
ggplot(imoveis, aes(y = X3)) +
  geom_boxplot(fill = "skyblue") +
  labs(x = "X3", y = " ́Area(em 1.000 p ́es quadrados)", title = " ́Area constru ́ıda")+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
ggplot(imoveis, aes(y = X4)) +
  geom_boxplot(fill = "skyblue") +
  labs(x = "X4", y = "Idade(em anos)", title = "Idade da resid^encia") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
30
ggplot(imoveis, aes(y = Y)) +
  geom_boxplot(fill = "skyblue") +
  labs(x = "Y", y = "Pre ̧co(em 1.000 USD)", title = "Pre ̧co de venda do im ́ovel")+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
pairs(~ + X1 + X2 + X3 + X4 + Y, data = imoveis,
      col = c("blue"), pch = 20)
library(RColorBrewer)
library(corrplot)
g1<- pairs(imoveis, col= rainbow(3))
library(GGally)
ggpairs(imoveis, aes(alpha= 0.05))+ theme_bw()
#padroniza ̧c~ao:
pad_X1= (1/sqrt(27-1))*((X1-mean(X1))/sd(X1))
pad_X2= (1/sqrt(27-1))*((X2-mean(X2))/sd(X2))
pad_X3= (1/sqrt(27-1))*((X3-mean(X3))/sd(X3))
pad_X4= (1/sqrt(27-1))*((X4-mean(X4))/sd(X4))
pad_Y= (1/sqrt(27-1))*((Y-mean(Y))/sd(Y))
#matriz com as covariaveis padronizadas:
matriz_pad= matrix(c(pad_X1,pad_X2,pad_X3,pad_X4),nrow=27,ncol=4)
verifica_xtx<- t(matriz_pad) %*% matriz_pad
verifica_xtx
vetor_corr= (t(matriz_pad))%*%pad_Y
vetor_corr
#vif(xtx)-1
inversa_pad=solve(verifica_xtx)
inversa_pad
#vif
library(car)
ajuste <- lm(Y~X1+X2+X3+X4) # lm(linear model)
vif(ajuste)
##### an ́alise de diagn ́ostico #####
## checa as suposi ̧c~oes
res<-residuals(ajuste)
pred<-fitted.values(ajuste)
# checa homocedasticidade
31
library(lmtest)
bptest(ajuste)
plot(pred,res,xlab='Valores preditos',ylab='Residuos')
ggplot(data = imoveis, aes(x = pred, y = res)) + labs(x = "Valores Preditos",
                                                      y = "Res ́ıduos", title = "Gr ́afico para checar homocedasticidade") +
  geom_point()
# checa normalidade
qqnorm(res,xlab='Quantis teoricos', ylab='Quantis amostrais')
ggplot(imoveis, aes(sample=res)) + labs(x = "Quantis te ́oricos",
                                        y = "Quantis amostrais",
                                        title = "Gr ́afico qqnorm")+
  stat_qq()
library(nortest)
lillie.test(res)
shapiro.test(res)
xb <- mean(res)
sx <- sd(res)
ks.test(res, "pnorm", xb, sx,alternative='two.sided')
ad.test(res)
################
library("olsrr")
library("MASS")
library("car")
stepAIC(ajuste, direction = "backward")
k1 <- ols_step_all_possible(ajuste)
k1
plot(k1)
k <- ols_step_backward_p(ajuste, details = T)
k
plot(k)
ajuste <- lm(Y~X1) # lm(linear model)
#SQReg
SQReg <- sum((ajuste$fitted.values - mean(Y))^2)
SQReg
SQRes<- sum((ajuste$residuals)^2)
SQRes
SQTotal<- sum((Y- mean(Y))^2)
SQTotal
qf(0.05,1,24,lower.tail = F)
######################################
######## MODELO ESCOLHIDO ############