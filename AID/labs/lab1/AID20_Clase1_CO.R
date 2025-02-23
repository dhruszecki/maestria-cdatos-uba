#--------------------------------------------------------
# Selección de directorio de trabajo:
#--------------------------------------------------------
options(repos = c(CRAN = "http://cran.rstudio.com"))

#para fijar el directorio
setwd("labs/lab1") #o bien setwd("C:\\workspace2") #para fijar el directorio

#para saber en qué directorio estamos
getwd() 

#--------------------------------------------------------
# Operaciones básicas:
#--------------------------------------------------------

2+6 
3*4
-4/5 
4^0.2 
sqrt(9) # raíz cuadrada
cos(pi) # funciones trigonométricas
exp(-2) # función exponencial
factorial(5) #factorial de un número
log(8)

pi
round(pi,3) # redondea el valor de pi a 3 decimales
signif(pi,2) # devuelve el valor con dos cifras significativas
abs(-8) # devuelve el valor absoluto


#--------------------------------------------------------
# Asignación a variables, vectores y matrices, operaciones
#--------------------------------------------------------

n=3
vec<-c(1,2,3)
c(1,2,3)->vec

vec# devuelve el valor guardado

1:5 # números del 1 al 5 orden creciente
15:10 # números del 15 al 10 orden decreciente

x <- seq(1,8) # secuencia de enteros
x
y<-seq(1,4,0.2) # devuelve los números de 1 a 4 espaciados en 0.2
y
z<-rep(1,5) # repite el 1 cinco veces
z
w<-rep(1:3,4) # repite del 1 al 3 cuatro veces
w
q<-rep(c(1,3,7),2) # repite la concatenación dos veces
q

m <- c(T,F,F,T) # concatena valores lógicos
m

l<-w>2 # asigna una proposición a la variable l
w
l # asigna valor de verdad de la proposición 
p<-c(T,F,T,F)
p
m&p # devuelve la conjunción entre componentes de vectores lógicos de igual longitud
m|p # devuelve la disyunción entre componentes de vectores lógicos de igual longitud
!m # devuelve la negación de cada componente

w[5] # devuelve la quinta componente almacenada en el vector w
w[2:4] # davuelve las componentes de 2 a 4 del vector w
w[c(1,4,6)] # devuelve las componentes 1, 4 y 6 del vector w
w[-c(1,4,6)] # devuelve el vector w sin las componentes 1, 4 y 6

sort(w)# ordena las componentes numéricas en orden creciente
sort(w,decreasing=TRUE)# ordena las componentes numéricas en orden decreciente
w2<-unique(w)
w2
w3<-duplicated(w)
w3

u=c(3,8,2,7,3,2,1)
order(u)
u==3  # operación lógica que busca las posiciones de u que guardan el 3
u[u==3]<-4 # en esas posiciones asigna un 4   
u
which(u>=4) # devuelve las posiciones de u que tienen números mayores o iguales a 4
u[which(u>=4)]<-0 # asigna 0 a esas posiciones
u
rev(u) # invierte el orden de las componentes del vector

veccha<-c("Alicia","Pedro","casa")
names(vec)<-veccha
vec["casa"]
order(veccha)
sort(veccha)# ordena alfabéticamente las componentes del vector de caracteres

h <- paste(c("a","b","c","d"), 2:5, sep="") # genera pares ordenados 
h
t=paste(c("a","b"), 2:5, sep=",") # genera pares ordenados separados por comas
t

length(w) # devuelve la longitud del vector w
length(c(w,h)) # devuelve la longitud del vector w concatenado con h
mode(w) # devuelve el tipo de datos del vector w, en este caso numérico
mode(h) # devuelve el tipo de datos del vector h, en este caso de caracteres
mode(m) # devuelve el tipo de datos del vector m, en este caso lógico
storage.mode(y) # equivalente a mode, en este caso el tipo es "double" que significa de doble precisión
storage.mode(w) # en este caso el tipo es entero
storage.mode(h)
storage.mode(m)

v1<-rep(2,4)
v2<-2:5
-2*v2 # producto de un vector por un escalar
v2+3  # suma 3 a cada componente
v1+3*v2 # combinación lineal de vectores
v1/v2 # división componente a componente
v1*v2 # producto componente a componente
v1**v2 # potenciación componente a componente

v3=2*v1-3*v2
v3
min(v3) # devuelve el valor mínimo del vector
max(v3) # devuelve el valor máximo del vector
sum(v3) # suma las componentes del vector
cumsum(v3) # devuelve un vector que guarda en cada componente la suma de las anteriores más esa
prod(v3) # multiplica las componentes de un vector
cumprod(v3)# devuelve un vector que guarda el producto acumulado
mean(v3) #calcula el promedio o media de los valores del vector
median(v3)#calcula la mediana de los valores del vector
sum(v1*v2) # producto escalar de dos vectores
v1%*%v2    # producto escalar de dos vectores

#Ejercicio 1: Calcular la media y mediana del vector x y el número de valores que 
#están por debajo de la media y de la mediana, siendo x:
#x<-c(1,5,7,9,3,5,6,2,4,7,5,6,9,8,6,2,6,1,4).

#Uso de for:
MiVectorInicial<-rep(0,10)
MiVectorInicial
for (i in 1:10){
  MiVectorInicial[i]<-2*(i+1)
}
MiVectorInicial

#Uso de if:
if(length(MiVectorInicial)>1){
  print("Es un vector")
}else{
    print("Es un escalar")}

