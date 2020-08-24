//
//  BarView.swift
//  BusinessCard
//
//  Created by Jawad Hussain Farooqui on 24/08/20.
//  Copyright © 2020 Winsights. All rights reserved.
//

import SwiftUI

struct BarView: View {
    
    var color = Color.clear
    var width: CGFloat = 0.0
    var height: CGFloat = 0.0
    var label: String = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            Rectangle().fill(color)
                .frame(width:width, height: height)
            Text(label)
                .font(.footnote)
                .rotationEffect(.degrees(-75)).offset(y: 20)
            .animation(nil)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(color: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), width: 40, height: 100, label: "Events")
    }
}
