//
//  UserDAO.swift
//  swiftuiurlsessionstudy
//
//  Created by kenan on 29.07.2024.
//

import Foundation

class UserDAO{
    func getAllUsers(){
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        URLSession.shared.dataTask(with: url){ data,response,error in
            do{
                let cevap = try JSONDecoder().decode(UserResponse.self, from: data!)
                
                if let liste = cevap.users {
                    for k in liste {
                        print("-------------------")
                        print("Kişi Id  : \(k.user_id!)")
                        print("Kişi Ad  : \(k.user_name!)")
                        print("Kişi Tel : \(k.user_phone!)")
                    }
                }
                print("--------------------")
                print("Başarı : \(cevap.success)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func saveUser(user_name:String,user_phone:String){
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php")!)
        request.httpMethod = "POST"
        let postString = "kisi_ad=\(user_name)&kisi_tel=\(user_phone)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request){ data,response,error in
            do{
                let cevap = try JSONDecoder().decode(CRUDResponse.self, from: data!)
                print("---------- Kaydet ----------")
                print("Başarı : \(cevap.success!)")
                print("Mesaj  : \(cevap.message!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func updateUser(user_id:String,user_name:String,user_phone:String){
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/update_kisiler.php")!)
        request.httpMethod = "POST"
        let postString = "kisi_id=\(user_id)&kisi_ad=\(user_name)&kisi_tel=\(user_phone)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request){ data,response,error in
            do{
                let cevap = try JSONDecoder().decode(CRUDResponse.self, from: data!)
                print("---------- Güncelle ----------")
                print("Başarı : \(cevap.success!)")
                print("Mesaj  : \(cevap.message!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func removeUser(user_id:String){
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!)
        request.httpMethod = "POST"
        let postString = "kisi_id=\(user_id)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request){ data,response,error in
            do{
                let cevap = try JSONDecoder().decode(CRUDResponse.self, from: data!)
                print("---------- Sil ----------")
                print("Başarı : \(cevap.success!)")
                print("Mesaj  : \(cevap.message!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    func searchUser(wordToBeSearched:String){
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!)
        request.httpMethod = "POST"
        let postString = "kisi_ad=\(wordToBeSearched)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request){ data,response,error in
            do{
                let cevap = try JSONDecoder().decode(UserResponse.self, from: data!)
                
                if let liste = cevap.users {
                    for k in liste {
                        print("-------------------")
                        print("Kişi Id  : \(k.user_id!)")
                        print("Kişi Ad  : \(k.user_name!)")
                        print("Kişi Tel : \(k.user_phone!)")
                    }
                }
                print("--------------------")
                print("Başarı : \(cevap.success)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
