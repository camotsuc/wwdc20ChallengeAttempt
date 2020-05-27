import Foundation

class Brain {
    
    func checkForWhiteSpaces(ourText : String) -> Bool {
        if ourText.contains(" "){
            return true
        }else{
            return false
        }
    }
    
func checkForOnlyNumbers(textFieldHere: String) -> Bool{
    let stringWithoutSpaces = textFieldHere.trimmingCharacters(in: .whitespacesAndNewlines)
    let result = Double(stringWithoutSpaces)
    if result != nil {
        return false
    }else{
        return true
    }
}
func checkForOnlyPlusAndMinus(textFieldHere: String) -> Bool {
    let aviableCharsForSign = CharacterSet(charactersIn: "+-")
    let stringWithoutSpaces = textFieldHere.trimmingCharacters(in: .whitespacesAndNewlines)
    if stringWithoutSpaces.lowercased().rangeOfCharacter(from: aviableCharsForSign ) != nil {
        return false
    }else{
        return true
    }
}

func checkForNil(ourText :String?) -> String {
    
    if let _ = ourText {
        return ourText!
    }else{
        return "value is nil"
    }
}
    func checkIfMoreThanOnePlusOrMinus(textFieldHere: String) -> Bool {
       let stringWithoutSpaces = textFieldHere.trimmingCharacters(in: .whitespacesAndNewlines)
        if stringWithoutSpaces.count > 1 {
            return true
        }else{
            return false
        }
    }
    
    func checkIfFirstCharIs0(textFieldHere: String) -> Bool {
        var result:Bool = true
        //let secondCharacter = textFieldHere[String.Index.init(utf16Offset: 2, in: textFieldHere)]
        if let firstChar = textFieldHere.first {
            if firstChar == "0" && !textFieldHere.contains("."){
                result = true

            }else{
                result = false
            }
        }

        return result
    }
    
}
