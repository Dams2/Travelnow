//
//  TranslateViewController.swift
//  Travelnow
//
//  Created by Damien Rojo on 15/07/2019.
//  Copyright © 2019 Soa. All rights reserved.
//

import UIKit

class TranslateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var french: UILabel!
    @IBOutlet weak var frenchInput: UITextView!
    @IBOutlet weak var english: UILabel!
    @IBOutlet weak var englishResult: UITextView!
    @IBAction func translate(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
