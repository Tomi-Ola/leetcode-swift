func reversenum(_ num:Int) -> Int {
    var result = 0
    var stack = [Character]()

    for c in String(num) {
        stack.append(c)
    }

    while !stack.isEmpty {
        if let last = stack.popLast(){
            result = result * 10 + Int(String(last))!
        }
    }
    return result
}

print(reversenum(123))
