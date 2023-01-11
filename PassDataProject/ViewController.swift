//
//  ViewController.swift
//  PassDataProject
//
//  Created by Дмитрий Яковлев on 11.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextFiled: UITextField!
    
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
        
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true

    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        resultLabel.isHidden = false
        
        guard let svc = segue.source as? SecondViewController else {return}
        self.resultLabel.text = svc.label.text
        
        
    }
    
   
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTextFiled.text
        
    }
        
        
        }
            
    



