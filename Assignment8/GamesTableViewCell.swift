//
//  GamesTableViewCell.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

class GamesTableViewCell: UITableViewCell {
    
    static let identifier = "gamesCell"
    
    
    @IBOutlet weak var gamesImage: UIImageView!
    

    @IBOutlet weak var gamesName: UILabel!
    
    
    @IBOutlet weak var gamesCompany: UILabel!
    
    
    
    static func nib() -> UINib {
            return UINib(nibName: "GamesTableViewCell", bundle: nil)
    }
        
        
    override func awakeFromNib() {
            super.awakeFromNib()
            
            selectionStyle = .none
    }

        

    func configure(_ image: UIImage, _ title: String, _ company: String, _ platform: String) {
            gamesImage.image = image
            gamesName.text = title
            gamesCompany.text = company
        }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
    }
    
}
