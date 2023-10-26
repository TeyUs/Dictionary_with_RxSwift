//
//  Service.swift
//  RxDictionary
//
//  Created by Uslu, Teyhan on 26.10.2023.
//

import Foundation
import Alamofire

class Service {
    public static let shared = Service()
    
    func fetchMeaning() {
        var meanings = [Meaning]()
        AF.request(APIEndPoint.url(word: "car"), method: .get)
            .response(completionHandler: { response in
                guard let data = response.data else { return }
//                print(data)
                guard let modelData = try? JSONDecoder().decode([WordResponseElement].self, from: data) else { return }
                meanings = modelData.first?.meanings ?? []
                print(meanings[0].definitions?.first?.definition ?? "")
        })
    }
    
}
