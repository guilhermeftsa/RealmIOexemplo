//
//  ViewController.swift
//  RealmIOExample
//
//  Created by administrador on 13/07/2018.
//  Copyright © 2018 administrador. All rights reserved.
//
import UIKit
import Realm
import RealmSwift

class Aluno: RLMObject{
    var matricula: String? = ""
    var senha: String? = ""
}

class ViewController: UIViewController {
    
    @IBAction func clicarBotao(_ sender: Any) {
        let aluno = Aluno()
        aluno.matricula = MatriculaTF.text
        aluno.senha = SenhaTF.text
        let realm = try! Realm()
        try! realm.write{
            realm.add(aluno)
        }
    }
    
    @IBOutlet var TelaLogin: UIView!
   
    @IBOutlet weak var botaoEntrar: UIButton!
    @IBOutlet weak var SenhaTF: UITextField!
    @IBOutlet weak var MatriculaTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.TelaLogin.backgroundColor = .cyan
        self.botaoEntrar.layer.cornerRadius = self.botaoEntrar.frame.height / 2
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

