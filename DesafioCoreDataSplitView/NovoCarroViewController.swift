//
//  NovoCarroViewController.swift
//  DesafioCoreDataSplitView
//
//  Created by Caique de Paula Pereira on 03/06/15.
//  Copyright (c) 2015 Caique de Paula Pereira. All rights reserved.
//

import UIKit

class NovoCarroViewController: UIViewController {

    @IBOutlet weak var txtFieldModelo: UITextField!
    
    @IBOutlet weak var txtFieldCor: UITextField!
    
    @IBOutlet weak var txtFieldAnoModelo: UITextField!
    
    @IBOutlet weak var txtFieldAnoFabricacao: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
        self.tabBarController?.tabBar.hidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addNovoCarro(sender: AnyObject) {
        println("Novo carro salvo")
        navigationController?.popViewControllerAnimated(true)
        
        
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
