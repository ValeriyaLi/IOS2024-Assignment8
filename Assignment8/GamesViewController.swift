//
//  GamesViewController.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

struct Game {
    let title: String
    let image: UIImage
    let company: String
    let platform: String
    let Year: Int
}

class GamesViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let games: [Game] = [
        Game(title: "Factorio", image: UIImage(named: "factorio")!, company: "Wube Software LTD", platform: "PC", Year: 2024),
        Game(title: "The Witcher 3", image: UIImage(named: "witcher")!, company: "CD Projekt RED", platform: "PC", Year: 2015),
        Game(title: "Portal 2", image: UIImage(named: "portal")!, company: "Valve", platform: "PC", Year: 2011),
        Game(title: "Baldur’s Gate III", image: UIImage(named: "baldur")!, company: "Larian Studios", platform: "PC", Year: 2023),
        Game(title: "Silent Hill 2", image: UIImage(named: "silent")!, company: "Konami", platform: "PC", Year: 2001),
        Game(title: "Metal Gear Solid", image: UIImage(named: "metal")!, company: "Kojima Productions", platform: "PC", Year: 2004),
        Game(title: "Gothic 2", image: UIImage(named: "got")!, company: "Gothic 2", platform: "PC", Year: 2003),
        Game(title:"The Last of Us", image: UIImage(named: "last")!, company: "Naughty Dog", platform: "PC", Year: 2013),
        Game(title: "Half-Life 2", image: UIImage(named: "half")!, company: "Valve", platform: "PC", Year: 2004),
        Game(title: "Dragon Age", image: UIImage(named: "dragon")!, company: "Electronic Arts", platform: "PC", Year: 2009)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(GamesTableViewCell.nib(), forCellReuseIdentifier: GamesTableViewCell.identifier)
        }

    }




extension GamesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        games.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        let cell = tableView.dequeueReusableCell(withIdentifier: GamesTableViewCell.identifier, for: indexPath) as! GamesTableViewCell
            
            let game = games[indexPath.row]
            
            
        cell.configure( game.image, game.title, game.company , game.platform)
            
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                performSegue(withIdentifier: "detailsgames", sender: games[indexPath.row])
            }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsgames", let gamesdetailsVC = segue.destination as? GamesDetailsViewController, let game = sender as? Game {
            gamesdetailsVC.game = game
            }
        }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
