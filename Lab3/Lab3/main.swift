//
//  Lab3.swift
//  Lab3
//
//  Created by Jesse Clark on 1/4/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

extension URL {
    func withQueries(_ queries: [String: Any]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap { URLQueryItem(name: $0.0, value: String(describing:$0.1)) }
        return components?.url
    }
}

/* example data:
 {
 "ip_address": "90.126.182.65",
 "first_name": "Fifine",
 "last_name": "Yeoland",
 "email": "fyeoland0@instagram.com",
 "gender": "Female",
 "mark": 75,
 "comment": "hello"
 }
 */

struct Student: Codable {
    let firstName: String
    let lastName: String
    let email: String?
    let mark: Int?
    let comment: String?
}

func fetchItems(count: Int, completion: @escaping ([Student]?) -> Void) {
    let baseURL = URL(string: "https://api.mockaroo.com/api/c34a7240?")!
    let query: [String: Any] = [
        "key": "739c3b50",
        "count": count
    ]
    guard let url = baseURL.withQueries(query) else {
        completion(nil)
        print("Unable to build URL with supplied queries.")
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        let decoder = JSONDecoder()
        if let data = data,
            let items = try? decoder.decode([Student].self, from: data) {
            completion(items)
        } else {
            print("Either no data was returned, or data was not serialized.")
            completion(nil)
            return
        }
    }
    
    task.resume()
    while task.state == .running {
        sleep(1) // block until the connection is complete
    }
}

fetchItems(count:200) { (items: [Student]?) in
    guard let items = items else {
        print("Failed to load data")
        return
    }
    print("Loaded data for \(items.count) students.")
    var calif = 0, max = 0, min = 100, avrg = 0;
    var better = "hola";
    for stud in items
    {
        if(stud.mark != nil){
            calif = calif + 1;
            avrg = avrg + stud.mark!;
            if(stud.mark! > max){
                max = stud.mark!;
                better = stud.firstName + " " + stud.lastName;
            }
            if(stud.mark! < min){
                min = stud.mark!;
            }
        }
    }
    print("The total number of students with some mark is \(calif)")
    
    print("The highest mark is \(max) by \(better)")
    
    print ("The average mark is \(avrg/items.count)")
}



