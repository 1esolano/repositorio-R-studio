

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


  

