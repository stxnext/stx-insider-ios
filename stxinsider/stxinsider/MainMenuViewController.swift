//
//  MainMenuViewController.swift
//  stxinsider
//
//  Created by MK_STX on 23/03/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import UIKit

enum MainMenuItem : Int {
    case Portfolio = 100
    case Teams = 200
    case Events = 300
    case Office = 400
    case News = 500
}

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var itemsCollection: [UIImageView]!
    
    @IBOutlet weak var itemWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerWidthConstraint: NSLayoutConstraint!
    
    static let Margin : CGFloat = 10.0
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureGui()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: User Interface
    
    func configureGui() {
        adjustWidth()
        provideViewsWithRecognizers(itemsCollection)
        setTagsForViews(itemsCollection)
    }
    
    func adjustWidth() {
        let screenWidth = self.view.frame.size.width
        itemWidthConstraint.constant = screenWidth - 2 * MainMenuViewController.Margin
        headerWidthConstraint.constant = screenWidth
        self.view.layoutIfNeeded()
    }
    
    func provideViewsWithRecognizers(views: [UIView]) {
        for view in views {
            view.userInteractionEnabled = true
            let recognizer = UITapGestureRecognizer(target: self, action: "handleTap:")
            view.addGestureRecognizer(recognizer)
        }
    }
    
    func setTagsForViews(views: [UIView]) {
        for i in 0..<views.count {
            views[i].tag = (i + 1) * 100
        }
    }
    
    // MARK: Actions
    
    func handleTap(recognizer: UITapGestureRecognizer) {
        print("Action Performed: \(recognizer.view!.tag)")
        
        guard let currentTag = MainMenuItem(rawValue: recognizer.view!.tag) else {
            return
        }
        
        var segueId : String?
        
        switch currentTag {
        case .Portfolio:
            segueId = "PortfolioSegue"
            break
        case .Teams:
            break
        case .Events:
            break
        case .Office:
            break
        case .News:
            break
        }
        
        guard segueId != nil else {
            return
        }
        
        performSegueWithIdentifier(segueId!, sender: nil)
    }
    
    // MARK: Navigation
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
    }
}
