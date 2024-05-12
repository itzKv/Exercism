func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func validatePassword(_ possiblePassword: String) -> String {
    if password ==  possiblePassword {
      return secret
    }
    return "Sorry. No hidden secrets here."
  }
  return validatePassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  // func makeCombo(_ x: Int) -> Int {
  //   return (x * 13) % 256 // This is the function from cases 
  // }
  // let firstNumber: Int = makeCombo(room)
  // let secondNumber: Int = makeCombo(firstNumber)
  // let thirdNumber: Int = makeCombo(secondNumber)
  // let result = (firstNumber, secondNumber, thirdNumber)
  // return result
  return (1, 2, 3)
}
