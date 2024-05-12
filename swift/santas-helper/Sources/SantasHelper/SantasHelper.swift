import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
  let X = cart.x
  let Y = cart.y
  return (sqrt(pow(X, 2) + pow(Y, 2)), atan2(Y , X))
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {
  // Note that both id param in those 2 tuples has the same number
  return (id: production.id, toy: production.toy, productLead: production.productLead, recipients: gifts.1)
}
