//
//  ContentView.swift
//  twitter_clone
//
//  Created by sourav das on 01/06/24.
//

import SwiftUI

struct ContentView: View {
    enum profile : String{
        case profileImage = "duck"
    }
    
    var body: some View {
        VStack{
            HStack
            {
                Image(profile.profileImage.rawValue)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80,height: 80,alignment: .leading)
                VStack(alignment: .leading){
                    Text("Ducky")
                        .fontWeight(.bold)
                        .font(.system(size: 25))
                    
                    Text("@ducky121")
                        .font(.caption)
                }.offset(x:-8)
                Spacer()
                Image(systemName: "ellipsis")
            }.frame(width: .infinity,height: 50)
                .padding()
            
            VStack(alignment: .leading){
                Text("Quack-quack! Just took a swim, feeling fresh and ready for a waddle 🦆✨")
                
                
                Text("#DuckLife #QuackTweet")
                    .foregroundStyle(Color("AccentColor"))
                
            }.padding()
                .padding(.top,-13) // shift the element to top
              
                .font(.title2)
            
            Rectangle()
                .frame(height: 0.5).opacity(0.6)
                .padding()
                .padding(.top,-20)
                .padding(.bottom,-20)
            
            
            HStack {
                Text("6:16 AM · 31 May 24 ·")
                    .foregroundStyle(Color.black)
                    .opacity(0.8)
                Text("31.2K ")
                
                    .bold()
                    .foregroundStyle(Color("AccentColor"))
                
                +
                Text("Views")
                
                
                
                
            }.frame(maxWidth:.infinity,alignment: .leading)
                .padding(.leading,25)
//                .offset(x:-40,y:-10)
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
