//
//  GlobalHelpers.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 8/26/21.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/102")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/101")!

var randomExampleImageURL: URL {
   [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)

let exampleTrailer3 = Trailer(name: "The Markone", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(name: "Beginnigs and Endings",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/102",
                       description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalptic event.",
                       length: 53,
                       videoURL: exampleVideoURL)

let episode2 = Episode(name: "Dark Mattter",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/101",
                       description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                       length: 53,
                       videoURL: exampleVideoURL)

let episode3 = Episode(name: "Ghosts",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/108",
                       description: "In 1954n a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                       length: 53,
                       videoURL: exampleVideoURL)

let episode4 = Episode(name: "Beginnigs and Endings",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalptic event.",
                       length: 53,
                       videoURL: exampleVideoURL)

let episode5 = Episode(name: "Dark Mattter",
                       season: 2,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/105",
                       description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits an old nemesis.",
                       length: 53,
                       videoURL: exampleVideoURL)

let episode6 = Episode(name: "Ghosts",
                       season: 2,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/106",
                       description: "In 1954n a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                       length: 53,
                       videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6 ]

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "Dark",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Fun", "Crazy", "Exciting", "Thriller"],
                          year: 2021,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          accentColor: Color.blue,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odar, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
                          episodes: allExampleEpisodes,
                          trailers: exampleTrailers,
                          previewImageName: "ozarkPreview",
                          previewVideoURL: exampleVideoURL)
let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travelers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Fun", "Crazy", "Exciting", "Thriller"],
                          year: 2021,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odar, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          promotionHeadline: "Best Rated Show",
                          trailers: exampleTrailers,
                          previewImageName: "darkPreview",
                          previewVideoURL: exampleVideoURL)
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Community",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Fun", "Crazy", "Exciting", "Thriller"],
                          year: 2021,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odar, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers,
                          previewImageName: "dirtyJohnPreview",
                          previewVideoURL: exampleVideoURL)
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
                          categories: ["Fun", "Crazy", "Exciting", "Thriller"],
                          year: 2021,
                          rating: "TV-MA",
                          numberOfSeasons: 4,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odar, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          promotionHeadline: "New Episodes Coming Soon",
                          trailers: exampleTrailers,
                          previewImageName: "travelersPreview",
                          previewVideoURL: exampleVideoURL)
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Fun", "Crazy", "Exciting", "Thriller"],
                          year: 2021,
                          rating: "TV-MA",
                          numberOfSeasons: 5,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odar, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers,
                          previewImageName: "arrestedDevPreview",
                          previewVideoURL: exampleVideoURL)
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
                          categories: ["Fun", "Crazy", "Exciting", "Thriller"],
                          year: 2021,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odar, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          promotionHeadline: "Watch Season 6 Now",
                          trailers: exampleTrailers,
                          previewImageName: "whiteLinesPreview",
                          previewVideoURL: exampleVideoURL)
let exampleMovie7 = Movie(id: UUID().uuidString,
                          name: "After Baby",
                          thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
                          categories: ["Fun", "Crazy", "Exciting", "Thriller"],
                          year: 2021,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Baran bo Odar, Jantje Friese",
                          cast: "Louis Hofmann, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          promotionHeadline: "Watch Season 7 Now",
                          trailers: exampleTrailers,
                          previewImageName: "ozarkPreview",
                          previewVideoURL: exampleVideoURL)

var exampleMovies: [Movie] {
    [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnigs and Endings", description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.", season: 2, episode: 1)


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

//extension View {
//    
//    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some view {
//        if _hidden {
//            if !remove {
//                self.hidden()
//            }
//        } else {
//            self
//        }
//    }
//}
