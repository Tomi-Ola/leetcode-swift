func removeDupAndSort(_ arr: [Int]) -> [Int] {
    let uniqueSet = Set(arr)
    let sortedArray = uniqueSet.sorted()
    return sortedArray
}

print(removeDupAndSort([3, 1, 2, 3, 4, 2, 1]))