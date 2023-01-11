//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Дмитрий Яковлев on 11.01.2023.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else {return}
        label.text = "Hello, \(login)"
        

    }
    

    
    @IBOutlet weak var goBackTapped: UIButton!
    
    

}
