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
