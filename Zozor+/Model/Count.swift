////
////  Model.swift
////  CountOnMe
////
////  Created by abdel on 17/10/2018.
////  Copyright © 2018 Ambroise Collon. All rights reserved.
////
//
//import Foundation
//
//protocol DisplayAlert {
//    func showAlert(message : String)
//}
//
class Count {

    // MARK: - Properties
    var stringNumbers: [String] = [String()]
    var operators: [String] = ["+"]
   // var displayAlertDelegate : DisplayAlert?
   // var squareRootFour = sqrt

    //
    var isExpressionCorrect: Bool {
        if let stringNumber = stringNumbers.last {
            if stringNumber.isEmpty {
                if stringNumbers.count == 1 {
                 // displayAlertDelegate?.showAlert(message: "Démarrer un nouveau calcul")
                } else {
                // displayAlertDelegate?.showAlert(message: "Entrez une expression correcte !")

                 }
                return false
            }
        }
        return true
    }
    //

    var canAddOperator: Bool {
        if let stringNumber = stringNumbers.last {
            if stringNumber.isEmpty {
            // displayAlertDelegate?.showAlert(message: "Expression incorrecte")
                return false
            }
        }
        return true
    }

    func plusAction() -> String  {
        if canAddOperator {
            operators.append("+")
            stringNumbers.append("")

        }
        return updateDisplay()
    }

    func minusAction() -> String  {
        if canAddOperator {
            operators.append("-")
            stringNumbers.append("")
        }
        return updateDisplay()
    }
//
    func squareAction() -> String {
         if canAddOperator {
            operators.append("√")
            stringNumbers.append("")
         }
        return updateDisplay()
    }

    // For Add Number

    func addNewNumber(_ newNumber: Int) -> String {
        if let stringNumber = stringNumbers.last {
            var stringNumberMutable = stringNumber
            stringNumberMutable += "\(newNumber)"
            stringNumbers[stringNumbers.count-1] = stringNumberMutable
        }
        return updateDisplay()
    }

    // Afficher le total (calculer)

    func calculateTotal() -> String {
        if !isExpressionCorrect {
            return ""
        }

        var total : Double = 0
        for (i, stringNumber) in stringNumbers.enumerated() {
            if let number = Double(stringNumber) {
                if operators[i] == "+" {
                    total += number
                } else if operators[i] == "-" {
                    total -= number
                } else if operators[i] == "√" {

                    //total = sqrt(number)
                }
            }
        }

       clear()
        return String(total)
    }

    //

    func updateDisplay() -> String {
        var text = ""
        for (i, stringNumber) in stringNumbers.enumerated() {
            // Add operator
            if i > 0 {
                text += operators[i]
            }
            // Add number
            text += stringNumber
        }
       return text
    }

    //

    func clear() {
        stringNumbers = [String()]
        operators = ["+"]
    }
}
