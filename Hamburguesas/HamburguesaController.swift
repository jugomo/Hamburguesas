//
//  HamburguesaController.swift
//  Hamburguesas
//
//  Created by Julio on 3/12/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import UIKit

class HamburguesaController: UIViewController {
    
    let paises = ColeccionDePaises()
    
    let hamburguesas = ColeccionDeHamburguesa()
    
    let colors: [UIColor] = [UIColor.blueColor(), UIColor.brownColor(), UIColor.cyanColor(), UIColor.greenColor(), UIColor.magentaColor(), UIColor.orangeColor(), UIColor.purpleColor(), UIColor.redColor(), UIColor.yellowColor()]
    
    @IBOutlet weak var pais: UILabel!
    
    @IBOutlet weak var hamburguesa: UILabel!
    
    @IBAction func buttonPress(sender: AnyObject) {
        let pos = Int(arc4random_uniform(UInt32(colors.count)))
        print("Color: \(pos)")
        self.view.backgroundColor = colors[pos]
        pais.text = paises.obtenPais()
        hamburguesa.text = hamburguesas.obtenHamburguesa()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = colors[Int(arc4random_uniform(UInt32(colors.count)))]
        pais.text = paises.obtenPais()
        hamburguesa.text = hamburguesas.obtenHamburguesa()
    }
}

