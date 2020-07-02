//
//  ServiceLayer.swift
//  ExampleURL
//
//  Created by Сергей Бондарчук on 01.07.2020.
//  Copyright © 2020 Сергей Бондарчук. All rights reserved.
//

import Foundation

protocol ServiceLayerType {
    func confURL() -> URL
    func resultURL()
}

class ServiceLayer: ServiceLayerType {
    func confURL() -> URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "yandex.ru"
        components.path = "/time/sync.json"
        components.queryItems = [URLQueryItem(name:"geo",value:"213")]
        return components.url!
    }
    
    func resultURL() {
        let task = URLSession.shared.dataTask(with: confURL()) {data, response, error in
            guard data != nil else { return }
        }
        task.resume()
    }
}


