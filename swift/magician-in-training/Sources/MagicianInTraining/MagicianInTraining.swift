func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  var newStack = stack

  // Check for valid index within the stack's bounds
  if index >= 0 && index < newStack.count {
    newStack[index] = newCard
  }

  return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.append(newCard)
    return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var newStack = stack
    if index > 0 && index < newStack.count {
        newStack.remove(at: index)
    }
    return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    var newStack = stack
    if !newStack.isEmpty {
        newStack.removeLast()
    }
    return newStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.insert(newCard, at: 0)
    return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    var newStack = stack
    if newStack.count != 0 {
        newStack.remove(at: 0)
    }
    return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    let newStack = stack
    if newStack.count == size {
        return true
    }
    return false
}

func evenCardCount(_ stack: [Int]) -> Int {
    let newStack = stack
    var evenCards: Int = 0
    for num in newStack{
        if num.isMultiple(of: 2) {
            evenCards += 1
        }
    }
    return evenCards
}
