func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  guard let diameter = diameter, diameter >= 0,
        let slices = slices, slices > 0 else { return nil }
  let r: Double = diameter / 2
  let areaOfSlices = (Double.pi * r * r) / Double(slices)
  return areaOfSlices
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let areaA: Double? = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let areaB: Double? = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

  guard let areaA = areaA, let areaB = areaB, areaA != areaB else {
    if areaA != nil && areaB == nil {
      return "Slice A is bigger"
    } else if areaA == nil && areaB != nil {
      return "Slice B is bigger"
    } else {
      return "Neither slice is bigger"
    }
  }
  return (areaA > areaB) ? "Slice A is bigger" : "Slice B is bigger"
}
