import Cocoa

var frequency = 0
let inputs = String(contentsOfFile: Bundle.main.path(forResource: "input", ofType: "txt")!).split(separator: "\n")

var frequencies: Set = [0];
var foundDupe = false

repeat {
    for input in inputs {
        frequency += Int(input)!
        
        if !frequencies.contains(frequency) {
            frequencies.insert(frequency)
        } else {
            foundDupe = true
            print("found dupe frequncy")
            print(frequency)
            break
            
        }
    }
} while (!foundDupe)

print(frequency)
