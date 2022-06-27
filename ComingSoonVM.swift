//
//  ComingSoonVM.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 9/6/21.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
