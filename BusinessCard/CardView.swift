//
//  CardView.swift
//  BusinessCard
//
//  Created by Jawad Hussain Farooqui on 24/08/20.
//  Copyright © 2020 Winsights. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @State var user: User
    
    var body: some View {
        ZStack {
            Rectangle().fill(Color("CardBackground"))
                .frame(width:300, height: 200)
                .cornerRadius(20)
                .shadow(radius: 10)
            VStack(alignment: .leading){
                Text("\(user.firstName) \(user.lastName)")
                    .font(.title)
                Text("\(user.title)")
                    .italic()
                Spacer()
                ImageLabelView(imageName: "envelope.fill", text: $user.email)
                ImageLabelView(imageName: "link", text: $user.companyUrl)
                ImageLabelView(imageName: "phone.fill", text: $user.phone)
            }.padding().foregroundColor(.white)
            Spacer()
        }.frame(width:300, height: 200)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: User(firstName: "Jawad", lastName: "Farooqui", title: "Freelancer", email: "jawad@winsights.in", companyUrl: "winsights.in", address: "", phone: "9986928806",visit: Visit(views: 50, events: 80, badges: 10, actions: 10, duration: 12)))
    }
}
