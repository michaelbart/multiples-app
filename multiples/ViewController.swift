//
//  ViewController.swift
//  multiples
//
//  Created by Michael Bart on 11/2/15.
//  Copyright © 2015 CodeMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Variables
    var total = 0
    var newTotal = 0
    var multiple = 0
    
    // Outlets
    @IBOutlet weak var titleImg: UIImageView!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var pressAddText: UILabel!
    @IBOutlet weak var operationText: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    // Functions
    @IBAction func playBtnPressed(sender: UIButton!) {
        if inputField.text! != "" {
            titleImg.hidden = true
            playBtn.hidden = true
            inputField.hidden = true
            errorLabel.hidden = true
            
            addBtn.hidden = false
            pressAddText.hidden = false
            
            multiple = Int(inputField.text!)!
        } else {
            errorLabel.hidden = false
        }
        
    }

    @IBAction func addBtnPressed(sender: UIButton!) {
        pressAddText.hidden = true
        operationText.hidden = false
        updateTotal()
        
    }

    func updateTotal() {
        newTotal += multiple
        if newTotal >= 100 {
            newGame()
        } else {
            operationText.text = "\(total) + \(multiple) = \(newTotal)"
            total += multiple
        }
    }
    
    func newGame() {
        total = 0
        newTotal = 0
        multiple = 0
        inputField.text?.removeAll()
        
        titleImg.hidden = false
        playBtn.hidden = false
        inputField.hidden = false
        
        addBtn.hidden = true
        pressAddText.hidden = true
        operationText.hidden = true
    }
}

