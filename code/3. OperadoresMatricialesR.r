#Producto interno

aaa <- c(1,2,3)
bbb <- c(2,3,4)

aaa %*% bbb

#Producto Matricial
A <- matrix (1:6, nrow=2)
print(A)

#Producto Matricial
B <- matrix (4:9, nrow=3)
print(B)

print(A %*% B) 

print(B %*% A) 

#potencia de una matri<
C <- B %*% A

print(C %*% C %*% C)

#Nota: Para una potencia de orden superior se pueden usar paquetes como "Biodem"
# mtx.exp(C, 3)

A <- matrix(c(1,2,3,7,6,4,9,1,8), ncol=3)
B <- matrix(c(1,5,6,9), byrow=TRUE, ncol=2)
print(A)
print(B)

#diagonal
diag(A)
diag(B)

#traza
sum(diag(A))
sum(diag(B))

#determinante
det(A)
det(B)

#inversa
solve(A)

solve(B)

#producto de kronecker

print(kronecker(A,B))

print(kronecker(B,A))

#implementar en R
A <- matrix(c(2,1,3,-1),byrow=TRUE,ncol=2)
print(A)

b <- c(4,1)

#usando solve(A) 
x <- solve(A) %*% b
print()

#usando solve(A,b)
x <- solve(A,b)
print(x)
