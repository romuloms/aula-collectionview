//
//  Americas.swift
//  AulaCollectionViewUFSManha
//
//  Created by Student on 26/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Paises {
    
    let nomePais: String
    let fotoPais: String
    
    init(nomePais: String, fotoPais: String) {
        
        self.nomePais = nomePais
        self.fotoPais = fotoPais
        
    }
    
}

class PaisesDAO {
    
    static func getList() -> [Paises] {
        
        return [
        
            Paises(nomePais: "Brasil", fotoPais: "brasil"),
            Paises(nomePais: "Argentina", fotoPais: "argentina"),
            Paises(nomePais: "Chile", fotoPais: "chile"),
            Paises(nomePais: "Colombia", fotoPais: "colombia"),
            Paises(nomePais: "Venezuela", fotoPais: "venezuela"),
            Paises(nomePais: "Uruguai", fotoPais: "uruguai"),
            Paises(nomePais: "Paraguai", fotoPais: "paraguai"),

        ]
        
    }
    
}
