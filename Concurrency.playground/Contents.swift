import UIKit

// parallelism: working at the same time
// concurrency: switching between tasks
// parallelism requires concurrency, but concurrency doesn’t guarantee parallelism.

// serial queues: when task is finsihed the next can run
// concurrent queues: many tasks can be running at the same time

// main queues: runs on main thread, serial, mainly for UI
// global queues: concurrent queues with different priorites, mainly for non-UI

// sync: returns control to the caller after the task completes
// asyunc: returns immediately, ordering the task to start but not waiting for it to complete.
//DispatchQueue.main.async {
//    foo(title: "first")
//}
//
//DispatchQueue.global(qos: .background).async {
//    foo(title: "Second")
//
//}
//
//foo(title: "third")
//
//func foo(title: String){
//    print(title)
//}

func main(gas: [Int], cost: [Int]) -> Int {
    
    for i in 0 ... gas.count - 1 {
        
    }
}

print(main(nums: [1,2,3,4,5,6,7,8,9,0]))
