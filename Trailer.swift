//
//  Trailer.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 8/31/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
    
}
