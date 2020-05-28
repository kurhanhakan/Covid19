//
//  DataDecoder.swift
//  Covid19
//
//  Created by HAKAN K on 5/28/20.
//  Copyright © 2020 HAKAN K. All rights reserved.
//

import Foundation

class WebServices {
    
    
    func getCovidData(completion: @escaping ([CovidData]?) -> Void){
        
        guard let url = URL(string: "https://www.covidtracking.com/api/v1/states/current.json#") else {
            fatalError("Invalid URL")
        }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let data = data {
                do
                {
                  
                    let decodeJson = try JSONDecoder().decode([CovidData].self, from: data)
                    completion(decodeJson)
                    print(decodeJson)
                    
                
                }
                catch
                {
                    print("Error")
                }
                
            }
          
        }.resume()
    }
    
}
