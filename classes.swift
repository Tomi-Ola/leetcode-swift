import Foundation

struct UserStruct {
    var name: String
    var age: Int

    mutating func updateName(to newName: String) {
        self.name = newName
    }
}

class UserClass {
    var name: String

    init(name: String) {
        self.name = name
    }

    func updateName(to newName: String) {
        self.name = newName
    }

    deinit {
        print("class is being deallocated")
    }
}

var structUser1 = UserStruct(name: "Alice")
var structUser2 = structUser1

structUser2.updateName(to: "Bob")

print("Struct User 1 Name: (structUser1.name)")
print("Struct User 2 Name: (structUser2.name)")


var classUser1: UserClass? = UserClass(name: "Alice")
var classUser2 = classUser1

classUser2?.updateName(to: "Bob")

print("Class User 1 Name: (classUser1?.name ?? "")")
print("Class User 2 Name: (classUser2?.name ?? "")")

classUser1 = nil
classUser2 = nil