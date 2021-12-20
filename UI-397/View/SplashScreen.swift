//
//  SplashScreen.swift
//  UI-397
//
//  Created by nyannyan0328 on 2021/12/20.
//

import SwiftUI

struct SplashScreen: View {
    @State var animationValue : [Bool] = Array(repeating: false, count: 10)
    var body: some View {
        ZStack{
            
            
            
            GeometryReader{proxy in
                
                
                let size = proxy.size
                
                Home()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .offset(y:animationValue[6] ? 0 : (size.height + 50))
            }
            
            
            if !animationValue[7]{
                
                
                VStack{
                    
                    
                    
                    
                    
                    ZStack{
                        
                        
                        if animationValue[1]{
                            
                            Circle()
                                .fill(.black)
                                .frame(width: 35, height: 35)
                                .overlay(
                                
                                Rectangle()
                                    .fill(.white)
                                    .frame(height: animationValue[5] ? nil : 0)
                                    .frame(maxHeight: .infinity, alignment: .top)
                                    .padding(.bottom,5)
                                
                                )
                                .offset(x: animationValue[2] ? 35 : 0)
                            
                        }
                        
                        
                        
                        Circle()
                            .fill(.black)
                            .frame(width: 35, height: 35)
                            .overlay(
                            
                            Rectangle()
                                .fill(.white)
                                .frame(height: animationValue[5] ? nil : 0)
                                .frame(maxHeight: .infinity, alignment: .top)
                                .padding(.bottom,5)
                            
                            )
                            .scaleEffect(animationValue[0] ? 1 : 0,anchor: .bottom)
                            .offset(x: animationValue[2] ? -35 : 0)
                        
                        
                        ZStack{
                            
                            
                            Circle()
                                .stroke(Color.black,lineWidth: 10)
                                .frame(width: 70, height: 70)
                                .overlay(
                                
                                
                                    
                                    Image(systemName: "arrowtriangle.forward.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25)
                                        .rotationEffect(.init(degrees: -150))
                                        .scaleEffect(CGSize(width: 1.5, height: 1))
                                        .offset(x : -10,y: -12)
                                    
                                    ,alignment: .topLeading
                                    
                                    )
                                .offset(x: -35)
                            
                            Circle()
                                .stroke(Color.black,lineWidth: 10)
                                .frame(width: 70, height: 70)
                                .overlay(
                                
                                
                                    
                                    Image(systemName: "arrowtriangle.forward.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25)
                                        .rotationEffect(.init(degrees: -150))
                                        .scaleEffect(CGSize(width: 1.5, height: 1))
                                        .offset(y: -12)
                                    
                                    ,alignment: .topTrailing
                                
                                )
                                .offset(x: 35)
                              
                            
                            
                            
                            
                            Circle()
                                .trim(from: 0.6, to: 1)
                                .stroke(Color.black,lineWidth: 10)
                                .frame(width: 130, height: 130)
                                .rotationEffect(.init(degrees: -20))
                                .offset(y: 12)
                                .scaleEffect(1.083)
                            
                            
                            
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .offset(y: 35)
                                .scaleEffect(CGSize(width: 1.2, height: 1),anchor: .top)
                                .background(
                                    
                                    Color.black

                                        .frame(width: 15, height: 15)
                                        .offset(y: 25)
                                
                                    ,alignment: .top
                                
                                )
                                
                            
                            
                            
                            
                            
                                
                            
                            
                        }
                        .opacity(animationValue[3] ? 1 : 0)
                        
                        
                        
                        
                    }
                   
                    .scaleEffect(animationValue[3] ? 0.8 : 1)
                    .padding(.horizontal,30)
                    .drawingGroup()
                    
                    
                    
                    Text("TriperdVisror")
                        .font(.title.weight(.semibold))
                        .offset(y:animationValue[4] ? -35 : 0)
                        .opacity(animationValue[4] ? 1 : 0)
                    
                    
                    
                }
                .opacity(animationValue[6] ? 0 : 1)
                .environment(\.colorScheme, .light)
                
                
            }
            
            
        }
        .onAppear {
            
            
            withAnimation(.easeInOut(duration: 0.3)){
                
                animationValue[0] = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                
                
                withAnimation(.easeInOut(duration: 0.4).delay(0.1)){
                    
                    animationValue[1] = true
                    
                }
                
                withAnimation(.easeInOut(duration: 0.3).delay(0.3)){
                    
                    animationValue[2] = true
                    
                }
                withAnimation(.easeInOut(duration: 0.3).delay(0.5)){
                    
                    animationValue[3] = true
                    
                }
                
                withAnimation(.easeInOut(duration: 0.4).delay(0.4)){
                    
                    animationValue[4] = true
                    
                }
                
                
                withAnimation(.easeInOut(duration: 0.4).delay(0.6)){
                    
                    animationValue[5] = true
                    
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    
                    
                    withAnimation(.easeInOut(duration: 0.5).delay(0.6)){
                        
                        animationValue[5] = false
                        
                    }
                    
                    
                    withAnimation(.easeInOut(duration: 0.5).delay(0.8)){
                        
                        animationValue[6] = true
                        
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        
                        
                        animationValue[7] = true
                        
                        
                    }
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
            }
          
            
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
