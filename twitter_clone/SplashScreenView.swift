//
//  SplashScreenView.swift
//  twitter_clone
//
//  Created by sourav das on 02/06/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State var size  = 0.7
//    @State var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        }
        else{
            
            ZStack {
                Color("AccentColor")
                VStack
                {
                    Image("icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                    
                    
                }
                .scaleEffect(size)
//                .opacity(opacity)
                .onAppear{
                    withAnimation (.easeInOut(duration:1.0)) {
                        self.size = 1.01
//                        self.opacity = 1.0
                    }
                }
                
            }
            .ignoresSafeArea(.all)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    withAnimation(.easeOut(duration: 0.5)){
                        self.isActive = true
                    }
                   
                }
            }
        }
       
    }
}

#Preview {
    SplashScreenView()
}
