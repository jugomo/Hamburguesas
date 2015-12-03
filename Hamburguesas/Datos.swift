//
//  Datos.swift
//  Hamburguesas
//
//  Created by Julio on 3/12/15.
//  Copyright © 2015 Julio. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    let paises: [String] = ["Alemania","Belgica","Dinamarca","España","Francia",
                            "Grecia","Holanda","Irlanda","Italia","Luxemburgo",
                            "Portugal","Reino Unido","Suiza","Suecia","Mexico",
                            "Brasil","Argentina","Uruguay","Chile","Panamá"]

    func obtenPais() -> String {
        let pos = Int(Int(arc4random_uniform(UInt32(paises.count))))
        print("Pais: \(pos)")
        return paises[pos ]
    }
}

class ColeccionDeHamburguesa {
    // fuente: http://www.hamburguesanostra.com/tipos-hamburguesa-diferentes
    let hamburguesas: [String] = ["Española","Argentina","Ternera","Raza Nostra","Deportista",
                                  "De pueblo","Barbacoa","Bacon","Madrid","Parmigiano",
                                  "Ranchera","Ibérica","A la antigua","Roquefort","Cebolla pochada",
                                  "Transilvania","Americana","Juan Pozuelo","4 Quesos","Ternera blanca"]
    
    func obtenHamburguesa() -> String {
        let pos = Int(arc4random_uniform(UInt32(hamburguesas.count)))
        print("Ham: \(pos)")
        return hamburguesas[pos]
    }
}
