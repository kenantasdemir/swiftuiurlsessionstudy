//
//  Director.swift
//  swiftuiurlsessionstudy
//
//  Created by kenan on 29.07.2024.
//

import Foundation

class Director:Codable{
 
    
    var director_id:String?
    var director_name:String?
    
    init(){
        
    }
    
    init(director_id: String? = nil, director_name: String? = nil) {
       self.director_id = director_id
       self.director_name = director_name
   }
}
