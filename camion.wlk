import cosas.*

object camion {

    const carga =#{}

    method pesoTara() = 1000
    method pesoDeCarga() = carga.sum({c=> c.peso()})
    method pesoTotal() = self.pesoTara() + self.pesoDeCarga()
    method aniadirCarga(unaCarga) = carga.add(unaCarga) 
    method elPesoDeLaCargaEsPar() = carga.peso() / 2 % 1
    method hayAlgoQuePese_(cantidad) = carga.find({c=> c.peso() == cantidad})
    method cargaDePeligro_(nivelDePeligro) = carga.find({c=> c.peligrosidad() == nivelDePeligro})
    method listaDeCargaConMasPeligroQue(nivelDePeligro) = carga.find({c=> c.peligrosidad() > nivelDePeligro})
    method listaDeCargaMasPeligrosaQue(unaCosa) = carga.find({c=> c.peligrosidad() > unaCosa.peligrosidad()})
    method estaExcedidoDePeso() = self.pesoTotal() > 2500
    method noEstaExcedidoDePeso() = !self.estaExcedidoDePeso()
    method puedeCircularEnRuta(pesoMaximo, peligrosidadMaxima){return (self.pesoTotal() < pesoMaximo) && (self.cargaMasPeligrosa() < peligrosidadMaxima)}
    method cargaMasPesada() = carga.max({c=> c.peso()})
    method cargaMasLigera() = carga.min({c=> c.peso()})
    method cargaMasPeligrosa() = carga.max({c=> c.peligrosidad()})
    method cosasQuePesanEnElRangoDe(min, max) = carga.filter({c=> c.peso().between(min, max)})
}