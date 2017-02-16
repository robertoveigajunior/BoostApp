//
//  ViewController.swift
//  BoostApp
//
//  Created by Usuário Convidado on 15/02/17.
//  Copyright © 2017 Fiap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtRegistration: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view2 = UIView(frame: CGRect(x: 0,
                                         y: 248,
                                         width: view.frame.size.width,
                                         height: 180))
        view2.backgroundColor = .red
        view2.clipsToBounds = true
        //view.addSubview(view2)
        
        let label1 = UILabel()
        label1.frame = CGRect(x: 0,
                              y: 10,
                              width: view2.frame.size.width,
                              height: 30)
        label1.textAlignment = .center
        label1.textColor = .white
        label1.text = "Dados Cadastrais"
        //view2.addSubview(label1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func registerStudent(_ sender: UIButton) {
        self.view.endEditing(true)
        let alert = UIAlertController(title: "Sucesso", message: "Cadastro com sucesso", preferredStyle: .actionSheet)
        let act0 = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(act0)
        present(alert, animated: true) { }
        performSegue(withIdentifier: "sgResult", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewC = segue.destination as! StudantViewController
        viewC.resultRegister = "Cadastro novo: \(self.txtName.text!)n \(self.txtEmail.text!)"
    }

}

