var index1 = 0
var index2 = 0

let arr1 = [1, 2, 3]
let arr2 = [2, 3, 4]
var seen = Set<Int>()
var result = [Int]()

while index1 < arr1.count && index2 < arr2.count {
    if arr1[index1] < arr2[index2] {
        if !seen.contains(arr1[index1]) {
            result.append(arr1[index1])
            seen.insert(arr1[index1])
        }
        index1 += 1
    } else {
        if !seen.contains(arr2[index2]) {
            result.append(arr2[index2])
            seen.insert(arr2[index2])
        }
        index2 += 1
    }
}

while index1 < arr1.count {
    if !seen.contains(arr1[index1]) {
        result.append(arr1[index1])
        seen.insert(arr1[index1])
    }
    index1 += 1
}

while index2 < arr2.count {
    if !seen.contains(arr2[index2]) {
        result.append(arr2[index2])
        seen.insert(arr2[index2])
    }
    index2 += 1
}

print(result)