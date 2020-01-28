//
//  GTA5Page.swift
//  gtaPlayer005
//
//  Created by Isaiah Thomas on 1/25/20.
//  Copyright © 2020 zaycation. All rights reserved.
//

import SwiftUI

struct GTA5Page: View {
    
    var body: some View {
        
        ZStack  {
            
            VStack{
                
                Button(action: {
                    print("Pressed!")
                }) {
                    Text("FlyLo FM")
                       .font(.headline)
                       .frame(minWidth: 0, maxWidth: .infinity)
                       .padding()
                       .background(Color.gray)
                       .cornerRadius(35)
                       .foregroundColor(.white)
                       .padding(3.5)
                       .overlay(
                           RoundedRectangle(cornerRadius: 40)
                               .stroke(Color.gray, lineWidth: 5)
                       )
                       .padding()
                }
            }
            BottomPlayer()
        }
    }
}

struct GTA5Page_Previews: PreviewProvider {
    static var previews: some View {
        GTA5Page()
    }
}
