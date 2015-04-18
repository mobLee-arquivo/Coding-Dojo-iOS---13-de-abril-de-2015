import Foundation

class Jogo{
  
  var pontuacaoJogador1 = 0
  var pontuacaoJogador2 = 0
  var pontuacoes = ["Love", "15","30","40"]
  
  
  func mostrarPlacar() ->String{
    
    if pontuacaoJogador1 == 3 && pontuacaoJogador2 == 3{
    
    return "Deuce"
      
    }
    
    return "\(pontuacoes[pontuacaoJogador1])x\(pontuacoes[pontuacaoJogador2])"
  }
  
  func pontuar(jogador:Int){
    if jogador == 1 {
    
    pontuacaoJogador1++
    
  }
    if jogador == 2{
    pontuacaoJogador2++
    }
  }
  
}
