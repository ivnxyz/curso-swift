//
//  ViewController.swift
//  calculadora
//
//  Created by Iván Martínez on 30/11/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Atributos
    
    @IBOutlet weak var valor1TextField: UITextField!
    @IBOutlet weak var valor2TextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    // MARK: - ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumar(_ sender: Any) {
        let valor1 = Int(valor1TextField.text!)!
        let valor2 = Int(valor2TextField.text!)!
        
        resultadoLabel.text = "\(valor1 + valor2)"
    }
    
    @IBAction func restar(_ sender: Any) {
        let valor1 = Int(valor1TextField.text!)!
        let valor2 = Int(valor2TextField.text!)!
        
        resultadoLabel.text = "\(valor1 - valor2)"
    }
    
    @IBAction func multiplicar(_ sender: Any) {
        let valor1 = Int(valor1TextField.text!)!
        let valor2 = Int(valor2TextField.text!)!
        
        resultadoLabel.text = "\(valor1 * valor2)"
    }
    
    @IBAction func dividir(_ sender: Any) {
    }
    
}

