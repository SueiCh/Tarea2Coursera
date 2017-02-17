//Tarea Semana 4
//Suei Chong

import UIKit

//Velocímetro de automóvil


enum Velocidades : Int{
    case Apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(velocidad : Velocidades){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual:Int,velocidadEnCadena:String){
        
        switch velocidad
        {
        case Velocidades.Apagado :
            self.velocidad = .velocidadBaja
            return (0,"Apagado")
        case Velocidades.velocidadBaja :
            self.velocidad = .velocidadMedia
            return (20,"Velocidad baja")
        case .velocidadMedia :
            self.velocidad = .velocidadAlta
            return (50,"Velocidad Media")
        case .velocidadAlta :
            self.velocidad = .velocidadMedia
            return (120,"Velocidad Alta")
        }
        
    }
    
}

//Prueba instancia de clase

var auto = Auto(velocidad: .velocidadMedia)

for x in 1...20{
    print(auto.cambioDeVelocidad())
}