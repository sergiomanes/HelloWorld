//
//  ViewController.swift
//  HelloWorldProject
//
//  Created by Sergio Daniel Manes on 7/9/17.
//  
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var labelHello: UILabel!
    
    
    @IBOutlet var textName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //inicializo mis labels necesarios a ""
        labelHello.text = ""
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BottomPressed(_ sender: UIButton) {
        
        //creo la alerta
        let alertController : UIAlertController = UIAlertController(title: "Saludo", message: "Hola mundo!", preferredStyle: UIAlertControllerStyle.alert)
        
        //creo un boton
        let okAction : UIAlertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        //agrego boton a la alerta
        alertController.addAction(okAction)
        
        //Muestro la alerta
        present(alertController, animated: true, completion: nil)
 
        let name = textName.text!
        labelHello.text="\(name) ¡Que tengas buen día! :)"
    }

}

