//
//  AmericasCollectionViewController.swift
//  AulaCollectionViewUFSManha
//
//  Created by Student on 26/09/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit


class AmericasCollectionViewController: UICollectionViewController {

    var paises = [Paises]()
    var selectedIndex: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        paises = PaisesDAO.getList()
        
        
       
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return paises.count
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if let paisesCell = collectionView.dequeueReusableCell(withReuseIdentifier: "paises", for: indexPath) as? AmericasCollectionViewCell {
            
            let pais = paises[indexPath.row]
            
            paisesCell.fotoPaisImageView.image = UIImage(named: pais.fotoPais)
            
            if selectedIndex == indexPath {
                
                paisesCell.nomePaisLabel.text = pais.nomePais

            } else {
                
                paisesCell.nomePaisLabel.text = ""
                
            }

            cell = paisesCell
            
        }
        
        return cell
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedIndex = indexPath
        collectionView.reloadData()
        
    }

}
