//
//  ViewController.swift
//  Overlayer
//
//  Created by Knight on 22/8/2567 BE.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: Any) {
        let overLayer = OverLayerPopUp()
        overLayer.appear(sender: self)
    }
    
}

