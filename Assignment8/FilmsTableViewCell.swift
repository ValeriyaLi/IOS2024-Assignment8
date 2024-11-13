//
//  FilmsTableViewCell.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

class FilmsTableViewCell: UITableViewCell {

    static let identifier = "filmsCell"
        
    @IBOutlet weak var filmImage: UIImageView!
    
    @IBOutlet weak var filmName: UILabel!
    
    @IBOutlet weak var filmGenre: UILabel!
    
    static func nib() -> UINib {
            return UINib(nibName: "FilmsTableViewCell", bundle: nil)
    }
        
        
    override func awakeFromNib() {
            super.awakeFromNib()
            
            selectionStyle = .none
    }

        

    func configure(_ image: UIImage, _ name: String, _ director: String, _ genre: String) {
                filmImage.image = image
                filmName.text = name
        filmGenre.text = genre
//                bookAuthor.text = author
        }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
    }
    
}
