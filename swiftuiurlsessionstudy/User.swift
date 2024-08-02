//
//  User.swift
//  swiftuiurlsessionstudy
//
//  Created by kenan on 29.07.2024.
//

import Foundation

class User:Codable{

    var user_id:String?
    var user_name:String?
    var user_phone:String?
    
    init(){
        
    }
    
    init(user_id: String, user_name: String, user_phone: String) {
       self.user_id = user_id
       self.user_name = user_name
       self.user_phone = user_phone
   }
    

    
    
    
}
