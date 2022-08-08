//
//  ViewController.swift
//  UpDownGame
//
//  Created by Soo Jang on 2022/08/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var tappedNumLabel: UILabel!
    var comNum = Int.random(in: 1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        statusLabel.text = "choose your num"
        tappedNumLabel.text = ""
    }

    
    @IBAction func numButtonTapped(_ sender: UIButton) {
        guard let numString = sender.currentTitle else { return }
        tappedNumLabel.text = numString
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        statusLabel.text = "choose your num"
        tappedNumLabel.text = ""
        comNum = Int.random(in: 1...10)
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        guard let numString = tappedNumLabel.text else { return }
        guard let num = Int(numString) else { return}
        
        if comNum > num {
            statusLabel.text = "Up"
        } else if comNum < num {
            statusLabel.text = "Down"
        } else {
            statusLabel.text = "Bingo"
        }
    }
}

