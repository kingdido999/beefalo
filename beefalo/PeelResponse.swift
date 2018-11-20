//
//  PeelResponse.swift
//  beefalo
//
//  Created by Desmond Ding on 11/20/18.
//

import ObjectMapper

class PeelResponse: Mappable {
    var title: String?
    var content: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        title <- map["title"]
        content <- map["content"]
    }
}
