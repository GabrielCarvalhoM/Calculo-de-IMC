//
//  ViewController.swift
//  IMCStr
//
//  Created by Gabriel de carvalho on 09/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbWeight: UITextField!
    @IBOutlet weak var ViResult: UIView!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var lbHeight: UITextField!
    
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func buttonCalc(_ sender: Any) {
        
        if let weight = Double(lbWeight.text!), let height = Double(lbHeight.text!) {
            
             imc = weight / pow(height, 2)
            showResult()
        }
    }
    func showResult() {
        var result = ""
        var image = ""
        
        switch imc {
        case 0..<16:
            result = "magreza"
            image = "magreza"
        case 16..<18.5:
            result = "Abaixo do peso"
            image = "abaixo"
        case 18.5..<25:
            result = "Peso ideal"
            image = "ideal"
        case 25..<30:
            result = "Sobrepeso"
            image = "sobre"
        default:
            result = "Obesidade"
            image = "obesidade"
       
        }
        
        lbResult.text = "\(Int(imc)):\(result)"
        ivResult.image = UIImage(named: image)
        ViResult.isHidden = false
        view.endEditing(true)
    }
}
        
        

    
    



