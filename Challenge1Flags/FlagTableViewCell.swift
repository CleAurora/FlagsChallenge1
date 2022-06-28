//
//  FlagTableViewCell.swift
//  Challenge1Flags
//
//  Created by Cleís Aurora Pereira on 24/06/22.
//

import UIKit

class FlagTableViewCell: UITableViewCell {

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

    var flag: Flag? {
        didSet {
            guard let flagItem = flag else {return}
            if let name = flagItem.name {
                nameLabel.text = name
            }

            if let image = flagItem.image {
                flagImageView.image = UIImage(named: image)
            }
        }
    }

    override init(style:UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(flagImageView)

        flagImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        flagImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10).isActive = true
        flagImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        flagImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true

        nameLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.flagImageView.trailingAnchor, constant: 10).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    let flagImageView: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 4
        img.layer.borderWidth = 1
        img.layer.borderColor = .init(genericCMYKCyan: 1, magenta: 0, yellow: 0, black: 1, alpha: 1)
        img.clipsToBounds = true

        return img
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

}
