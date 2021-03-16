import Foundation

//TODO


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


print(calc(a: a, b: b, symb: symb))
