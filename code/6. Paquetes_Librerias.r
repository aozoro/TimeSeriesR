#instalar un paquete
install.packages("wooldridge")

#Para comprobar que paquetes tenemos instalados en nuestro equipo, usaremos:
installed.packages()

#Si nuestro objetivo es eliminar un paquete, podemos hacerlo como en el siguiente ejemplo:
remove.packages("wooldridge")

#Para comprobar que paquetes necesitan ser actualizados usaremos:
old.packages()

#A su vez para actualizar todos los paquetes lo haremos mediante una llamada a la función:
#update.packages()

#ayudas
help("data.frame")

install.packages("wooldridge")
help(package = "wooldridge")

#Formas de usar un paquete en R
#wooldridge::apple
head(wooldridge::apple)

library("wooldridge")
#card
head(card)

#paquete tseries
install.packages("tseries")
library(tseries)

preciosFB <- get.hist.quote(instrument="FB")

head(preciosfb)

class(preciosfb) 

preciosfb <- data.frame(preciosfb)
tail(preciosfb)

#help(package="tseries")
help("get.hist.quote")

#Descargar la serie close de  FB, ZM, IBM, desde 01-01-2020 ponerlos en un data frame

#paquete fBasics
str(preciosfb)

summary(preciosfb)

install.packages("fBasics")
library("fBasics")
basicStats(preciosfb)
