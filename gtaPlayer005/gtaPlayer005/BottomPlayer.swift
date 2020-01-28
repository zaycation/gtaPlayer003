//
//  BottomPlayer.swift
//  gtaPlayer005
//
//  Created by Isaiah Thomas on 1/24/20.
//  Copyright © 2020 zaycation. All rights reserved.
//

import SwiftUI
import AVKit

struct BottomPlayer : View {
    
    @State var opacity : Double = 1
    @State var height : CGFloat = 0
    @State var floating = false
    
    
    var body : some View{
        
        
        GeometryReader{geo in
            
            
            ZStack{
                
                Color.gray
                    .edgesIgnoringSafeArea(.bottom)
                
                VStack{
                    
                    HStack{
                        
                        Image("flylofm").resizable().frame(width: 45, height: 45)
                        
                        VStack(alignment : .leading){
                            
                            Text("FlyLo FM").fontWeight(.heavy)
                            Text("Hosted by Flying Lotus")
                        }
                        
                        Spacer()
                        
                        Image(systemName: (self.height == geo.size.height - 75) ? "play.fill" :  "music.home").resizable().frame(width: 30, height: 30)
                        
                        
                    }.padding(10)
                    .foregroundColor(.white)
                    
                    
                    // Below should be the music player buttons.....
                    
                    Spacer()
                    
                }
            }.gesture(DragGesture()
            
                .onChanged({ (value) in
                    
                    
                    if self.height >= 0{
                        
                        self.height += value.translation.height / 8
                        self.opacity = 0.5
                    }
                    
                })
                .onEnded({ (value) in
                    
                    if self.height > 100 && !self.floating{
                        
                        self.height = geo.size.height - 75
                        self.opacity = 1
                        self.floating = true
                        
                    }
                    else{
                        
                        if self.height < geo.size.height - 150{
                            
                            self.height = 0
                            self.opacity = 1
                            self.floating = false
                        }
                        else{
                            
                            self.height = geo.size.height - 75
                            self.opacity = 1
                        }
                    }
                })
                
            ).opacity(self.opacity)
            .offset(y: self.height)
            .animation(.spring())
        }
    }
}

   
                  

struct BottomPlayer_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
