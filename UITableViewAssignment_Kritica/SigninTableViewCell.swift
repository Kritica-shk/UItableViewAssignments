//
//  SigninTableViewCell.swift
//  UITableViewAssignment_Kritica
//
//  Created by EKbana on 19/09/2022.
//

import UIKit

class SigninTableViewCell: UITableViewCell {

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        contentView.setNeedsDisplay()
//        contentView.layoutIfNeeded()
//        // Initialization code
//    }
////
////    override func setSelected(_ selected: Bool, animated: Bool) {
////        super.setSelected(selected, animated: animated)
////
////        // Configure the view for the selected state
////    }
//    static let identifier = "SigninTableViewCell"
//    @IBOutlet weak var signInIcon: UIImageView!
//    @IBOutlet weak var signInName: UILabel!
//
//    static func nib() -> UINib {
//        return UINib(nibName: "SigninTableViewCell", bundle: nil)
//    }
//
//    func set(item: Mobbrand) {
//        signInIcon.image = item.image ?? UIImage(named: "account")
//       // signInName.text = item.brand
//        contentView.backgroundColor = .yellow
//        signInIcon.backgroundColor = .brown
//    }
//
//
//
    
    static let identifier = "SigninTableViewCell"
    
        static func nib() -> UINib {
            return UINib(nibName: "SigninTableViewCell", bundle: nil)
        }
    
    private lazy var curveImage: UIImageView = {

        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = .accountIcon
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .white
        return image
    }()

    
    private(set) lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign in to your iPhone"
        label.textColor = UIColor.blue
        label.font = label.font.withSize(20)
        return label
    }()
    
    private(set) lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Set up i9Cloud, the App Store, and more."
        label.font = label.font.withSize(15)
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareLayout() {
        contentView.addSubview(curveImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subTitleLabel)
        
        NSLayoutConstraint.activate([
            curveImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            curveImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            curveImage.heightAnchor.constraint(equalToConstant: 50),
            curveImage.widthAnchor.constraint(equalToConstant: 50),
            
            titleLabel.leadingAnchor.constraint(equalTo: curveImage.trailingAnchor, constant: 8),
            titleLabel.centerYAnchor.constraint(equalTo: curveImage.centerYAnchor, constant: 0),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            subTitleLabel.leadingAnchor.constraint(equalTo: curveImage.trailingAnchor, constant: 8),
        ])
    }
    
}


