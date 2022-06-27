//
//  DownloadsView.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 9/6/21.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image(systemName: "info.circle")
                    
                    Text("Smart Downloads")
                    
                    Text("ON")
                        .foregroundColor(.blue)
                    
                    Spacer()
                }
                .padding()
                .font(.system(size: 18, weight: .bold))
                
                ZStack {
                    Circle()
                        .foregroundColor(.graySearchBackground)
                        .padding(.horizontal, 100)
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                        .foregroundColor(.graySearchText)
                }
                .frame(height: 275)
                .padding(.top, 75)
                
                VStack(spacing: 20) {
                    Text("Never be without Netflix")
                        .bold()
                        .font(.title2)
                    
                    Text("Download shows and movies so you'll \n never be without something to watch ---- \n even when you're offline")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("See What You Can Download")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                    })
                    
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct DownloadsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            DownloadsView()
        }
    }
}
