//
//  ViewController.swift
//  PublicoPrivadoEjemplo
//
//  Created by Vanesa Korbenfeld on 12/10/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalVIew: UILabel!
    @IBOutlet weak var buttonView: UIButton!
    @IBOutlet weak var salaryView: UITextField!
    let calculadoraDeGanancias = CalculadoraDeGanancias()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onButtonPressed(_ sender: Any) {
        let salary = Double(salaryView.text!)!
        let resultado = calculadoraDeGanancias.descontarGanancias(salary: salary)

        totalVIew.text = String(resultado)
    }
}

class CalculadoraDeGanancias {
    func descontarGanancias(salary: Double) -> Double {
        return salary * 0.80
    }
}
