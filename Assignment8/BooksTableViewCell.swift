//
//  BooksTableViewCell.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

class BooksTableViewCell: UITableViewCell {

    static let identifier = "booksCell"
        
    @IBOutlet weak var booksImage: UIImageView!

    @IBOutlet weak var booksName: UILabel!
    
  
    @IBOutlet weak var booksAuthor: UILabel!

        
    static func nib() -> UINib {
            return UINib(nibName: "BooksTableViewCell", bundle: nil)
    }
        
        
    override func awakeFromNib() {
            super.awakeFromNib()
            
            selectionStyle = .none
    }

        

    func configure(_ image: UIImage, _ title: String, _ author: String, _ genre: String) {
                booksImage.image = image
                booksName.text = title
                booksAuthor.text = author
        }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
    }
}

