//
//  CustomTableViewCell.swift
//  UITableViewAssignment_Kritica
//
//  Created by EKbana on 16/09/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    func set(item: Mobbrand) {
        iconImageView.image = item.image
        label.text = item.brand
    }

}