#Ejemplo de función:
Promedio<-function(vectorNumerico){
  prom<-sum(vectorNumerico)/length(vectorNumerico)
  return(prom)
}
Promedio(c(1,-4,5,0,10))

#Ejercicio 2: Escribir la función que calcula el módulo de un número real.
#Ejercicio 3: Usar for para hallar el resultado de dividir de manera consecutiva el número 1111 
#por los siguientes divisores (en este orden): 2, 3, 4, 5, 6.
#Ejercicio 4: Escribir una función que responda el signo del producto de dos 
#factores dado, es decir "Positivo", o "Negativo", y en el caso que el producto 
#sea 0 devuelva "Nulo".

ls() # lista todas las variables que se han creado en el espacio de trabajo

data=1:10
matrix(data,nrow=2,ncol=5) # acomoda los datos por columna en una matriz de nrow filas y ncol columnas
matrix(data,nrow=2,ncol=5,byrow=T)  # # acomoda los datos por fila en una matriz de nrow filas y ncol columnas
matrix(c(2,4,5,6,-8,11),nrow=2)  # acomoda la concatenación por columnas de acuerdo a la cantidad de filas indicada

vec1=seq(2,5)   
vec2=seq(-5,-2)
cbind(vec1,vec2)  # devuelve la matriz que tiene a estos vectores como columnas
rbind(vec1,vec2)  # devuelve laa matriz que tiene a estos vectores como filas

mat1=matrix(data,nrow=2,ncol=5) # asigna valores a una matriz
mat1 # devuelve la matriz
colnames(mat1)<-c("A","B","C","D","E") # asigna nombres a las columnas de la matriz
mat1 # devuelve la matriz, ahora con nombres en sus columnas
rownames(mat1)<-c("2015","2016") # asigna nombres a las filas de la matriz
mat1 # devuelve la matriz, ahora con nombres en sus filas

dim(mat1) # devuelve la cantidad de filas y de columnas de la matriz
storage.mode(mat1) # devuelve el tipo de valores guardados en la matriz

mat1[1,2] # devuelve el elemento de la fila 1 y la columna 2 de la matriz
mat1[1,3:5] # devuelve los elementos de la fila 1 y correspondientes a las columnas de 3 a 5
mat1[1,] # devuelve la fila 1 de la matriz
mat1[,2] # devuelve la columna 2 de la matriz
mat1[1,2]<--3.1 # asigna un valor dado en la fila 1 y la columna 2 de la matriz
mat1
storage.mode(mat1) # observar que cambió el modo de almacenamiento de la matriz

mat2<-matrix(seq(10,1),nrow=2,byrow=T) # asigna valores a una nueva matriz
mat2 # devuelve la matriz
t(mat2) # devuelve la matriz transpuesta de la matriz
mat1+mat2 # suma de matrices
mat1-mat2 # resta de matrices
mat2+3 # suma 3 a cada elemento de la matriz
3*mat2 # producto de matriz por escalar
mat1*mat2 # producto elemento a elemento
sqrt(mat2) # raíz cuadrada de cada elemento de la matriz
sqrt(mat1) # observar que cuando la operación no está definida devuelve NaN
sqrt(-9) # no está definido

mat3=mat1%*%t(mat2) # asigna a una matriz el producto de dos matrices
mat3 # devuelve el resultado del producto matricial
det(mat3) # devuelve el determinante de la matriz
solve(mat3) # devuelve la matriz inversa de la matriz
mat3%*%solve(mat3) # devuelve el producto de una matriz por su inversa; es decir, la matriz identidad
crossprod(mat3,solve(mat3)) # devuelve el producto entre la traspuesta de la primera matriz y la segunda matriz
diag(mat3) # devuelve la diagonal principal de la matriz
sum(diag(mat3)) # devuelve la traza de la matriz

mat1
apply(mat1,1,sum) # devuelve la suma de cada fila de la matriz
apply(mat1,2,sum) # devuelve la suma de cada columna de la matriz
apply(mat1,2,min) # devuelve el mínimo de cada columna de la matriz
apply(mat1,1,mean) # devuelve la media de cada fila de la matriz
apply(mat1,1,median) # devuelve la mediana de cada fila de la matriz
apply(mat1,1,var) # devuelve la varianza de cada fila de la matriz
apply(mat1,1,sd) # devuelve el desvío estándar de cada fila de la matriz
apply(mat1,1,summary) # devuelve un resumen de cada fila de la matriz, incluyendo valor mínimo, primer cuartil, mediana, media, tercer cuartil y valor máximo y cantidad de valores NA (Not available) si hay

sample(c(1,2,3), size=2, replace=FALSE)#muestra aleatoria simple a partir de un 
#vector de valores con o sin reemplazamiento
sample(1:100, size=50, replace=FALSE)# sin reemplazo
# es igual que sample(100,50,FALSE)
sample(1:100, size=50, replace=TRUE)# con reemplazo

set.seed(111)#fijo la semilla (dura una operación)
sample(1:100, size=50, replace=TRUE)

sample(c("cara","ceca"), 1, prob=c(0.3,0.7))# Ejemplo de moneda cargada
#(cuando el tamaño o size es 1 no hace falta el argumento replace)

#Ejercicio 5: Simular el lanzamiento de un dado.
#Ejercicio 6: Simular el lanzamiento de cuatro dados o de un mismo dado cuatro veces.
#Ejercicio 7: Supongamos una urna con 3 bolas blancas y 7 negras, simular la extracción de una
#bola (asignar, por ejemplo, el 1 a bola blanca y 0 a negra).
#Ejercicio 8: Simular 8 extracciones con reemplazamiento de la urna del ejercicio 7.