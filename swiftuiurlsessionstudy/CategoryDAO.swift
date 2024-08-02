//
//  CategoryDAO.swift
//  swiftuiurlsessionstudy
//
//  Created by kenan on 29.07.2024.
//

import Foundation

class CategoryDAO{
    func getAllCategories(){
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_kategoriler.php")!
        
        URLSession.shared.dataTask(with: url){ data,response,error in
            do{
                let cevap = try JSONDecoder().decode(CategoryResponse.self, from: data!)
                
                if let liste = cevap.categories {
                    for k in liste {
                        print("-------------------")
                        print("Kategori Id  : \(k.category_id!)")
                        print("Kategori Ad  : \(k.category_name!)")
                    }
                }
                print("--------------------")
                print("Başarı : \(cevap.success!)")
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
