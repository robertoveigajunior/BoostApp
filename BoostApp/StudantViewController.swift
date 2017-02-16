//
//  StudantViewController.swift
//  BoostApp
//
//  Created by Usuário Convidado on 15/02/17.
//  Copyright © 2017 Fiap. All rights reserved.
//

import UIKit

class StudantViewController: UIViewController {

    var resultRegister: String?
    
    @IBOutlet weak var lbResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let result = self.resultRegister {
            self.lbResult.text = result
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
