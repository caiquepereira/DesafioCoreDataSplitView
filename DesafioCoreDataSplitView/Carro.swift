//
//  Carro.swift
//  DesafioCoreDataSplitView
//
//  Created by Caique de Paula Pereira on 03/06/15.
//  Copyright (c) 2015 Caique de Paula Pereira. All rights reserved.
//

import Foundation
import CoreData

class Carro: NSManagedObject {

    @NSManaged var modelo: String
    @NSManaged var cor: String
    @NSManaged var anoModelo: NSDate
    @NSManaged var anoFabricacao: NSDate
    @NSManaged var carro_has_cliente: Cliente

}
