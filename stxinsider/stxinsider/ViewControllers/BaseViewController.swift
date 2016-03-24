//
//  BaseViewController.swift
//  stxinsider
//
//  Created by MK_STX on 24/03/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var controllerTitle: String? = ""
    var navbarVisible: Bool = true
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureGui()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = NSLocalizedString(controllerTitle != nil ? controllerTitle! : "", comment: "")
        navigationController?.setNavigationBarHidden(!navbarVisible, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: User Interface
    
    func configureGui() {

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
