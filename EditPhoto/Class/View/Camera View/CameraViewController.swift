//
//  CameraViewController.swift
//  EditPhoto
//
//  Created by chitra on 8/3/17.
//  Copyright © 2017 chitra. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class CameraViewController: UIViewController {
    
    var cameraManager : CameraManager?
    
    override func viewDidLoad()
    {
        print("hmm")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if (cameraManager != nil) {
            cameraManager = CameraManager()
        }
        
    }
  
  
    
}
