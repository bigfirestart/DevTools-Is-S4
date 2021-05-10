import Foundation

//TODO

//MARK - <#name#>

/// Basic calculator documentation
/// - Parametrs
///   - a: First number
///   - b: Second number
///   - symb: One of "+", "-", "/", "*" symbols
func calc (a: Int, b: Int, symb: String) -> Float{
    switch symb {
    case "*":
        return Float(a*b)
    case "/":
        return Float(a/b)
    case "+":
        return Float(a+b)
    case "-":
        return Float(a-b)
    default:
        return  0
    }
}
var a = Int(readLine() ?? "0")!
var symb = readLine()!
var b = Int(readLine() ?? "1")!


/**
 Creates a personalized greeting for a recipient.

 - Parameter recipient: The person being greeted.

 - Throws: `MyError.invalidRecipient`
           if `recipient` is "Derek"
           (he knows what he did).

 - Returns: A new string saying hello to `recipient`.
 */
func greeting(to recipient: String) -> String {
    guard recipient != "Derek" else {
        return ""
    }

    return "Greetings, \(recipient)!"
}

print(calc(a: a, b: b, symb: symb))
