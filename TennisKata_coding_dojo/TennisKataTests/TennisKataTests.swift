import UIKit
import XCTest

class TennisKataTests: XCTestCase {
  
  var jogo : Jogo!
  
  var jogador1 = 1
  var jogador2 = 2
  
  override func setUp() {
    jogo = Jogo()
  }
  
  func testPlacarInicial() {
    XCTAssertEqual(jogo.mostrarPlacar(), "LovexLove")
  }
  
  func testPrimeiroPontoPrimeiroJogador(){

    jogo.pontuar(jogador1)
    
    XCTAssertEqual(jogo.mostrarPlacar(), "15xLove")
  }
  
  func testPrimeiroPontoSegundoJogador(){
    
    jogo.pontuar(jogador2)
    
    XCTAssertEqual(jogo.mostrarPlacar(), "Lovex15")
  }
  
  func testEmpateQuinzeQuinze() {
    pontuarNVezes(1, jogador:jogador1)
    pontuarNVezes(1, jogador:jogador2)

    XCTAssertEqual(jogo.mostrarPlacar(), "15x15")
    
  }
  
  func testPlacarQuinzeTrinta() {
    pontuarNVezes(1, jogador:jogador1)
    pontuarNVezes(2, jogador:jogador2)
    
    XCTAssertEqual(jogo.mostrarPlacar(), "15x30")
    
  }
  
  
  func testEmpateTrintaTrinta() {
    
    pontuarNVezes(2, jogador:jogador1)
    pontuarNVezes(2, jogador:jogador2)
    
    XCTAssertEqual(jogo.mostrarPlacar(), "30x30")
  }
  
  func testEmpateDeuce() {
    
    pontuarNVezes(3, jogador:jogador1)
    pontuarNVezes(3, jogador:jogador2)
    
    XCTAssertEqual(jogo.mostrarPlacar(), "Deuce")
  }
  
  func pontuarNVezes(n:Int,jogador:Int){
  
    for _ in 0..<n{
    jogo.pontuar(jogador)
    
    }
    
    
  }
    
}
