/*
 Ciclos for y ciclos while
*/

// Recorrer una lista
let nombres = ["John", "Paul", "George", "Ringo"]

for nombre in nombres { // nombre es la variable de control
    print("\(nombre) es un Beatle")
}

// Recorrer un rango
for n in 1...5 {
    print(n)
}

// Ciclos while
var contador = 0

while contador < 10 {
    contador += 1
    print(contador)
}
