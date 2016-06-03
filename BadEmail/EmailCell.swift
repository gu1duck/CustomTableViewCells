//
//  EmailCell.swift
//  BadEmail
//
//  Created by Jeremy Petter on 2016-06-02.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class EmailCell: UITableViewCell {

    @IBOutlet weak var senderImageView: UIImageView!

    @IBOutlet weak var senderNameTextField: UILabel!

    @IBOutlet weak var bodyLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
