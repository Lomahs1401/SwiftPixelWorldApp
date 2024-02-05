//
//  ViewController.swift
//  PixelWorld
//
//  Created by Le Hoang Long on 04/02/2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var welcomeBg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImage.frame = CGRect(x: view.frame.size.width / 2 - logoImage.frame.size.width / 2, y: 50, width: logoImage.frame.size.width, height: logoImage.frame.size.height)
        
//        welcomeBg.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        welcomeBg.frame = view.frame
    }
    
    @IBAction func fromChooseFactionWithSegue(segue: UIStoryboardSegue) {
        
    }


}

