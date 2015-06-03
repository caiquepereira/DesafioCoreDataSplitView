//
//  Cliente.swift
//  DesafioCoreDataSplitView
//
//  Created by Caique de Paula Pereira on 03/06/15.
//  Copyright (c) 2015 Caique de Paula Pereira. All rights reserved.
//

import Foundation
import CoreData

class Cliente: NSManagedObject {

    @NSManaged var nome: String
    @NSManaged var dataDeNascimento: NSDate
    @NSManaged var foto: String
    @NSManaged var thumbnail: AnyObject
    @NSManaged var cliente_has_carro: NSSet

}
