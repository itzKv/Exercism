func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8.0
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let workDays = 22
    let rateBeforeDiscount = Double(hourlyRate * 8 * workDays)
  return (rateBeforeDiscount - rateBeforeDiscount * discount/100).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let rateBeforeDiscount = Double(hourlyRate * 8 )
    return (budget /  (rateBeforeDiscount - rateBeforeDiscount * discount/100) ).rounded(.down)
}
