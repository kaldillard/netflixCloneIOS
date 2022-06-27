//
//  NotificationBar.swift
//  buildnetflix2
//
//  Created by Mikal Dillard on 9/6/21.
//

import SwiftUI

struct NotificationBar: View {
    
    @Binding var showNotificationsList: Bool
    
    var body: some View {
        Button(action: {
            showNotificationsList = true
        }, label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
            }
            .font(.system(size: 18, weight: .bold))
        })
        .foregroundColor(.white)
        .padding()
    }
}

struct NotificationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            NotificationBar(showNotificationsList: .constant(false))
        }
    }
}
