//
//  FilmDAO.swift
//  swiftuiurlsessionstudy
//
//  Created by kenan on 29.07.2024.
//

import Foundation

class FilmDAO{
    func getAllFilms(){
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_filmler.php")!
        
        URLSession.shared.dataTask(with: url){ data,response,error in
            do{
                let cevap = try JSONDecoder().decode(FilmResponse.self, from: data!)
                
                if let liste = cevap.films {
                    for f in liste {
                        print("-------------------")
                        print("Film Id        : \(f.film_id!)")
                        print("Film Ad        : \(f.film_name!)")
                        print("Film Yıl       : \(f.film_year!)")
                        print("Film Resim     : \(f.film_image!)")
                        print("Film Kategori  : \(f.film_category!.category_name!)")
                        print("Film Yönetmen  : \(f.film_director!.director_name!)")
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
