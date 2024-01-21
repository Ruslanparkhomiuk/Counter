//
//  ViewController.swift
//  Counter
//
//  Created by Руслан Пархомюк on 21.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var counter: Int = 0
    let currentDate = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .short)
    
   @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var historyTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "значение счетчика: 0"
        historyTextView.text = "история изменений:"
        
        // Do any additional setup after loading the view.
    }
   
    @IBAction func increase() {
         counter += 1
        countLabel.text = "значение счетчика: \(counter)"
        historyTextView.text.append("\(currentDate): значение измененно на +1 ")
        }
    
    
    @IBAction func decrease() {
        if counter > 0 {
            counter -= 1
            countLabel.text = "значение счетчика: \(counter)"
            historyTextView.text.append("\(currentDate) значение измененно на -1")

        } else {
            historyTextView.text.append("\(currentDate): опытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction func resetButton() {
        counter = 0
        countLabel.text = "значение счетчика: \(counter)"
        historyTextView.text.append("\(currentDate): значение сброшено")
    }
    
//    func scrollTextView() {
//        let range = NSRange(location: historyTextView.text.count - 1, length: 0)
//        historyTextView.scrollRangeToVisible(range)
//    }
}

