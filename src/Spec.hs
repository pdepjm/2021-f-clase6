module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test conductoresIndependientes" $ do
    it "No hay conductores independientes" $ do
      conductoresIndependientes participantesCarrera2 `shouldBe` []
    it "Hay conductores independientes" $ do
      conductoresIndependientes participantesCarrera1 `shouldBe` [UnConductor {nombre = "Miles", peso = 0.5, vehiculo = Moto},UnConductor {nombre = "Sonic", peso = 5, vehiculo = Moto}]
  

