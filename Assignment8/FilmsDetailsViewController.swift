//
//  FilmsDetailsViewController.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

class FilmsDetailsViewController: UIViewController {
    
    var film: Film!

    @IBOutlet weak var filmsImage: UIImageView!
    
    @IBOutlet weak var filmsName: UILabel!
    
    
    @IBOutlet weak var filmsDirector: UILabel!
   
    
    @IBOutlet weak var filmsGenre: UILabel!
    
    
    @IBOutlet weak var filmsYear: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmsImage.image = film.image
        filmsName.text = film.title
        filmsDirector.text = film.director
        filmsGenre.text = film.genre
        filmsYear.text = String(film.year)

        // Do any additional setup after loading the view.
    }
    
}
