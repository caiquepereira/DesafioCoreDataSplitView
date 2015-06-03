//
//  Cliente.swift
//  DesafioCoreDataSplitView
//
//  Created by Caique de Paula Pereira on 03/06/15.
//  Copyright (c) 2015 Caique de Paula Pereira. All rights reserved.
//


import UIKit
import CoreData

@objc(Cliente)
class Cliente: NSManagedObject {

    @NSManaged var nome: String
    @NSManaged var dataDeNascimento: NSDate
    @NSManaged var foto: String?
    @NSManaged var thumbnail: UIImage
    @NSManaged var cliente_has_carro: NSSet



    func setThumbnailFrom(image: UIImage?){
        if let i = image {
            let newRect = CGRect(x: 0, y: 0, width: 70, height: 70)
            
            let ratio = max(newRect.height, i.size.height, newRect.width, i.size.width)
            
            UIGraphicsBeginImageContextWithOptions(newRect.size, false, 0)
            
            let path = UIBezierPath(roundedRect: newRect, cornerRadius: 10)
            path.addClip()
            
            var projectRect = CGRect()
            projectRect.size.width = ratio * i.size.width
            projectRect.size.height = ratio * i.size.height
            projectRect.origin.x = (newRect.size.width - projectRect.size.width) / 2
            projectRect.origin.y = (newRect.size.height - projectRect.size.height) / 2
            
            i.drawInRect(projectRect)
            
            let smallImage = UIGraphicsGetImageFromCurrentImageContext()
            self.thumbnail = smallImage
            
            UIGraphicsEndImageContext()
            
            
        }
        
        
    }















}
