import Cocoa

var result = 0

for var input in String(contentsOfFile: Bundle.main.path(forResource: "input", ofType: "txt")!).split(separator: "\n") {
    result += Int(input)!
}

print(result)
