//: Playground - noun: a place where people can play

// Review Criteria #1 - OK (¿El playground se encuentra en GitHub?)
// Review Criteria #2 - OK (¿El playground está hecho en Swift?)

// Review Criteria #3
enum Velocidades: Int {
    // Review Criteria #4
    case Apagado=0, VelocidadBaja=20, VelocidadMedia=50, VelocidadAlta=120
    
    // Review Criteria #5
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

// Review Criteria #6
class Auto {
    
    // Review Criteria #7
    var velocidad: Velocidades
    
    // Como se pide imprimir "Velocidad baja" y no "VelocidadBaja" se creó un arreglo
    // de correspondencias de valores para imprimirlo exactamente como se ha solicitado.
    var valores = ["Apagado", "Velocidad baja", "Velocidad media", "Velocidad alta"]
    
    // Review Criteria #8
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    // Review Criteria #9
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        var response = (0,"")
        
        switch velocidad.rawValue{
        case 0:
            response = (velocidad.rawValue, valores[0])
            velocidad = Velocidades.VelocidadBaja
            return response
            
        case 20:
            response = (velocidad.rawValue, valores[1])
            velocidad = Velocidades.VelocidadMedia
            return response
            
        case 50:
            response = (velocidad.rawValue, valores[2])
            velocidad = Velocidades.VelocidadAlta
            return response
            
        case 120:
            response = (velocidad.rawValue, valores[3])
            velocidad = Velocidades.VelocidadMedia
            return response
            
        default:
            return (0, "")
        }
    }
}

var auto = Auto()
// Review Criteria #10
for (var i=0; i<20; i++){
    print(auto.cambioDeVelocidad())
}