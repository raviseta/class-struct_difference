import UIKit

var str = "Hello, playground"

class demo{
    var roomCount : Int = 6
}

var obj = demo()
let obj1 = obj
obj1.roomCount = 9

print(obj.roomCount)
print(obj1.roomCount)
print("c1 address: \(Unmanaged.passUnretained(obj1).toOpaque())") //Is this correct ?

print("c1 address: \(Unmanaged.passUnretained(obj).toOpaque())") //Is this correct ?

struct test{
    var roomCount = 6
}

var stuc1 = test()
var stuc2 = stuc1
stuc2.roomCount = 9

print(stuc1.roomCount)
print(stuc2.roomCount)
withUnsafeMutablePointer(to: &stuc1) {
    print("s1 address: \($0)")
}

withUnsafeMutablePointer(to: &stuc2) {
    print("s1 address: \($0)")
}
