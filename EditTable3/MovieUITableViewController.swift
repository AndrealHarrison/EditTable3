//
//  MovieUITableViewController.swift
//  EditTable3
//
//  Created by Andrea Harrison on 10/3/22.
//

import Foundation
import UIKit

class MovieUITableViewController: UITableViewController {
    var nameOfDataStoreVariable : MovieList!
    
    @IBAction func addAThingee(){
        let myNewMovie = Movie(title: "New Film" + String(self.nameOfDataStoreVariable.listOfMovies.count+1), year: 2010 + self.nameOfDataStoreVariable.listOfMovies.count)
        
        self.nameOfDataStoreVariable.add(film: myNewMovie)
        
        let numRows = self.nameOfDataStoreVariable.listOfMovies.count
        
        tableView.insertRows(at: [IndexPath(row: numRows-1, section: 0)], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameOfDataStoreVariable.listOfMovies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //tableView.isEditing
        let cell = tableView.dequeueReusableCell( withIdentifier: "MyTableCell", for: indexPath)
        let myAwesomeMovie = self.nameOfDataStoreVariable.listOfMovies[indexPath.row]
        
        cell.textLabel!.text = myAwesomeMovie.title
        cell.detailTextLabel?.text = String(myAwesomeMovie.year)
        
        return cell
    }
}
