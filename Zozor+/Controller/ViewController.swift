//
//  ViewController.swift
//  CountOnMe
//
//  Created by Ambroise COLLON on 30/08/2016.
//  Copyright © 2016 Ambroise Collon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var textView: UITextView!
    @IBOutlet var numberButtons: [UIButton]!
    let count = Count()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count.displayAlertDelegate = self
    }

    // MARK: - Action

    @IBAction func tappedNumberButton(_ sender: UIButton) {
        for (i, numberButton) in numberButtons.enumerated() {
            if sender == numberButton {
            textView.text = count.addNewNumber(i)
            }
        }
    }

    @IBAction func plus() {
        textView.text = count.plusAction()
    }

    @IBAction func minus() {
       textView.text = count.minusAction()
    }

    @IBAction func equal() {
        textView.text = count.calculateTotal()
    }
    
    @IBAction func squareRoot(_ sender: UIButton) {
        textView.text = count.squareAction()
      }
    


    // MARK: - Methods

    

   
  
}

extension ViewController: DisplayAlert {
    func showAlert(message: String) {
        let alertVC = UIAlertController(title: "Zéro!", message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }

}
