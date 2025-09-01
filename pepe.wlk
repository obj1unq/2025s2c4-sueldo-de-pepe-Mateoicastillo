object pepe {

    var property categoría = 
}

object sueldoNeto {
    
    method neto(persona){
        return if(persona.categoría() == "Gerente"){
            15000
        } else {
        if(persona.categoría() == "Cadete"){
                20000
            }
        }
    } 
}