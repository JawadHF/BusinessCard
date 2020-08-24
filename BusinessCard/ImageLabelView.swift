//
//  ImageLabelView.swift
//  BusinessCard
//
//  Created by Jawad Hussain Farooqui on 24/08/20.
//  Copyright © 2020 Winsights. All rights reserved.
//

import SwiftUI


struct ImageLabelView: View {
    
    var imageName: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                //.resizable()
                .foregroundColor(.gray)
            //.frame(width:200, height: 100)
            Text(text)
        }
    }
}

struct ImageLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLabelView(imageName: "envelope.fill", text: .constant("jawad@winsights.in"))
    }
}
