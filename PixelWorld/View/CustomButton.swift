//
//  CustomButton.swift
//  PixelWorld
//
//  Created by Le Hoang Long on 04/02/2024.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 8
        layer.backgroundColor = UIColor.black.withAlphaComponent(0.4).cgColor
    }
}
