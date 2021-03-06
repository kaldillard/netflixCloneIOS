//
//  ContentView.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 8/25/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showPreviewFullScreen = false
    @State private var previewStartingIndex: Int = 0
    
    @State private var previewCurrentPos: CGFloat = 1000
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        
        ZStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(0)
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }.tag(1)
                ComingSoon()
                    .tabItem {
                        Image(systemName: "play.rectangle")
                        Text("Coming Soon")
                    }.tag(2)
                DownloadsView()
                    .tabItem {
                        Image(systemName: "arrow.down.to.line.alt")
                        Text("Downloads")
                    }.tag(3)
                Text("More")
                    .tabItem {
                        Image(systemName: "equal")
                        Text("2")
                    }.tag(4)
            }
            .accentColor(.white)
            
//            PreviewList(movies: exampleMovies, currentSelection: $previewStartingIndex, isVisible: $showPreviewFullScreen)
//                .offset(y: previewCurrentPos)
//                .isHidden(!showPreviewFullScreen)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
