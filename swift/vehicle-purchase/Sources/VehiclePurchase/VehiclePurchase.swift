func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let vehiclePricePerMonth: Double = price / 60 // 5 x 12 months
    let affordability: Double = monthlyBudget * 1.1 // 10%
    var message: String = ""
    if vehiclePricePerMonth < monthlyBudget {
        message = "Yes! I'm getting a \(vehicle)"
    }
    else if vehiclePricePerMonth < affordability {
        message = "I'll have to be frugal if I want a \(vehicle)"
    }
    else {
        message =  "Darn! No \(vehicle) for me"
    }
    return message
}

func licenseType(numberOfWheels wheels: Int) -> String {
    if wheels == 2 || wheels == 3 { 
        return "You will need a motorcycle license for your vehicle"
    }
    else if wheels == 4 || wheels == 6 { 
        return "You will need an automobile license for your vehicle"
    }
    else if wheels == 18 { 
        return "You will need a commercial trucking license for your vehicle"
    }
    return "We do not issue licenses for those types of vehicles"
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    var resellPrice: Double = Double(originalPrice)
    if yearsOld < 3 {
        resellPrice = Double(resellPrice * 0.8) // 80% of the original price
    }
    else if yearsOld >= 3 && yearsOld < 10 {
        resellPrice = Double(resellPrice * 0.7) // 70% of the original price
    }
    else if yearsOld >= 10 {
        resellPrice = Double(resellPrice * 0.5) // 50% of the original price
    }
    return Int(resellPrice)
}
