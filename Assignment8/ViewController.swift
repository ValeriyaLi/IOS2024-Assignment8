//
//  ViewController.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

struct Book {
    let title: String
    let image: UIImage
    let author: String
    let genre: String
    let year: Int
}

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let books: [Book] = [
        Book(title: "Martin Eden", image: UIImage(named: "martin")!, author: "Jack London", genre: "Novel", year: 1990),
        Book(title: " The Great Gatsby", image: UIImage(named: "great")!, author: "F. Scott Fitzgerald", genre: "Novel", year: 1894),
        Book(title: " In Search of Lost Time", image: UIImage(named: "search")!, author: "Marcel Proust", genre: "Novel", year: 2016),
        Book(title: "The Catcher in the Rye", image: UIImage(named: "catcher")!, author: "J. D. Salinger", genre: "Novel", year: 2019),
        Book(title: "Lolita", image: UIImage(named: "lolita")!, author: "Vladimir Nabokov", genre: "Novel", year: 2018),
        Book(title: "Nineteen Eighty Four", image: UIImage(named: "four")!, author: "George Orwell", genre: "Dystopia", year: 1928),
        Book(title: "Anna Karenina", image: UIImage(named: "anna")!, author: "Leo Tolstoy", genre: "Novel", year: 1980),
        Book(title: "Wuthering Heights ", image: UIImage(named: "heights")!, author: "Emily Brontë", genre: "Novel", year: 1981),
        Book(title: "Moby-Dick ", image: UIImage(named: "moby")!, author: "Herman Melville", genre: "Novel", year: 1982),
        Book(title: "Pride and Prejudice ", image: UIImage(named: "pride")!, author: "Jane Austen", genre: "Novel", year: 1985),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                   
        tableView.dataSource = self
        tableView.delegate = self
                   
        tableView.register(BooksTableViewCell.nib(), forCellReuseIdentifier: BooksTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            let storyboard = UIStoryboard(name: "Books", bundle: nil)
//            
//            let detailsViewController: DetailsViewController = storyboard.instantiateViewController(withIdentifier: "detailsbooks") as! DetailsViewController
//            
//            detailsViewController.navigationItem.title = books[indexPath.row].title
//            
//            detailsViewController.book = books[indexPath.row]
//            
//            
//            navigationController?.pushViewController(detailsViewController, animated: true)
//
//        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        let cell = tableView.dequeueReusableCell(withIdentifier: BooksTableViewCell.identifier, for: indexPath) as! BooksTableViewCell
            
            let book = books[indexPath.row]
            
            
            cell.configure( book.image, book.title, book.author, book.genre)
            
            return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                performSegue(withIdentifier: "detailsbooks", sender: books[indexPath.row])
            }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsbooks", let booksdetailsVC = segue.destination as? BooksDetailsViewController, let book = sender as? Book {
                booksdetailsVC.book = book
            }
        }
}
