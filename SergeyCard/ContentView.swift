//
//  ContentView.swift
//  SergeyCard
//
//  Created by Sergey Luk on 7/16/20.
//  Copyright © 2020 Sergey Luk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                    Image("Sergey")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 5)
                )
                Text("Sergey Luk")
                    .font(.custom("BalooDa2-Regular", size: 40))
                    .bold()
                    .foregroundColor(Color("Info Color"))
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(Color("Info Color"))
                Divider()
                InfoView(text: "+375298018000", icon: "phone.fill")
                InfoView(text: "jlamep7@gmail.com", icon: "envelope.fill")
                CustomImageView(text: "https://github.com/ril10", icon: #imageLiteral(resourceName: "GitHub-Mark-32px"))
                CustomImageView(text: "https://www.instagram.com/luk_sergey/", icon: #imageLiteral(resourceName: "instagram"))
                
                        
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


