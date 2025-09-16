object pepe {

    var property categoría = cadete
    var property bonoxResultados = porcentaje
    var property bonoxPresentismo = normal
    var property faltas = 0

    method sueldo(){
        return self.categoría().sueldoNeto() + self.bonoxResultados().valor(self) + self.bonoxPresentismo().valor(self)
    }

    method asignarFaltas(cantidad){
        faltas +=  cantidad
    }
}

object cadete {

    const property sueldoNeto = 20000
}

object gerente {

    const property sueldoNeto = 15000
}

//Bonos por resultados.
object fijo {

    method valor(empleado) = 800

}

object porcentaje {

    method valor(empleado) = empleado.categoría().sueldoNeto() * 0.10
}

object nulo {

    method valor(empleado)= 0
}


//Bonos por presentismo

object normal{

    method valor(empleado){
        return if(empleado.faltas() == 0) 2000
            else if(empleado.faltas() == 1) 1000
            else 0
    }
}

object ajuste{

    method valor(empleado){
        return if(empleado.faltas() == 0) 100
            else 0
    }
}

object demagogico{

    method valor(empleado){
        return if(empleado.categoría().sueldoNeto() < 18000) 500
            else 300
    }
}

object sofia{
    
    var property categoría = cadete
    var property bonoxResultados = porcentaje

    method sueldo(){
        return (self.categoría().sueldoNeto() * 1.30) + self.bonoxResultados().valor(self)
    }

}