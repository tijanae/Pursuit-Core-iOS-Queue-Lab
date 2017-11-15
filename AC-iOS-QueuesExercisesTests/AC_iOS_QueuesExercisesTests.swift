//
//  AC_iOS_QueuesExercisesTests.swift
//  AC-iOS-QueuesExercisesTests
//
//  Created by C4Q  on 11/14/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import XCTest
@testable import AC_iOS_QueuesExercises

class AC_iOS_QueuesExercisesTests: XCTestCase {

    var myQueue = Queue<Int>()
    var otherQueue = Queue<Int>()
    var emptyQueue = Queue<Int>()
    
    override func setUp() {
        super.setUp()
        var myQ = Queue<Int>()
        myQ.enQueue(39)
        myQ.enQueue(10)
        myQ.enQueue(7)
                
        myQueue.enQueue(5)
        myQueue.enQueue(10)
        myQueue.enQueue(13)
        myQueue.enQueue(17)
        
        otherQueue.enQueue(8)
        otherQueue.enQueue(11)
        otherQueue.enQueue(4)
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSum() {
        XCTAssertTrue(sum(of: myQueue) == 45)
        XCTAssertTrue(sum(of: otherQueue) == 23)
    }
    
    func testSmallest() {
        XCTAssertTrue(smallestElement(in: myQueue) == 5)
        XCTAssertTrue(smallestElement(in: otherQueue) == 4)
        XCTAssertNil(smallestElement(in: emptyQueue))
    }
    
    func testIsSorted() {
        XCTAssertTrue(isSorted(q: myQueue))
        XCTAssertFalse(isSorted(q: otherQueue))
    }
    
    func testReverse() {
        var reversedMyQueue = Queue<Int>()
        reversedMyQueue.enQueue(17)
        reversedMyQueue.enQueue(13)
        reversedMyQueue.enQueue(10)
        reversedMyQueue.enQueue(5)
        var userReversed = reversed(q: myQueue)
        
        while !(reversedMyQueue.isEmpty) && !(userReversed.isEmpty) {
            XCTAssertTrue(reversedMyQueue.deQueue() == userReversed.deQueue())
        }
        XCTAssertNil(reversed(q: emptyQueue).peek())
    }
    
    func testEquals() {
        var myQueueCopy = Queue<Int>()
        myQueueCopy.enQueue(5)
        myQueueCopy.enQueue(10)
        myQueueCopy.enQueue(13)
        myQueueCopy.enQueue(17)
        
        var otherQueueCopy = Queue<Int>()
        otherQueueCopy.enQueue(8)
        otherQueueCopy.enQueue(11)
        otherQueueCopy.enQueue(4)
        
        XCTAssertTrue(areEqual(qOne: myQueue, qTwo: myQueueCopy))
        XCTAssertTrue(areEqual(qOne: otherQueue, qTwo: otherQueueCopy))
        XCTAssertFalse(areEqual(qOne: myQueue, qTwo: otherQueue))
        XCTAssertFalse(areEqual(qOne: otherQueueCopy, qTwo: emptyQueue))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
