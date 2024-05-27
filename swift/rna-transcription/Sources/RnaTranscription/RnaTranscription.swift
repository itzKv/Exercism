func toRna(_ dna: String) -> String {
  // Write your code for the 'Rna Transcription' exercise in this file.
  let rna: String = dna.map {
    switch ($0) {
      case "A": return "U"
      case "C": return "G"
      case "G": return "C"
      case "T": return "A"
      default: return ""
    }
  }.joined()
  return rna
}
