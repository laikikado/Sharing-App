//
//  ViewController.swift
//  ShareMe
//
//  Created by Paul Colombier on 10/08/2019.
//  Copyright © 2019 Paul Colombier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ui_errorLabel: UILabel!
    @IBOutlet weak var ui_ShareTextView: UITextView!
    
    @IBAction func shareTypedText() {
        let typedText:String = ui_ShareTextView.text
        if typedText.count > 0 {
            let shareViewController = UIActivityViewController(activityItems: [typedText], applicationActivities: nil)
            present(shareViewController, animated: true, completion: nil)
            ui_errorLabel.text = ""
        } else {
            ui_errorLabel.text = "Aucun message n'a été saisi"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

