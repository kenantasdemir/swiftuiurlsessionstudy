//
//  Film.swift
//  swiftuiurlsessionstudy
//
//  Created by kenan on 29.07.2024.
//

import Foundation

class Film : Codable{

    
    var film_id:String?
    var film_name:String?
    var film_year:String?
    var film_image:String?
    var film_category:Categories?
    var film_director:Director?
    
    init(){
        
    }
    init(film_id: String, film_name: String, film_year: String, film_image: String, film_category: Categories, film_director: Director) {
       self.film_id = film_id
       self.film_name = film_name
       self.film_year = film_year
       self.film_image = film_image
       self.film_category = film_category
       self.film_director = film_director
   }

}
