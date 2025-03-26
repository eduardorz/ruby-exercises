# metodos de instancia

class Auto
    def encender
        "El auto está encendido"
    end 

    def apagar
        "el auto está apagado"
    end
end 

a = Auto.new
puts a.encender
puts a.apagar



# metodo de clase

class Auto
    def self.tipo
        "soy un auto"
    end 
end 

puts Auto.tipo


# definicion de clase

class Persona
    def initialize(nombre, edad)
        @nombre = nombre
        @edad = edad
    end 

    def presentarse
        "Hola, soy #{@nombre} y tengo #{@edad} años"
    end 
end 

p1 = Persona.new("Eduardo", 23)
puts p1.presentarse