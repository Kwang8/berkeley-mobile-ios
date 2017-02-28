//
//  ViewController.swift
//  berkeleyMobileiOS
//
//  Created by Akilesh Bapu on 10/9/16.
//  Copyright © 2016 org.berkeleyMobile. All rights reserved.
//

import UIKit
import Material
class LaunchViewController: UIViewController 
{
    @IBOutlet weak var centerYLabel: NSLayoutConstraint!
    
    
    override func viewDidAppear(_ animated: Bool) {
        self.centerYLabel.constant = 0
        UIView.animate(withDuration: 1.2, animations: {
            self.view.layoutIfNeeded()
        })
        _ = Timer.scheduledTimer(timeInterval: 2, target:self, selector: #selector(LaunchViewController.presentMainViewController), userInfo: nil, repeats: false)
    }
    
    //After launch animation, present the actual workflow. All tabs should be in this init statement.
    func presentMainViewController() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        var viewControllers: [UIViewController] = ResourceType.allValues.map
        { (_ type: ResourceType) -> ResourceNavigationController in 
        
            let vc = storyboard.instantiateViewController(withIdentifier: "ResourceNavigationController") as! ResourceNavigationController
            vc.setData(type)
            return vc
        }
        
        viewControllers.append( storyboard.instantiateViewController(withIdentifier: "beartransitNav") )
        
        let indexViewController: UIViewController  = TabBarController(viewControllers: viewControllers, selectedIndex: 0)
        indexViewController.modalTransitionStyle = .crossDissolve
        
        self.present(indexViewController, animated: true, completion: nil)
    }
}
