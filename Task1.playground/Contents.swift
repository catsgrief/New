import Cocoa

func discriminant(_ a: Int, _ b: Int, _ c: Int) -> () {
    var disc1 = 0
    var answer = 0
    var answer2 = 0
  disc1 =  (b * b) - 4 * a * c
    
    if disc1 < 0 {
        print("no roots") }
    else if disc1 == 0 {
        answer = -b / (2 * a)
        print( "One root, the answer is \(answer)")
    } else {
        answer = -b + disc1 / (2 * a)
        answer2 = -b - disc1  / (2 * a)
        print( "Two roots, the 1 answer is \(answer) , second anser is \(answer2)")
    }
}
discriminant(1, 2, 5)

func treangle (_ a: Double, _ b: Double) -> () {
    let square = (a * b) / 2
    let gip = sqrt((a * a) + (b * b))
    let perm = a + b + gip
    print("square is \(square) ")
    print("gip is \(gip) ")
    print("perimetr is \(perm) ")
}

treangle(10, 10)

/*func vklad (sum: Int, percent: Int) -> () {
    let sum1 = sum
    let perc = percent / 100
    var number = 1
    while number <= 5 {
        (sum1 * perc) + sum1
       number += 1
        print(sum1)
    }
}
 */
var sum = 1000.0
var percent = 9.0
var percent2 = percent / 100.0
var number = 1.0
var result = 0.0


var year1 = (sum * percent2) + sum
var year2 = (year1 * percent2) + year1
var year3 = (year2 * percent2) + year2
var year4 = (year3 * percent2) + year3
var year5 = (year4 * percent2) + year4

print("Сумма вклада за пять лет при ставке 9% составит \(year5)")

for 
