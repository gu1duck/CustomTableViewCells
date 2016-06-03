//
//  Email.swift
//  BadEmail
//
//  Created by Jeremy Petter on 2016-06-02.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class Email: NSObject {

    let senderImage: UIImage
    let senderName: String
    let body: String

    init(senderImage: UIImage, senderName: String, body: String) {
        self.senderImage = senderImage
        self.senderName = senderName
        self.body = body
    }
}
