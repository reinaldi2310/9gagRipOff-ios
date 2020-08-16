//
//  TableViewCell.swift
//  9gagRipOff
//
//  Created by User on 12/08/20.
//  Copyright © 2020 User. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var postImage: UIImageView!
    @IBOutlet var likesLabel: UILabel!
    @IBOutlet var commentsLabel: UILabel!
    
    static let identifier = "TableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    public func configure(object: Post){
        self.userImage.image = UIImage(named: object.userImage)
        self.userNameLabel.text = "\(object.userName)"
        self.postImage.image = UIImage(named: object.postImage)
        self.likesLabel.text = "\(object.numOfLikes) Likes"
        self.commentsLabel.text = "\(object.numOfComments) Comments"
    }
    
}
