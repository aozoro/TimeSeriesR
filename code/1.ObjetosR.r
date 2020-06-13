version

#Logical
a <- TRUE
b <- FALSE

print(a)
print(b)

print(class(a))
print(class(b))

mode(a)
class(a)

#numeric
c <- 4L #se usa el sufijo L
d <- 4
e <- 4.5
print(c)
print(d)
print(e)

class(c)
class(d)

is.logical(c)
is.integer(c)
is.numeric(c)

is.logical(d)
is.integer(d)
is.numeric(d)

c==d

class(c)
class(d)
class(c)==class(d)

#Character
a <- 'R-proyect'
b <- "R-proyect"
c <- "4"
d <- 4

print(a)
print(b)
print(c)
print(d)
print("hola mundo")
print("a")

f <- "a"
g <- a

print(f)
print(g)

print(class(a))
print(class(b))
print(class(c))
print(class(d))
print(class(f))
print(class(g))

a==b 
class(a)==class(b)

"4"== 4
c==d
class(c)==class(d)

a <- "manzana"
b <- "platano"
c <- "uva"
#meta: "manzana,platano,uva"
d <- paste(a,b,c, sep=",")
print(d)

e <- "hola"
f <- "mundo"
#meta: "hola mundo"

paste(e,f)
paste(e,f,sep=" ")

#Vectores
a <- c(FALSE, FALSE,TRUE)
b <- c(1,2,3,4)
c <- c("hola","como","estas")
a
b
c

class(a)
class(b)
class(c)

length(a)
length(b)
length(c)

d <- c(1,2,TRUE,FALSE,TRUE,5) #TRUE: 1 , FALSE: 0
e <- c(1,2,TRUE,"hola")
print(d)
print(e)

class(d)
class(e)

f <- c(d,e)
print(f)

g <- 1:10
h <- 10:1

print(g)
print(h)

g[2]
h[2]

i <- seq(4,6,0.5)

print(i)

#segundo elemento
print(i[2])

#todo el vector excepto el segundo elemento
print(i[-2])

#del segundo al cuarto elemeto
print(i[2:4])

#el elemento 1 y 4
print(i[c(1,4)])

i[2] <- 517
print(i)

j <- 1:5
h <- 1:5

#Matrices
a <- 1:10 
print(a)

b <- matrix(a)
print(b)

nrow(b)
ncol(b)
dim(b)

c <- matrix(a,nrow=2)
print(c)

d <- matrix(a,ncol=2)
print(d)

e <- matrix(a,ncol=2, byrow=TRUE)
print(e)

class(b)
class(c)
class(d)
class(e)

f <- c(1,1,1)
g <- c(0,0,0)

h <- rbind(f,g)
print(h)
class(h)

i <- cbind(f,g)

print(i)
class(i)

print(e)

#elemento de segunda fila y segunda columna
print(e[2,2])

#segunda fila
print(e[2,])

#segunda columna
print(e[,2])

#toda la matriz excepto la segunda fila
print(e[-2,])

#Listas
a <- c(2,TRUE,"hola")
print(a)

b <- list(2,TRUE,"hola")
print(b)

c <- list(2,TRUE,"hola",c(5,7,9))
print(c)

vectorNumerico <- c(1,2,3)
vectorChar <- c("hola","chau")
matriz <- matrix(1:9,nrow=3, byrow=TRUE)
dummy <- TRUE

a <- list(vectorNumerico, vectorChar, matriz, dummy)
print(a)

b <- list("vector1"=vectorNumerico, "vector2"=vectorChar, "matriz"=matriz, "dummy"=dummy)
print(b)

a[2]

b$vector2
b[2]
print(b$matriz)

names(a)
names(b)

names(a) <- c("vector1","vector2","matriz","dummy")
print(a)

a$nuevo <- "Hola mundo"
print(a)

a[6] <- list(c(5,6))
print(a)

names(a)

#Data Frames
vector1 <- c("Armando", "Elsa", "Ignacio", "Olga")
vector2 <- c(20, 24, 22, 30)
vector3 <- c("Hombre", "Mujer", "Hombre", "Mujer")


dataEstructurada <- data.frame("nombres"= vector1, "edad" = vector2, "sexo"= vector3)
dataEstructurada #printeo Jupyter
print(dataEstructurada) #printeo R

names(dataEstructurada)

print(dataEstructurada$sexo)

print(dataEstructurada[3])

print(dataEstructurada[2,])

print(dataEstructurada[-2,])

print(dataEstructurada[2:3,])

str(dataEstructurada)

dim(dataEstructurada)
nrow(dataEstructurada)
ncol(dataEstructurada)

summary(dataEstructurada)

sexo <- c(1, 1, 1, 1, 2, 2, 2)
peso <- c(60, 65, 70, 66, 80, 60, 76)
df <- data.frame(sexo, peso)
df$sexo <- factor(df$sexo)

print(df)

df$sexo <- factor( df$sexo,
levels = c(1, 2),
labels = c("masculino", "femenino")
)

print(df)

id <- c( 1:5 )
date <- c( "10/07/08", "10/08/08", "10/09/08", "10/10/08", "10/11/08" )
country <- c( "US", "US", "UK", "UK", "UK" )
gender <- c( "M", "F", "F", NA, "F" )
age <- c( NA, 45, 25, 39, 99 )
q1 <- c( 5, 3, 3, 3, 2 )
q2 <- c( 5, 5, 5, NA, 2 )
q3 <- c( 5, 5, 2, NA, 1 )
df <- data.frame( id, date, country, gender, age, q1, q2, q3,
stringsAsFactors = FALSE )
df

# creamos variables con la función transform()
df <- transform( df,
    sumx = q1 + q2,
    meanx = ( q1 + q2 ) / 2 )
df

df <- df[ ,-c(9 , 10)]
df

#creamos como objeto

df$sumx = df$q1 + df$q2
df

#creamos una nueva columna promx que sea el promedio de las q

df$agecat[ df$age > 75 ] <- "anciano" # crea la variable
df$agecat[ df$age <= 75 & df$age > 44 ] <- "maduro"
df$agecat[ df$age <= 44 ] <- "joven"
df

names(df)

names( df )[ 1 ] <- "ID"
names( df )[ 3 ] <- "pais"
names( df )[ 4 ] <- "G"
names( df )[ 6:8 ] <- c( "it1", "it2", "it3" )
df

### Que es un NA?
y <- c( 1, 2, 3, NA )
is.na( y ) # ¿cuáles son NA?

is.na( df[ , 4:10 ] )

#cambiar el valor de NA de edad por un valor especifico
df

df$age[ is.na( df$age ) ] <- 99
df

#Cambiar el valor especifico a NA
df$age[ df$age == 99 ] <- NA
df

#evitar los valores NA
x <- c( 1, 2, NA, 3 )
z <- sum( x )

print(z)

sum(x,na.rm=TRUE)

#para un data frame
df <- na.omit( df )
df

#ordenar el data frame
df

#Ascendente por age
df_ordenado <- df[ order( df$age ), ]
df_ordenado

#Ascendente por gender y descendente segun age
df_ordenado2 <- df[ order( df$gender , -df$age ), ]
df_ordenado2
