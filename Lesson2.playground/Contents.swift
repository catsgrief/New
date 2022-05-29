import Foundation

func numberEven (num: Int) {
    if num == 0 {
        print("число четное")
    } else {
        print("число нечетное")
    }
}
numberEven(num: 3)
func threeZero (num: Int) {
    if num % 3 == 0 {
        print("делится на три без остатка")
    } else {
        print("не делится на три без остатка")
    }
}
threeZero(num: 15)

var massiv = Array(1...100)
print(massiv)
for i in massiv{
    if (i % 2 == 0) || (i %  3 == 0) {
        massiv.remove(at: massiv.firstIndex(of: i)!)
    }
}
print(massiv)


