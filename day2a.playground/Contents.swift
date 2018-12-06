import Cocoa

var twos = 0
var threes = 0

var inputs = String(contentsOfFile: Bundle.main.path(forResource: "input", ofType: "txt")!).split(separator: "\n")

for input in inputs {
    var chars = Array(input)
    chars.sort()
    var noDupes = Set(chars)
    var counts = [String:Int]()
    
    for char in chars {
        let key = String(char)
        if counts.keys.contains(key) {
            counts[key] = counts[key]! + 1
        } else {
            counts[key] = 1
        }
    }

    var foundTwos = false
    var foundThrees = false
    
    for (key, value) in counts {
        if value == 2 && !foundTwos{
            foundTwos = true
            twos += 1
        } else if value == 3 && !foundThrees {
            foundThrees = true
            threes += 1
        }
    }
}

var checksum = twos * threes
print(checksum)
