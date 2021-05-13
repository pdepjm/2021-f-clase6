module Library where
import PdePreludat

data Conductor = UnConductor {
  nombre :: String,
  peso :: Number,
  vehiculo :: Vehiculo
} deriving Show

data Vehiculo = Moto | Karting | Auto deriving (Show, Eq)

universoMario = ["Mario", "Yoshi", "Luigi", "Peach", "Toad", "Toadette", "Kuppa"]
universoZelda = ["Zelda", "Link", "Ganon"]

participantesCarrera1 :: [Conductor]
participantesCarrera1 = [ 
  UnConductor { nombre = "Mario", peso = 9, vehiculo = Karting },
  UnConductor { nombre = "Peach", peso = 9, vehiculo = Karting },
  UnConductor { nombre = "Toad", peso = 2, vehiculo = Auto },
  UnConductor { nombre = "Toadette", peso = 9, vehiculo = Karting },
  UnConductor { nombre = "Yoshi", peso = 4, vehiculo = Moto },
  UnConductor { nombre = "Kuppa", peso = 12, vehiculo = Auto },
  UnConductor { nombre = "Luigi", peso = 11, vehiculo = Karting },
  UnConductor { nombre = "Zelda", peso = 9, vehiculo = Karting },
  UnConductor { nombre = "Ganon", peso = 3, vehiculo = Auto },
  UnConductor { nombre = "Link", peso = 13, vehiculo = Moto },
  UnConductor { nombre = "Miles", peso = 0.5, vehiculo = Moto },
  UnConductor { nombre = "Sonic", peso = 5, vehiculo = Moto }]

participantesCarrera2 :: [Conductor]
participantesCarrera2 = [ 
  UnConductor { nombre = "Mario", peso = 9, vehiculo = Karting },
  UnConductor { nombre = "Peach", peso = 9, vehiculo = Karting },
  UnConductor { nombre = "Toad", peso = 2, vehiculo = Auto },
  UnConductor { nombre = "Toadette", peso = 9, vehiculo = Karting },
  UnConductor { nombre = "Yoshi", peso = 4, vehiculo = Moto }]

-- Dada una lista de conductores:
-- Conocer los conductores que tienen moto
conductoresConMoto :: [Conductor] -> [Conductor]
conductoresConMoto conductores = filter tieneMoto conductores

tieneMoto :: Conductor -> Bool
tieneMoto = (==Moto).vehiculo

-- Saber si hay peligro, que es cuando hay algún peso pluma (que pesa menos de 1).
hayPeligro :: [Conductor] -> Bool
hayPeligro conductores = any esPesoPluma conductores

esPesoPluma :: Conductor -> Bool
esPesoPluma = (<1).peso

-- Conocer los vehículos de cada conductor
vehiculos :: [Conductor] -> [Vehiculo]
vehiculos conductores = map vehiculo conductores

-- Saber si todos los que están corriendo la carrera son parte 
-- del universo de mario.
todosSonDeMario :: [Conductor] -> Bool
todosSonDeMario conductores = all esTeamMario conductores

esTeamMario :: Conductor -> Bool
esTeamMario conductor = elem (nombre conductor) universoMario


-- Conocer los conductores independientes: que son todos los que no 
-- son parte de ningún universo conocido.
-- queda de práctica
