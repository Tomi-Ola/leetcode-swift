func removeDupAndSort(_ arr: [Int]) -> [Int] {
    let uniqueSet = Set(arr) // Remove duplicates by converting the array to a Set
    let sortedArray = uniqueSet.sorted() // Sort the unique elements
    return sortedArray
}

print(removeDupAndSort([3, 1, 2, 3, 4, 2, 1]))