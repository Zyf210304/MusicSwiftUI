//
//  ContentView.swift
//  Music
//
//  Created by 亚飞 on 2021/1/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    @State var progress: CGFloat = 0
    @Namespace var namespace
    
    var body: some View {
    
        VStack {
            
            Spacer()
            
            VStack (spacing: 35){
                HStack(spacing:15) {
                    
                    Image("album")
                        .resizable()
                        .scaledToFill()
                        .frame(width:self.show ? 250 : 50, height: self.show ? 250 : 50)
                        .clipped()
                        .padding(.top, self.show ? 35 : 0)
                    
                    if !self.show {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("You need to Calm Down")
                            
                            Text("Taylor SwiftUI")
                                .foregroundColor(.red)
                        }
                        .matchedGeometryEffect(id: "Details", in: self.namespace)
                        
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Image(systemName: "play.fill")
                                .font(.title)
                                .foregroundColor(.black)
                            
                        })
                        .matchedGeometryEffect(id: "play", in: self.namespace)
                    }
                    
                }
                
                //moveing view up
                if self.show {
                    
                    VStack(alignment: .center, spacing: 5) {
                        Text("You need to Calm Down")
                        
                        Text("Taylor SwiftUI")
                            .foregroundColor(.red)
                    }
                    .matchedGeometryEffect(id: "Details", in: self.namespace)
                    
                    
                    Slider(value: self.$progress)
                    
                    HStack() {
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Image(systemName: "backward.fill")
                                .font(.title)
                                .foregroundColor(.black)
                            
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Image(systemName: "play.fill")
                                .font(.title)
                                .foregroundColor(.black)
                            
                        })
                        .matchedGeometryEffect(id: "play", in: self.namespace)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Image(systemName: "forward.fill")
                                .font(.title)
                                .foregroundColor(.black)
                            
                        })
                        
                        Spacer()
                    }
                    
                    HStack {
                        
                        Button(action: {}, label: {
                            Image(systemName: "square.and.arrow.down.fill")
                                .foregroundColor(.black)
                                .font(.title)
                        })
                        Spacer()
                        
                    }
                    .padding([.horizontal, .bottom])
                    
                    
                    
                    Spacer()
                    
                    
                    
                    
                }
                
                
                
            }
            .padding()
            .background(Color.white.shadow(radius:self.show ? 0 : 3))
            .onTapGesture(perform: {
                withAnimation(Animation.easeInOut(duration: 0.5)) {
                    self.show.toggle()
                }
            })
            
        }
        .background(Color.black.opacity(0.06))
        .edgesIgnoringSafeArea(.top)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
