//
//  GamesDetailsViewController.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

class GamesDetailsViewController: UIViewController {
    
    var game: Game!
    
    
    @IBOutlet weak var gamesImage: UIImageView!
    
    @IBOutlet weak var gamesName: UILabel!
    
    
    @IBOutlet weak var gamesComapny: UILabel!
    
    
    @IBOutlet weak var gamesPlatform: UILabel!
    
    
    @IBOutlet weak var gamesYear: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gamesImage.image = game.image
        gamesName.text = game.title
        gamesComapny.text = game.company
        gamesPlatform.text = game.platform
        gamesYear.text = String(game.Year)
    }
}
