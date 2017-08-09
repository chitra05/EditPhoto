//
//  ViewController.swift
//  EditPhoto
//
//  Created by chitra on 8/3/17.
//  Copyright © 2017 chitra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cameraButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func tapToCamera(_ sender: UIButton) {
        
        let viewController = CameraViewController(nibName:"CameraViewController", bundle:nil)
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }


}

