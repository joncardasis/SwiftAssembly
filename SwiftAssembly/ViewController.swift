//
//  ViewController.swift
//  SwiftAssembly
//
//  Created by Cardasis, Jonathan (J.) on 12/14/16.
//  Copyright © 2016 Jonathan Cardasis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let obj = ObjC_Class()
        print(obj.add(5, b: 10))
        
        #if DEBUG
            print("debugging")
        #endif
        
        #if INTEL
            print("x86 FLAG ON")
        #endif
        
        #if ARCH_ARM64
            print("ARM FLAG ON")
        #endif
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

