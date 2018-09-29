//
//  ViewController.swift
//  Internationalization
//
//  Created by CMR on 29/09/2018.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let monthCounts = [1, 2, 5]
        var message = ""
        monthCounts.forEach {
            let formatString = NSLocalizedString("You have sold 1000 apps in %d months", comment: "앱 1000개가 판매된 기간")
            let quantity = NumberFormatter.localizedString(from: 1000, number: .decimal)
            message += String.localizedStringWithFormat(formatString, quantity, $0) + "\n"
        }
        textView.text = message
    }
    
}

