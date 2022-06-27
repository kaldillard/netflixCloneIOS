//
//  smallVerticalButton.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 8/26/21.
//

import SwiftUI

struct smallVerticalButton: View {
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    var color: Color = Color.white
    
    var isOn: Bool
    
    var imageName: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
        
    }
    
    
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(color)
                Text(text)
                    .foregroundColor(color)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct smallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            
            smallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                
                print("tapped")
            }
        }
    }
}
