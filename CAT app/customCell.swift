//
//  customCell.swift
//  CAT app
//
//  Created by Jason Crawford on 7/12/16.
//  Copyright © 2016 Jason Crawford. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var firstLabelView: UILabel!
    
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var secondLabelView: UILabel!
    
    @IBOutlet weak var secondHeightConstraint: NSLayoutConstraint!
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var showsDetails = false {
        didSet {
            secondHeightConstraint.priority = showsDetails ? 250 : 999
        }
    }

}
