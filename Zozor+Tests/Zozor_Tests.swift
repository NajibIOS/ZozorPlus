////
////  Zozor_Tests.swift
////  CountOnMeTests
////
////  Created by Ambroise COLLON on 30/08/2016.
////  Copyright © 2016 Ambroise Collon. All rights reserved.
////
//
//import XCTest
//@testable import CountOnMe
//
//class Zozor_Tests: XCTestCase {
//    var count : Count!
//
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//        count = Count()
//    }
//
//    // Testing if Calculate can add a number
//
//    func testGivenIsExpressionCorrect_WhenStringNumbersCounatainNothing_ThenExpressionReturnFalse()  {
//        let isExpressionCorrect = count.isExpressionCorrect
//        XCTAssertFalse(isExpressionCorrect)
//    }
//
//    // Testing The Plus Method
//
//    func testCalculatetotal_WhenOperatorsCountainPlus_ThenCalculIsCorrect(){
//        let _ = count.addNewNumber(1)
//        let _ = count.plusAction()
//        let _ = count.addNewNumber(1)
//        let result = count.calculateTotal()
//       // let result = count.updateDisplay()
//
//        XCTAssertEqual(result, "2")
//    }
//
//    //Tes
//
//    func testCalculatetotal_WhenOperatorsCountainMinus_ThenCalculIsCorrect(){
//        let _ = count.addNewNumber(1)
//        let _ = count.minusAction()
//        let _ = count.addNewNumber(1)
//        let result = count.calculateTotal()
//
//        XCTAssertEqual(result, "0")
//      }
//
//    func testGivenTappedFisrtNumber_WhenPressEqualWithoutTappedSecondNumber_ThenExpressionIsNotCorrect() {
//        count.stringNumbers = ["1", ""]
//
//        XCTAssertEqual(count.isExpressionCorrect, false)
//    }
//
//    func testGivenNotTappedTheFirstNumber_WhenDontTappedTheSecondNumber_ThenCannotAddOperator() {
//        count.stringNumbers = [""]
//
//        XCTAssertEqual(count.canAddOperator, false)
//    }
//
//    func testGievenIsNotExpressionCorrect_WhenTappedNothing_ThenReturnTrue() {
//
//        XCTAssertEqual(count.calculateTotal(), "")
//
//    }
//}
