//
//  FilmsViewController.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

struct Film {
    let title: String
    let image: UIImage
    let director: String
    let genre: String
    let year: Int
}
                

class FilmsViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let films: [Film] = [
        Film(title: "The Substance", image: UIImage(named: "subs")!, director: "Coralie Fargeat", genre: "Horror", year: 2024),
        Film(title: "Joker", image: UIImage(named: "joker")!, director: "Todd Phillips", genre: "Horror", year: 2024),
        Film(title: "Anora", image: UIImage(named: "anora")!, director: "Sean Baker", genre: "Comedy", year: 2024),
        Film(title: "Woman of the Hour", image: UIImage(named: "woman")!, director: "Anna Kendrick", genre: "Drama", year: 2024),
        Film(title: "Time Cut", image: UIImage(named: "time")!, director: "Hannah Macpherson", genre: "Horror", year: 2024),
        Film(title: "The Wild Robot", image: UIImage(named: "robot")!, director: "Chris Sanders", genre: "Animation", year: 2024),
        Film(title: "Don't Move", image: UIImage(named: "move")!, director: "Adam Schindler", genre: "Horror", year: 2024),
        Film(title: "We Live in Time", image: UIImage(named: "live")!, director: "John Crowley", genre: "Romance", year: 2024),
        Film(title: "Singham Again", image: UIImage(named: "again")!, director: "Rohit Shetty", genre: "Action", year: 2024),
        Film(title: "longlegs", image: UIImage(named: "long")!, director: "Osgood Perkins", genre: "Horror", year: 2024)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(FilmsTableViewCell.nib(), forCellReuseIdentifier: FilmsTableViewCell.identifier)
    }
}

extension FilmsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        films.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        let cell = tableView.dequeueReusableCell(withIdentifier: FilmsTableViewCell.identifier, for: indexPath) as! FilmsTableViewCell
            
            let film = films[indexPath.row]
            
            
        cell.configure( film.image, film.title, film.director, film.genre)
            
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                performSegue(withIdentifier: "detailsfilms", sender: films[indexPath.row])
            }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsfilms", let filmsdetailsVC = segue.destination as? FilmsDetailsViewController, let film = sender as? Film {
                filmsdetailsVC.film = film
            }
        }
}

