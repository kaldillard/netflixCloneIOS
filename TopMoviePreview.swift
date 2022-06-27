//
//  TopMoviePreview.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 8/26/21.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast( cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            
            if index + 1 != catCount {
                return false
            }
        }
        
        return true
    }
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) {category in
                        
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(cat: category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                .padding(.bottom, 0.1)
                HStack {
                    Spacer()
                    
                    smallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    
                    Spacer()
                    
                    PlayButton(text: "Play", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    smallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 14)
            }
            .background(LinearGradient.blackOpacityGradient
                            .padding(.top, 300)
            )
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
