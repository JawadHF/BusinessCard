//
//  VisitorInfoView.swift
//  BusinessCard
//
//  Created by Jawad Hussain Farooqui on 24/08/20.
//  Copyright © 2020 Winsights. All rights reserved.
//

import SwiftUI

struct VisitorInfoView: View {
    
    @State var user: User
    //@GestureState var isScaled = false
    @State var isChartHidden = true
    @State var isChartLoaded = false
    
    var body: some View {
        VStack {
            CardView(user: user)
                //.scaleEffect(isScaled ? 1.2 : 1.0)
                //.animation(.default)
                //.animation(.easeInOut)
                //.animation(.spring())
                //.gesture(LongPressGesture(minimumDuration: 2.0).updating($isScaled, body: {
                 //   value, state, transaction in
                 //   state = value
                //}))
                .gesture(TapGesture().onEnded{
                    withAnimation(.easeInOut, {
                        self.isChartHidden.toggle()
                    })
                })
            
            if !isChartHidden {
                GeometryReader {proxy in
                    HStack(alignment: .bottom) {
                        
                        BarView(color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views): 0.0, label: "Views")
                        
                        BarView(color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views): 0.0, label: "Views")
                        
                        BarView(color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views):0.0, label: "Views")
                        
                        BarView(color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views):0.0, label: "Views")
                        
                        BarView(color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), width: proxy.size.width * 0.16, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views):0.0, label: "Views")
                        
                    }.frame(height: 0.5 * proxy.size.width).animation(.easeInOut(duration: 2.0))
                        .onAppear {
                            self.isChartLoaded = true
                    }
                }.transition(
                    //.slide)
                    .move(edge: .bottom))
                    .onDisappear{
                        self.isChartLoaded = false
                }
            }
        }
    }
}

struct VisitorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        VisitorInfoView(user: User(firstName: "Jawad", lastName: "Farooqui", title: "Freelancer", email: "jawad@winsights.in", companyUrl: "winsights.in", address: "", phone: "9986928806", visit: Visit(views: 50, events: 80, badges: 10, actions: 10, duration: 12)))
    }
}
