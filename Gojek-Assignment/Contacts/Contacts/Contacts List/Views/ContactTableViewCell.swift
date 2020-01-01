//
//  ContactTableViewCell.swift
//  Contacts
//
//  Created by Mahender Reddy Gaddam on 12/14/19.
//  Copyright © 2019 Mahender Reddy Gaddam. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var favoriteImageView: UIImageView!
    
    static let identifier = "ContactTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        makeImageViewCircle()
    }
    
    func makeImageViewCircle() {
        self.contactImageView.layer.cornerRadius = self.contactImageView.frame.size.width/2
        self.contactImageView.clipsToBounds = true
    }
    
    func configure(contact: Contact) {
        contactImageView.image = contact.profileImage ??
            UIImage(named: "missing")!
        contactName.text = contact.firstName! + " " + contact.lastName!
        favoriteImageView.isHidden = !contact.favorite
        favoriteImageView.image = UIImage(named: "HomeFavourite")
    }
}
