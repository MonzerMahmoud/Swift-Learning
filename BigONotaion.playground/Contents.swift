import UIKit

func logFunc(n: Int) {
    
    print("new n = \(n / 2)")
    if n / 2 == 0 {
        print("Done ...")
    } else {
        print("Calling func")
        logFunc(n: n / 2)
    }
}

//logFunc(n: 8)
var counter = 0
func printing(n: Int) -> Int {
    
    if n == 0 {
        print("Done!")
    } else {
        counter = counter + 1
        printing(n: n - 1)
    }
    return counter
}

//print(printing(n: 2))

func fun1(n: Int) -> Int {
    if n <= 0 {
        return 0
    } else {
        return 1 + fun1(n: n / 2)
    }
}

//print(fun1(n: 8))

func fun2(n: Int, m: Int, o: Int) {
    if (n <= 0) {
        counter = counter + 1
        //print("\(m), \(o)")
    } else {
        fun2(n: n-1, m: m+1, o: o)
        fun2(n: n-1, m: m, o: o+1)
    }
    print(counter)
}

//fun2(n: 1, m: 4, o: 5)

func addFunc(a: Array<Int>, sum: Int) -> Array<Int>? {
    for i in 0..<a.count - 1 {
        for j in i + 1...a.count - 1 {
            if a[i] + a[j] == sum {
                print("\(i) and \(j) as \(a[i]) + \(a[j]) = \(a[i] + a[j])")
            }
        }
    }
    return nil
}

func calculateTime() {
    
    let start = DispatchTime.now()
    addFunc(a: [3,1,5,7,5,9], sum: 10)
    let end = DispatchTime.now()
    
    let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    let timeInterval = Double(nanoTime) / 1_000_000_000
    
    print("Time is \(timeInterval)")
}

calculateTime()
