import Foundation

//1. Find the smallest element in a queue

func smallestElement<T: Comparable>(in q: Queue<T>) -> T? {
    guard !q.isEmpty else { return nil }
    var q = q
    var smallest = q.peek()!
    
    while !q.isEmpty {
        let currentValue = q.dequeue()!
        
        if currentValue < smallest {
            smallest = currentValue
        }
    }
    return smallest
}

//2. Find the sum of a queue of Ints

func sum(of q: Queue<Int>) -> Int {
    var q = q
    var sum = 0
    
    while !q.isEmpty {
        sum += q.dequeue()!
    }
    
    return sum
}

//3. Find out whether or not a queue is in sorted order from smallest to biggest
/*
 True example:   (Back) 9 - 6 - 2 - 1 (Front)
 False example   (Back) 4 - 19 - 1 - 20 (Front)
 False example   (Back) 4 - 19 - 134 - 200 (Front)
 */

func isSorted<T: Comparable>(q: Queue<T>) -> Bool {
    var q = q
    guard !q.isEmpty else { return true }
    var lastValue = q.dequeue()!
    
    while !q.isEmpty {
        let currentValue = q.dequeue()!
        if currentValue < lastValue {
            return false
        }
        lastValue = currentValue
    }
    
    return true
}

//4. Given a Queue as input, return a reversed queue. (Hint: A stack can be helpful here)

/*
 Sample Input:   (Back) 9 - 16 - 2 - 31 (Front)
 Sample Output:  (Back) 31 - 2 - 16 - 9 (Front)
 */

func reversed<T>(q: Queue<T>) -> Queue<T> {
    var q = q
    var reversedQ = Queue<T>()
    var stack = [T]()
    while !q.isEmpty {
        stack.append(q.dequeue()!)
    }
    while !stack.isEmpty {
        reversedQ.enqueue(stack.popLast()!)
    }
    return reversedQ
}

//5 Determine if two Queues are equal

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    var qOne = qOne
    var qTwo = qTwo
    while !qOne.isEmpty && !qTwo.isEmpty {
        if qOne.dequeue()! != qTwo.dequeue()! {
            return false
        }
    }
    return qOne.isEmpty && qTwo.isEmpty
}


