import Cocoa

var inputs = String(contentsOfFile: Bundle.main.path(forResource: "input", ofType: "txt")!).split(separator: "\n")

for input1 in inputs {
    var charsOne = Array(input1)
    var done = false
    for input2 in inputs {
        var charsTwo = Array(input2)
        var count = 0
        var index = [Int]()
        var result = ""
        
        for i in 0..<charsOne.count {
            var charOne = charsOne[i]
            var charTwo = charsTwo[i]
            
            if (charTwo != charOne) {
                count = count + 1
                index.append(i)
            }
        }
        
        if (count == 1) {
            for i in 0..<charsOne.count {
                if i != index[0] {
                    result = result + String(charsOne[i])
                }
            }
            
            print(result)
            done = true
            break
        }
    }
    
    if done {
        break
    }
}


