let arr = ["cool", "lock", "cook"]
var freq = [Int](repeating: 0, count: 26)
var result = [Character]()

for i in 0..<arr.count {
    for ch in Set(arr[i]) {
        let index = Int(ch.asciiValue! - Character("a").asciiValue!)
        freq[index] += 1
    }
}

for i in 0..<freq.count {
    if freq[i] == arr.count {
        result.append(Character(UnicodeScalar(i + Int(Character("a").asciiValue!))!))
    }
}
print(result)