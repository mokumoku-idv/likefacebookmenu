//
//  ViewController.swift
//  LikeFacebookMenu
//
//  Created by 平塚 俊輔 on 2015/04/28.
//  Copyright (c) 2015年 平塚 俊輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftbutton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        if self.revealViewController() != nil {
            leftbutton.target = self.revealViewController()
            leftbutton.action = Selector("revealToggle:")
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

