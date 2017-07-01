//
//  ViewController.swift
//  UIKITSWIFT
//
//  Created by Usuário Convidado on 01/07/17.
//  Copyright © 2017 Heider Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let TIPO_VEICULO_MOTO = 0;
    let TIPO_VEICULO_CARRO = 1;
    let TIPO_VEICULO_SUV = 2;
    
    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var lblKM: UILabel!

    @IBOutlet weak var lblRota: UILabel!
    
    
    
    @IBAction func salvar(_ sender: UIButton) {
        
        var msg:String
        var tipo:String
        
        tipo = meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!
        msg = "Veículo \(tipo) do ano \(lblAno.text!) salvo com sucesso!"
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
 
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func escolherRota(_ sender: UIButton) {
        
        let alerta = UIAlertController(
            title: "Forma para receber a rota do veículo",
            message: "Faça a sua escolha",
            preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertActionStyle.default,
            handler: {action in self.lblRota.text = action.title}))
        
        alerta.addAction(UIAlertAction(
            title: "E-mail",
            style: UIAlertActionStyle.default,
            handler: {action in self.lblRota.text = action.title}))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertActionStyle.cancel,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func testarSwitch(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    
    @IBAction func verificaValorStepper(_ sender: UIStepper) {
        lblAno.text = "\(Int(sender.value))"
    }
    
    @IBAction func verificarSlider(_ sender: UISlider) {
        lblKM.text = "\(sender.value)"
    }
    
    @IBAction func trocaTipoVeiculo(_ sender: Any) {
        
        print("Você escolheu o veículo \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)")
        
        switch meuSegmento.selectedSegmentIndex {
        
        case TIPO_VEICULO_MOTO:
            break
            
        case TIPO_VEICULO_CARRO:
            
            break
            
        case TIPO_VEICULO_SUV:
            
            break
        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAno.text = "1980"
        lblKM.text = "7500"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

