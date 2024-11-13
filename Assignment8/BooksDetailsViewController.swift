//
//  BooksDetailsViewController.swift
//  Assignment8
//
//  Created by Apple on 13.11.2024.
//

import UIKit

class BooksDetailsViewController: UIViewController {

    var book: Book!
        
    @IBOutlet weak var bookImage: UIImageView!
    
    @IBOutlet weak var bookName: UILabel!
    
    @IBOutlet weak var bookAuthor: UILabel!
    
    @IBOutlet weak var bookGenre: UILabel!
    
    
    @IBOutlet weak var bookYear: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
            
        bookImage.image = book.image
        bookName.text = book.title
        bookAuthor.text = book.author
        bookGenre.text = book.genre
        bookYear.text = String(book.year)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
