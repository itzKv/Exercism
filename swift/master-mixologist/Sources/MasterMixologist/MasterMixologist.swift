func timeToPrepare(drinks: [String]) -> Double {
    var preparation: Double = 0.0

    for drink in drinks {
      switch drink {
        case "water", "soda", "beer": preparation += 0.5
        case "shot": preparation += 1.0
        case "mixed drink": preparation += 1.5
        case "fancy drink": preparation += 2.5
        case "frozen drink": preparation += 3.0
        default: preparation += 0
      }
    }
    return preparation
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    let totalLimes = limes.count
    var wedges: Int = 0
    var limesUsed: Int = 0
    
    guard totalLimes > 0 && needed > 0 else {
        return 0
    }
    
    for lime in limes {
        switch lime {
        case "small": wedges += 6
        case "medium": wedges += 8
        case "large": wedges += 10
        default: break
        }
        limesUsed += 1
        
        if wedges > needed {
            return limesUsed
        }
    }
    return limesUsed
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var timeLeft = Double(minutesLeft)
    var ordersToComplete = remainingOrders

    for _ in ordersToComplete.indices {
        guard timeLeft > 0.0 && !ordersToComplete.isEmpty else {
            break
        }

        let order = ordersToComplete.removeFirst()
        timeLeft -= timeToPrepare(drinks: order)
    }
    return ordersToComplete
}

func orderTracker(orders: [(drink: String, time: String)]) -> (beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?) {
    var beerOrders = [(time: String, index: Int)]()
    var sodaOrders = [(time: String, index: Int)]()
    
    for (index, order) in orders.enumerated() {
        switch order.drink {
        case "beer":
            beerOrders.append((order.time, index))
        case "soda":
            sodaOrders.append((order.time, index))
        default:
            continue
        }
    }
    
    let beerInfo: (first: String, last: String, total: Int)?
    if let firstBeer = beerOrders.first {
        let lastBeer = beerOrders.last!
        beerInfo = (firstBeer.time, lastBeer.time, beerOrders.count)
    } else {
        beerInfo = nil
    }
    
    let sodaInfo: (first: String, last: String, total: Int)?
    if let firstSoda = sodaOrders.first {
        let lastSoda = sodaOrders.last!
        sodaInfo = (firstSoda.time, lastSoda.time, sodaOrders.count)
    } else {
        sodaInfo = nil
    }
    
    return (beerInfo, sodaInfo)
}