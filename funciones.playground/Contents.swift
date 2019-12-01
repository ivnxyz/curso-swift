/*
 Funciones
*/

// Las funciones sirven para encapsular código y reusarlo
func imprimirSaludo() {
    print("Hola")
}

// Las funciones también pueden recibir parámetros
func imprimirSaludo(nombre: String) {
    print("Hola " + nombre)
}

// Las funciones pueden regresar datos
func obtenerSaludo(nombre: String) -> String {
    return "Hola " + nombre
}

// Llamado de una función
imprimirSaludo()
imprimirSaludo(nombre: "Iván")
let saludo = obtenerSaludo(nombre: "Iván")
print(saludo)
