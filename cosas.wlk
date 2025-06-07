import camion.*

object knightRider {
    method peso() = 500
    method peligrosidad() = 100
}

object bumblebee {

    var estaTransformado = true

    method peso() = 800
    method estaTransformado() = estaTransformado

    method transformar(){if(estaTransformado == true){
        estaTransformado = false
    }
    else {
        estaTransformado = true
    }
    }

    method peligrosidad(){if(estaTransformado == true){
        return 15
        }
    else {
        return 30
        }
    }
}

object paqueteDeLadrillos {
    
    var cantidadDeLadrillos = 0

    method cantidadDeLadrillos(cantidad){cantidadDeLadrillos = cantidad}
    method cantidadDeLadrillos() = cantidadDeLadrillos

    method peso() = cantidadDeLadrillos * 2
    method peligrosidad() = 2
}
object arena {
    var peso = 0

    method peso(unPeso){peso = unPeso}
    method peligrosidad() = 1
}

object bateriaAntiaerea {
    var tieneMisiles = true

    method peso(){
        if(tieneMisiles){return 300}
        else{return 200}
    }

    method peligrosidad(){
        if(tieneMisiles){return 100}
        else{return 0}
    }
}

object contenedor{

    const carga =#{}

    method aniadirCarga(unaCarga) = carga.add(unaCarga)
    method bajarCarga(unaCarga) = carga.add(unaCarga)
    method peso()= 100 + self.pesoDeCarga()
    method pesoDeCarga() = carga.sum({c=> c.peso()}) 
    method peligrosidad(){ 
        if (carga.isEmpty()){return 0}
        else{return carga.max({c=> c.peligrosidad()})}
    }
}

object residuosRadioactivos {
    var property peso = 0
    method peligrosidad() = 200
}

object embalajeDeSeguridad {
    
    const envuelveA =#{}

    method peso(){
        if (envuelveA.isEmpty()){return 0}
        else{return envuelveA.sum({e=> e.peso()})}    
    }

    method peligrosidad(){
        if (envuelveA.isEmpty()){return 0}
        else{return envuelveA.max({e=> e.peligrosidad() / 2})}    
    }
}
