let preparationMinutes: Int = 2
let noodlesQuantity: Int = 3
let sauceQuantity: Double = 0.2

// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    return layers.count * preparationMinutes
}

// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double) {
    var (totalNoodles, totalSauces) : (Int, Int) = (0, 0)
    for layer in layers {
        if layer == "noodles" { totalNoodles += 1}
        else if layer == "sauce" { totalSauces += 1}
    }
    return (totalNoodles * noodlesQuantity, Double(totalSauces) * sauceQuantity)
}

// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int, sauce: Double)) {
    let ouncesPerLiter: Double = 33.814
    amount.sauce = amount.sauce * ouncesPerLiter
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    var whiteWine: Int = 0
    var redWine: Int = 0
    func mozzarella(_ layer: String) { whiteWine += 1}
    func ricotta(_ layer: String) { whiteWine += 1}
    func bechamel(_ layer: String) { whiteWine += 1}
    func sauce(_ layer: String) { redWine += 1}
    func meat(_ layer: String) { redWine += 1}

    for layer in layers {
        if layer == "mozzarella" { whiteWine += 1}
        else if layer == "ricotta" { whiteWine += 1}
        else if layer == "béchamel" { whiteWine += 1}
        else if layer == "sauce" { redWine += 1}
        else if layer == "meat" { redWine += 1}
        else { continue }
    }
    return redWine >= whiteWine
}
