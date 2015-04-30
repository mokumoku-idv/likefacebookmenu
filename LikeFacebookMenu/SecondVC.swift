//
//  SecondVCViewController.swift
//  LikeFacebookMenu
//
//  Created by 平塚 俊輔 on 2015/04/30.
//  Copyright (c) 2015年 平塚 俊輔. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var leftbutton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
