//
//  LaunchViewController.swift
//  EditPhoto
//
//  Created by chitra on 8/9/17.
//  Copyright © 2017 chitra. All rights reserved.
//

import Foundation
import UIKit

class LaunchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pesentViewController()
    }
    
    func pesentViewController(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let baseNavigationController = storyBoard.instantiateViewController(withIdentifier: "BaseNavigationController")
        navigation = baseNavigationController as? BaseNavigationController
        APP_DELEGATE.window?.rootViewController = baseNavigationController
        let viewcontroller = storyBoard.instantiateViewController(withIdentifier:"ViewController")
        navigation?.pushViewController(viewcontroller, animated: true)
    }

}
