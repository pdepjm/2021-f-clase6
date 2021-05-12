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
-- Saber si hay peligro, que es cuando hay algún peso pluma (que pesa menos de 1).
-- Conocer los vehículos de cada conductor
-- Saber si todos los que están corriendo la carrera son parte del universo de mario.
-- Conocer los conductores independientes: que son todos los que no son parte de ningún universo conocido.



{-
-- Conocer los conductores que tienen moto
conductoresConMoto :: [Conductor] -> [Conductor]
conductoresConMoto conductores = filter tieneMoto conductores

tieneMoto :: Conductor -> Bool
tieneMoto = (Moto ==).vehiculo

-- Saber si hay peligro, que es cuando hay algún peso pluma (que pesa menos de 1).
hayPeligro :: [Conductor] -> Bool
hayPeligro conductores = any pesoPluma conductores

pesoPluma :: Conductor -> Bool
pesoPluma = (<1).peso

-- Conocer los vehículos de cada conductor
vehiculos :: [Conductor] -> [Vehiculo]
vehiculos conductores = map vehiculo conductores

-- Saber si todos los que están corriendo la carrera son parte del universo de mario.
todosSomosMario :: [Conductor] -> Bool
todosSomosMario conductores = all (\ conductor -> elem (nombre conductor) universoMario) conductores

-- Conocer los conductores independientes: que son todos los que no son parte de ningún universo conocido.
independientes :: [Conductor] -> [Conductor]
independientes conductores = filter esIndependiente conductores

esIndependiente :: Conductor -> Bool
esIndependiente (UnConductor nombre _ _) = not (elem nombre universoMario) && not (elem nombre universoZelda)
esIndependiente' conductor = not (elem (nombre conductor) (universoMario ++ universoZelda))
esIndependiente'' = not.flip elem (universoMario ++ universoZelda).nombre

-}