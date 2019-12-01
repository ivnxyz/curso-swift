/*
 Clases
 
 Las clases sirven para abstraer objetos del mundo real o para establecer una relación entre distintos atributos
*/

// Las clases son como 'moldes'
class Persona {
    
    // Atributos
    
    let nombre: String
    let edad: Int
    let gruposFavoritos: [String]
    
    // Inicializador
    
    init(nombre: String, edad: Int, gruposFavoritos: [String]) {
        self.nombre = nombre
        self.edad = edad
        self.gruposFavoritos = gruposFavoritos
    }
    
}

// Los objetos son el resultado de usar una clase o un molde
let ivan = Persona(nombre: "Iván", edad: 19, gruposFavoritos: ["The Beatles", "The Beach Boys", "The Black Keys"])
