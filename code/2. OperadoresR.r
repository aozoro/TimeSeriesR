a <- 5
b <- 3 

c <- a * b
d <- a / b
e <- 5 %/% 3
f <- TRUE + TRUE + FALSE #TRUE=1 , FALSE=0
print(c)
print(d)
print(e)
print(f)

a <-c(1,2,3)
b <- a+2
c <- a*2
d <- a^0.5

print(a)
print(b)
print(c)
print(d)

a <- c("Pedro","Enrique","Samuel")
b <- c(168,175,180)

nombre_estatura<-data.frame("nombres"=a,"estatura"=b)
nombre_estatura

#ejercicio: Pasar la estatura a metros, ejem : de 189 a 1.89
nombre_estatura$estatura <- nombre_estatura$estatura/100
nombre_estatura

#ejercicio: volver a  la estatura en foots, si 1m  = 3.28084 foots

a <- 5 < 3
b <- 4 > 2
c <- 8==2
d <- TRUE > FALSE

print(a)
print(b)
print(c)
print(d)

d <- c(1,2,3) > 2
print(d)

#tienen que ser de la misma dimensión, en este caso 3 (nota también se puede con múltiplos)
e <- c(1,8,3)
f <- c(4,5,6)

e > f

a <- "Andrea"
b <- "Carmen"

a > b
a < b

d <- c("Alvarez","Bustamante","Delgado") 
print(d < "Carrasco")

"aa" != "bb"
"aa" == "bb"
"Ccc" == "ccc"
"ccc" == "ccc"

a <- TRUE
b <- FALSE

print(a & b) #and

c <- c(TRUE, FALSE , FALSE)

print(c | TRUE) #or 

h <- 5.15
i <- 0    

print (h & TRUE)
print (i & TRUE)

aa <- 2
2 -> bb
cc = 2
assign("dd",7)

print(aa)
print(bb)
print(cc)
print(dd)

a <- -5^2

print(a)

b <- 5+2 > 3
print(b)

FALSE & FALSE | TRUE
TRUE | FALSE & FALSE 

(FALSE & FALSE) | TRUE #uso innecesario de paréntesis
FALSE & (FALSE | TRUE) #uso necesario de paréntesis
