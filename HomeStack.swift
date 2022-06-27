//
//  HomeStack.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 9/1/21.
//

import Foundation
import SwiftUI

struct HomeStack: View {
    var vm = HomeVM()
    
    var topRowSeletion: HomeTopRow
    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSeletion, andGenre: selectedGenre)) {movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 135, height: 200)
                                .onTapGesture(perform: {
                                    movieDetailToShow = movie
                                })
                        }
                    }
                }
            }
            .padding(.leading, 6)
        }
    }
}


struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HomeStack(vm: HomeVM(), topRowSeletion: .movies, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
            }
        }
        .foregroundColor(.white)
    }
}
