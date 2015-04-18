import Foundation

class FizzBuzz {
  
  var contador = 0
  
  func retornaProximoNumero () -> String {
    
    if ++contador % 15 == 0 {
      return "FizzBuzz"
    }
    
    if contador % 3 == 0 {
      return "Fizz"
    }
    
    if contador % 5 == 0 {
      return "Buzz"
    }
    
    return "\(contador)"
  }
}
