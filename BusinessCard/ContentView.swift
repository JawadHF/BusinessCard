//
//  ContentView.swift
//  BusinessCard
//
//  Created by Jawad Hussain Farooqui on 24/08/20.
//  Copyright © 2020 Winsights. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    ForEach(User.users) {
                        user in
                        NavigationLink(destination: VisitorInfoView(user: user)) {
                            
                            CardView(user: user)
                                .padding(.vertical)
                        }
                    }
                }
            }
        }.navigationBarTitle("Quick card")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

