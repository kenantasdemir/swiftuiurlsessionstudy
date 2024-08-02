//
//  Categories.swift
//  swiftuiurlsessionstudy
//
//  Created by kenan on 29.07.2024.
//

import Foundation

class Categories:Codable{
  
    
    var category_id:String?
    var category_name:String?
    
    init(){
        
    }
    
    init(category_id: String? = nil, category_name: String? = nil) {
       self.category_id = category_id
       self.category_name = category_name
   }
    
 
}
