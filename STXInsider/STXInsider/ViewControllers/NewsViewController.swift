//
//  NewsViewController.swift
//  STXInsider
//
//  Created by MK_STX on 24/03/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import UIKit

class NewsViewController: BaseViewController {

    static let BlogUrl = "http://blog.stxnext.com"
    static let TwitterUrl = "https://twitter.com/STXNext"
    static let FacebookUrl = "https://www.facebook.com/StxNext"
    static let YouTubeUrl = "https://www.youtube.com/channel/UCI1AvU1piMZ80LXboJmRroQ"
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataSource: [NewsItem]?
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = createDataSource()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: User Interface
    
    override func configureGui() {
        super.configureGui()
        controllerTitle = "STXInsider"
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 285.0
    }
    
    // MARK: Data Management
    
    func createDataSource() -> [NewsItem] {
        var ds = [NewsItem]()
        
        var item = NewsItem(itemType:NewsItemType.Blog)
        item.image = UIImage(named: "blog")
        ds.append(item)
        item = NewsItem(itemType:NewsItemType.Twitter)
        item.image = UIImage(named: "twitter")
        ds.append(item)
        item = NewsItem(itemType:NewsItemType.Facebook)
        item.image = UIImage(named: "facebook")
        ds.append(item)
        item = NewsItem(itemType:NewsItemType.YouTube)
        item.image = UIImage(named: "youtube")
        ds.append(item)
        
        return ds
    }
    
    // MARK: UITableViewDataSource
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if dataSource != nil {
            return dataSource!.count
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "NewsItemCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! NewsItemCell
        
        let item = dataSource![indexPath.row]
        cell.itemImageView.image = item.image
        
        return cell
    }
    
    // MARK: UITableViewDelegate

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Tapped row \(indexPath.row)")
        
        let item = dataSource![indexPath.row]
        let type = item.itemType
        
        
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
