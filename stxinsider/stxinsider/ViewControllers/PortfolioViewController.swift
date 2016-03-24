//
//  PortfolioViewController.swift
//  STXInsider
//
//  Created by MK_STX on 23/03/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import UIKit

class PortfolioViewController: BaseViewController {

    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: User Interface
    
    override func configureGui() {
        super.configureGui()
        controllerTitle = "Portfolio"
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
