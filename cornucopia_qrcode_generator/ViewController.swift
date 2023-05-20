//
//  ViewController.swift
//  cornucopia_template
//
//  Created by shayanbo on 2023/5/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            if let clazz = NSClassFromString("qrcode_generator.EntryController") as? UIViewController.Type {
                let controller = clazz.init()
                self.present(controller, animated: true)
            }
        }
    }


}

