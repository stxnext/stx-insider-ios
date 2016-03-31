//
//  NewsItemCell.swift
//  STXInsider
//
//  Created by MK_STX on 31/03/16.
//  Copyright © 2016 stxnext. All rights reserved.
//

import UIKit

enum NewsItemType : Int {
    case Blog
    case Twitter
    case Facebook
    case YouTube
}

class NewsItem: NSObject {
    var image: UIImage?
    var itemType: NewsItemType
    
    init(itemType type: NewsItemType) {
        self.itemType = type
    }
}

class NewsItemCell: UITableViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
