//
//  TeamDetailsViewController.swift
//  stxinsider
//
//  Created by MK_STX on 24/03/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import UIKit

class TeamDetailsViewController: BaseViewController {

    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: User Interface
    
    override func configureGui() {
        super.configureGui()
        controllerTitle = "Team description"
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
