//
//  InfoView.swift
//  SergeyCard
//
//  Created by Sergey Luk on 7/16/20.
//  Copyright © 2020 Sergey Luk. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let icon: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(.accentColor)
                    Text(text)
                        .font(.system(size: 20))
                    .foregroundColor(Color("Info Color"))
                }
        )
            .padding(.all)
    }
}
struct CustomImageView: View {
    let text: String
    let image: UIImage
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .overlay(
                HStack {
                    
                    Image(uiImage: image)
                        .scaledToFill()
                    Text(text)
                        .font(.system(size: 20))
                    .foregroundColor(Color("Info Color"))
                }
        )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", icon: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
