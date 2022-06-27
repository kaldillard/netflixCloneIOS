//
//  PreviewVM.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 9/8/21.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
}
