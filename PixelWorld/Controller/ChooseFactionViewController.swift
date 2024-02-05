//
//  ChooseFactionViewController.swift
//  PixelWorld
//
//  Created by Le Hoang Long on 05/02/2024.
//

import UIKit

class ChooseFactionViewController: UIViewController {

    @IBOutlet weak var armorLabel: UILabel!
    @IBOutlet weak var magicianLabel: UILabel!
    @IBOutlet weak var startGameButton: CustomButton!
    
    var character: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        magicianLabel.isUserInteractionEnabled = true
        magicianLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(magicianTapped)))
        
        armorLabel.isUserInteractionEnabled = true
        armorLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(armorTapped)))
        
        character = Character()
    }
    
    @objc func magicianTapped() {
        selectFactionName(name: "Magician")
    }
    
    @objc func armorTapped() {
        selectFactionName(name: "Armor")
    }
    
    func selectFactionName(name: String) {
        character.factionName = name
        startGameButton.isEnabled = true
    }
    
    @IBAction func onStartGamePressed(_ sender: Any) {
        performSegue(withIdentifier: "inGameSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let inGameVC = segue.destination as? InGameViewController {
            inGameVC.character = character
        }
    }
}
