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
    case "^":
        return Float(truncating: pow(Decimal(a),Int(b)) as NSNumber)
    case "%":
        return Float(a % b)
    case "&":
        return Float(a & b)
    default:
        return  0
    }
}
var a = Int(readLine() ?? "0")!
var symb = readLine()!
var b = Int(readLine() ?? "1")!

print(calc(a: a, b: b, symb: symb))
