import UIKit
import XCTest

class FizzBuzzTests: XCTestCase {
  
  var jogo : FizzBuzz!
  
  override func setUp() {

    jogo = FizzBuzz()
  }
  
  func testSePrimeiroNumeroEhUm () {
  
    XCTAssertEqual(jogo.retornaProximoNumero(), "1")
  }
  
  func testSeSegundoNumeroEhDois () {
    
    incrementaNVezes(1)
    
    XCTAssertEqual(jogo.retornaProximoNumero(), "2")
  }
  
  func testSeTresEhIgualAFizz () {
    
    incrementaNVezes(2)
    
    XCTAssertEqual(jogo.retornaProximoNumero(), "Fizz")
  }
  
  func testMultiploDeTresRetornaFizz () {
    
    incrementaNVezes(5)
    
    XCTAssertEqual(jogo.retornaProximoNumero(), "Fizz")
  }
  
  func testSeCincoEhIgualABuzz () {
    
    incrementaNVezes(4)
    
    XCTAssertEqual(jogo.retornaProximoNumero(), "Buzz")
  }
  
  func testSeMultiploDeTresECincoEhIgualAFizzBuzz () {
    
    incrementaNVezes(29)
    
    XCTAssertEqual(jogo.retornaProximoNumero(), "FizzBuzz")
  }
  
  func incrementaNVezes (n : Int) {
    
    for _ in 0..<n {
      jogo.retornaProximoNumero()
    }
  }
}
