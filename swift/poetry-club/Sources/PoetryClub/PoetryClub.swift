import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    let splitString = poem.components(separatedBy: "\n")
    return splitString
}

func firstLetter(_ line: String) -> Character {
    if line == "" { return "_" }
    return line[line.startIndex]
}

func capitalize(_ phrase: String) -> String {
    let firstLetterCapitalized: String = phrase.capitalized
    return firstLetterCapitalized
}

func trimSentence(_ line: String) -> String {
    return line.trimmingCharacters(in: .whitespaces)
}

func lastLetter(_ line: String) -> Character {
    guard line != "" else { return "_"}
    return line[line.index(before: line.endIndex)]
}

func backDoorPassword(_ phrase: String) -> String {
    return capitalize(phrase) + ", please"
}

func ithLetter(_ line: String, i: Int) -> Character {
    guard i >= 0 && i < line.count else { return " "}
    let index = line.index(line.startIndex, offsetBy: i)
    return line[index]
}

func secretRoomPassword(_ phrase: String) -> String {
    return phrase.uppercased() + "!"
}
