import Foundation

//1. Find the smallest element in a queue

func smallestElement<T: Comparable>(in q: Queue<T>) -> T? {
    
    guard !q.isEmpty else { return nil }
      //want to point to the head of the Queue
      //compare currentNode with storedNode,
      // using while loop to go to the node until the Queue is empty
      // compare currentNode with storedNode, if currentNode is smaller than storedNode, storedNode will become currentNode
      // currentNode = currentNode.dequeue
      var queue = q // create a copy from a constant to variable
      var currentElement = queue.dequeue()
      // 7 5 6
      var smallestElement = currentElement
      while currentElement != nil {
          if currentElement! < smallestElement! {
              smallestElement = currentElement
          }
          currentElement = queue.dequeue()
      }
      return smallestElement
    
}

//2. Find the sum of a queue of Ints

func sum(of q: Queue<Int>) -> Int {
//    looping throught the queue
//    adding each element to an int var
//    return int var
    
    var queue2 = q
    var currentElement = queue2.dequeue()
    var sum = 0
    
    while currentElement != nil {
        
        sum += currentElement ?? 0
        currentElement = queue2.dequeue()
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
    return true
}

//4. Given a Queue as input, return a reversed queue. (Hint: A stack can be helpful here)

/*
Sample Input:   (Back) 9 - 16 - 2 - 31 (Front)
Sample Output:  (Back) 31 - 2 - 16 - 9 (Front)
 */
// a stack is first in last out

//iterate through a queue
//push the dequeue elements into a stack
//push the stack into the queue we will return

func reversed<T>(q: Queue<T>) -> Queue<T> {
    var q4 = q
    var tempStack = Stack<T>()
    var reversedQueue = Queue<T>()
    
    
    while !q4.isEmpty {
        var currentElement = q4.dequeue()

        tempStack.push(value: currentElement!)
        
    }
    print("reversed string temp stack is empty \(tempStack.isEmpty)")

    while !tempStack.isEmpty {
        var stackElememt = tempStack.pop()
        print("this is my stack element \(stackElememt)")
        reversedQueue.enqueue(stackElememt!)
    }

    return reversedQueue
}

//5 Determine if two Queues are equal

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    return false
}

