//
//  ViewController.swift
//  tapper-game
//
//  Created by John Greathouse on 7/24/16.
//  Copyright © 2016 John Greathouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps = currentTaps + 1
     
        updateTapsLbl()
        
        if isGameOver() {
            restartGame()
        }
    
    }
    
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false

            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"

    }
    
    
    
    
    
    

}

