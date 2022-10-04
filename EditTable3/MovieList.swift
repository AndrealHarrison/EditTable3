//
//  MovieList.swift
//  EditTable3
//
//  Created by Andrea Harrison on 10/3/22.
//

import Foundation

struct MovieList {
    var listOfMovies: [Movie] = []
                       
        init() {
        self.listOfMovies.append(Movie(title:"F9", year:2019))
        self.listOfMovies.append(Movie(title:"Fast 10", year:2021))
        self.listOfMovies.append(Movie(title:"F 9", year:2017))
        
    }
    mutating func add(film:Movie){
        self.listOfMovies.append(film)
    }
    
    mutating public func remove(atIndex: Int) {
       self.listOfMovies.remove(at:atIndex)
      }
}
