//
//  ViewController.swift
//  XKColorfulMode
//
//  Created by kenneth on 12/06/2022.
//  Copyright (c) 2022 kenneth. All rights reserved.
//

import UIKit
import XKColorfulMode

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onPressedDisplay(_ sender: Any) {
        XKOverlayView.display()
    }
    
    @IBAction func onPressedColor(_ sender: Any) {
        XKOverlayView.setColor(.purple)
    }
    
    @IBAction func onPressedDismiss(_ sender: Any) {
        XKOverlayView.dismiss()
    }
    
}

