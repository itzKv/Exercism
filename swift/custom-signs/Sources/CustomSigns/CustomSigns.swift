// TODO: define the 'birthday' String constant
let birthday = "Birthday"

// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"

// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"

// TODO: define the 'space' Character constant
let space: Character = " "

// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
    let result = "Happy" + String(space) + occasion + String(space) + name + String(exclamation)
    return result
}

func graduationFor(name: String, year: Int) -> String {
    let graduation = "Congratulations" + String(space) + name + String(exclamation) +  "\n" + "Class of" + String(space) + String(year)
    return graduation
}

func costOf(sign: String) -> Int {
    let countOfString = sign.count
    let result = 20 + (2 * countOfString)
    return result
}
