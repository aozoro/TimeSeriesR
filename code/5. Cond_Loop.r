a <- readline(prompt="Ingresa un número entero: ")

print(a)
print(class(a))

a <- as.numeric(a)
print(a)
print(class(a))

IsRound <- a - round(a)==0
IsEven <- a %% 2 ==0

if(IsRound & IsEven){
    print("El número elegido es par")
}else if(IsRound & !(IsEven)){
    print("El número elegido es impar")
}else{
    print("El número elegido no es entero")
}

#Ejercicio: Convertir a función

suma <- 0
for(ii in 0:5){
    suma <- suma + ii
}

print(suma)

appr.e <- 1 #punto de inicio 
aux <- 0 #número anterior
tolerancia <- 10e-6
ii <- 0 #iterador
x <- 1 #exp(x)

fctl <- 1 #factorial, se puede usar factorial(x) pero nos ahorramos tiempo computaciaonal


while(appr.e - aux > tolerancia){
    ii <- ii + 1 
    fctl <- fctl * ii
    aux <- appr.e
    appr.e <- appr.e + x ^ ii /  fctl
}

print(appr.e)
print(ii)
print(exp(1))

#Ejercicio: recrear función exp(x)
