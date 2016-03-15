//
//  FirstViewController.swift
//  stxinsider
//
//  Created by Bartosz Kosarzycki on 3/14/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import UIKit
import QuartzCore

class FirstViewController: UIViewController {

    @IBOutlet weak var portfolioWidthContraint: NSLayoutConstraint!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let screenSize = self.view.frame
        let width = screenSize.width
        portfolioWidthContraint.constant=width - 20
        
        scrollView.scrollEnabled = true
        //self.scrollView.contentSize.width = width - 20;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

