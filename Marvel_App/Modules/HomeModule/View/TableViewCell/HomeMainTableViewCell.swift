//
//  MainTableViewCell.swift
//  Marvel_App
//
//  Created by eng-oday on 14/01/2024.
//

import UIKit

class HomeMainTableViewCell: UITableViewCell {
    @IBOutlet private weak var mainContainerView: UIView!
    @IBOutlet private weak var mainBackGroundImage: UIImageView!
    @IBOutlet private weak var tittleBackGroundImage: UIImageView!
    @IBOutlet private weak var tittleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
