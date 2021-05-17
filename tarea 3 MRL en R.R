

install.packages("dplyr")
library(dplyr)

autos_filtrado = select(Base_Auto,Año_Auto,Precio_Auto)


View(cor(autos_filtrado))
pairs(autos_filtrado)
str(autos_filtrado)
attach(autos_filtrado)

lm_autos = lm(Precio_Auto~Año_Auto)
summary(lm_autos)


pred_precio = data.frame(Año_Auto = c(2005L,1998L,2001L,2011L,1988L))


predict(lm_autos,pred_precio)



#ggplot2


ggplot(Base_Auto,aes(x= Año_Auto )) + geom_bar()

ggplot(Base_Auto,aes(x=Año_Auto,y=Precio_Auto))+geom_point()

ggplot(Base_Cliente,aes(x=Credito_Cliente))+geom_bar()


