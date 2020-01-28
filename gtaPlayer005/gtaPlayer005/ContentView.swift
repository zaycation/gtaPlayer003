//
//  ContentView.swift
//  gtaPlayer005
//
//  Created by Isaiah Thomas on 1/24/20.
//  Copyright © 2020 zaycation. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView  {
            
            ZStack  {
                
                Text(" ")
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .background(Image("gta5wp1").resizable().scaledToFill())
                    .edgesIgnoringSafeArea(.all)
                
                    ScrollView  {
                    
                        VStack  {
                            
                            NavigationLink(destination: ComingSoonPage()) {
                                
                                Text("Vice City")
                                    .fontWeight(.bold)
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
                            
                            NavigationLink(destination: ComingSoonPage()) {
                                
                                Text("Vice City Stories")
                                    .fontWeight(.bold)
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
                            
                            NavigationLink(destination: ComingSoonPage()) {
                                
                                Text("GTA 3")
                                    .fontWeight(.bold)
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
                            
                            NavigationLink(destination: ComingSoonPage()) {
                                
                                Text("GTA 4")
                                    .fontWeight(.bold)
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
                            
                            NavigationLink(destination: GTA5Page()) {
                                
                                Text("GTA 5")
                                    .fontWeight(.bold)
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
                    }.navigationBarTitle(Text("GTA Radio 📻"), displayMode: .automatic)
                }
                BottomPlayer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
